import fs from 'fs';

export class SavedResponseReader {

  public static read<T>(path: string): T {

    return JSON.parse(fs.readFileSync(path, 'utf8')) as T;
  }

}
