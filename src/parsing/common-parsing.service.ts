import { commentPrefix } from './comment-prefix';

export class CommonParsingService {

  public getDescription(description: string): string {

    const searchValue: RegExp        = /(\r\n)+|\r+|\n+/g;
    const replaceValue: string       = `\n${commentPrefix}`;
    const cleanedDescription: string = description.replace(searchValue, replaceValue);

    return `${commentPrefix}${cleanedDescription}\n`;
  }

  public getSuggestions(validCommandNameList: string[], suggestionWord: string): string {

    if (!validCommandNameList.length) return '';

    let suggestionText: string = `. ${suggestionWord}: `;

    validCommandNameList.forEach(
      (name: string, index: number, array: string[]) => {
        suggestionText += name;
        if (index < array.length - 1) suggestionText += ', ';
      },
    );

    return suggestionText;
  }

}
