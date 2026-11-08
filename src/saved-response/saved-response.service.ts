import fs                       from 'fs';
import { SavedResponseChannel } from './saved-response-channel';

enum FileSystemErrorCode {
  AccessDenied = 'EACCES',
  IsDirectory  = 'EISDIR',
  NotFound     = 'ENOENT',
  NotPermitted = 'EPERM',
}

export class SavedResponseService {

  protected static readonly BASE64_ENCODING = 'base64';
  protected static readonly CHANNEL_PREFIX  = 'channel=';
  protected static readonly TEXT_ENCODING   = 'utf-8';
  protected static readonly ZERO_BYTE       = 0;

  protected entryList: any[] = [];

  protected readonly harFilePath: string;

  constructor(harFilePath: string) {

    this.harFilePath = harFilePath;
  }

  public getData(channel: SavedResponseChannel): any {

    const response = this.parseResponse(this.findResponseText(channel), channel);

    if (response?.Success !== true) {
      throw `The ${channel} response in the file "${this.harFilePath}" is an error from Haas instead of the data. Log in, export the file again, then try again.`;
    }

    return response.Data;
  }

  public load(): void {

    console.log('Loading saved responses from', this.harFilePath);

    const har = this.parseHar(this.decode(this.readBuffer()));

    if (!Array.isArray(har?.log?.entries)) {
      throw this.notHarFileMessage();
    }

    this.entryList = har.log.entries;
  }

  public unexpectedDataMessage(channel: SavedResponseChannel): string {

    return `The ${channel} response in the file "${this.harFilePath}" does not contain what was expected. Export the file again, then try again.`;
  }

  protected decode(buffer: Buffer): string {

    // UTF-16 without a byte order mark can be valid UTF-8, but valid JSON never contains a zero byte.
    if (buffer.includes(SavedResponseService.ZERO_BYTE)) throw this.notHarFileMessage();

    try {
      return new TextDecoder(SavedResponseService.TEXT_ENCODING, {fatal: true}).decode(buffer);
    } catch {
      throw this.notHarFileMessage();
    }
  }

  protected findResponseText(channel: SavedResponseChannel): string {

    const channelParameter: string = `${SavedResponseService.CHANNEL_PREFIX}${channel}`;

    // A request can be listed twice, and only one of the two holds the response.
    const content = this.entryList
      .filter((entry: any) => entry?.request?.url?.includes(channelParameter) && entry?.response?.content?.text)
      .map((entry: any) => entry.response.content)
      .pop();

    if (content === undefined) {
      throw `The file "${this.harFilePath}" does not include the ${channel} response. Reload the Web Editor before exporting, then try again.`;
    }

    return content.encoding === SavedResponseService.BASE64_ENCODING
      ? Buffer.from(content.text, SavedResponseService.BASE64_ENCODING).toString()
      : content.text;
  }

  protected notHarFileMessage(): string {

    return `The file "${this.harFilePath}" is not a HAR file from your browser. Export it again from the Network tab, then try again.`;
  }

  protected parseHar(text: string): any {

    try {
      return JSON.parse(text);
    } catch {
      throw this.notHarFileMessage();
    }
  }

  protected parseResponse(text: string, channel: SavedResponseChannel): any {

    try {
      return JSON.parse(text);
    } catch {
      throw this.unexpectedDataMessage(channel);
    }
  }

  protected readBuffer(): Buffer {

    try {
      return fs.readFileSync(this.harFilePath);
    } catch (error) {
      throw this.readFailureMessage(error);
    }
  }

  protected readFailureMessage(error: any): string {

    switch (error.code) {
      case FileSystemErrorCode.NotFound:
        return `Could not find the file "${this.harFilePath}". Check that the file name and folder are correct, then try again.`;
      case FileSystemErrorCode.IsDirectory:
        return `"${this.harFilePath}" is a folder, not a file. Give the location of your HAR file, then try again.`;
      case FileSystemErrorCode.AccessDenied:
      case FileSystemErrorCode.NotPermitted:
        return `Your computer would not allow the file "${this.harFilePath}" to be opened. Make sure you have access to it, then try again.`;
      default:
        return `Could not open the file "${this.harFilePath}". Make sure it is a normal saved file, then try again.`;
    }
  }

}
