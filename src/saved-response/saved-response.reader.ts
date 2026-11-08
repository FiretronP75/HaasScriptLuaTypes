import fs from 'fs';

export class SavedResponseReader {

  protected static readonly ENCODING  = 'utf-8';
  protected static readonly ZERO_BYTE = 0;

  public static read<T>(path: string): T {

    return JSON.parse(SavedResponseReader.decode(fs.readFileSync(path), path)) as T;
  }

  protected static decode(bytes: Buffer, path: string): string {

    const notUtf8Message = `${path} is not saved as UTF-8. Save it again as UTF-8 and rerun.`;

    // UTF-16 without a byte order mark can be valid UTF-8, but valid JSON never contains a zero byte.
    if (bytes.includes(SavedResponseReader.ZERO_BYTE)) throw notUtf8Message;

    try {
      return new TextDecoder(SavedResponseReader.ENCODING, {fatal: true}).decode(bytes);
    } catch {
      throw notUtf8Message;
    }
  }

}
