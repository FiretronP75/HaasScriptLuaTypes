import fs from 'fs';

enum FileSystemErrorCode {
  AccessDenied = 'EACCES',
  IsDirectory  = 'EISDIR',
  NotFound     = 'ENOENT',
  NotPermitted = 'EPERM',
}

export class SavedResponseService {

  protected static readonly ENCODING  = 'utf-8';
  protected static readonly ZERO_BYTE = 0;

  public static failedResponseMessage(path: string): string {

    return `The file "${path}" contains an error message from Haas instead of the data. Log in, save the response again, then try again.`;
  }

  public static read(path: string): any {

    return SavedResponseService.parse(
      SavedResponseService.decode(SavedResponseService.readBytes(path), path),
      path,
    );
  }

  protected static decode(buffer: Buffer, path: string): string {

    const notUtf8Message = `The file "${path}" is saved in the wrong text format. Save it again as UTF-8, then try again.`;

    // UTF-16 without a byte order mark can be valid UTF-8, but valid JSON never contains a zero byte.
    if (buffer.includes(SavedResponseService.ZERO_BYTE)) throw notUtf8Message;

    try {
      return new TextDecoder(SavedResponseService.ENCODING, {fatal: true}).decode(buffer);
    } catch {
      throw notUtf8Message;
    }
  }

  protected static parse(text: string, path: string): any {

    try {
      return JSON.parse(text);
    } catch {
      throw `The file "${path}" is damaged or incomplete. Copy the whole response into it again, then try again.`;
    }
  }

  protected static readBytes(path: string): Buffer {

    try {
      return fs.readFileSync(path);
    } catch (error) {
      throw SavedResponseService.readFailureMessage(path, error);
    }
  }

  protected static readFailureMessage(path: string, error: any): string {

    switch (error.code) {
      case FileSystemErrorCode.NotFound:
        return `Could not find the file "${path}". Check that the file name and folder are correct, then try again.`;
      case FileSystemErrorCode.IsDirectory:
        return `"${path}" is a folder, not a file. Give the location of your saved file, then try again.`;
      case FileSystemErrorCode.AccessDenied:
      case FileSystemErrorCode.NotPermitted:
        return `Your computer would not allow the file "${path}" to be opened. Make sure you have access to it, then try again.`;
      default:
        return `Could not open the file "${path}". Make sure it is a normal saved file, then try again.`;
    }
  }

}
