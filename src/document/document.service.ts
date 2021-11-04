import { CategoryRaw }     from '../category/category.raw';
import { CategoryService } from '../category/category.service';
import { CommandRaw }      from '../command/command.raw';
import { commentPrefix }   from '../parsing/comment-prefix';
import { DocumentModel }   from './document.model';

export class DocumentService {

  public baseDocumentText           = '';
  public categorySampleDocumentText = '';
  public commandSampleDocumentText  = '';

  protected readonly idToTextMap = new Map<number, string>();

  constructor() {
    this.baseDocumentText += `${commentPrefix}Base\n\n`;
    this.baseDocumentText += `${commentPrefix}Pretend enumeration for all other enumerations to inherit from.\n`;
    this.baseDocumentText += `${commentPrefix}@class Enum\n\n`;
    this.baseDocumentText += `${commentPrefix}Pretend enumeration for all color enumerations to inherit from.\n`;
    this.baseDocumentText += `${commentPrefix}@class ColorEnum\n`;
  }

  public appendToDocument(id: number, luaDefinition: string): void {
    let documentText: string = this.getDocumentText(id);

    documentText += luaDefinition + '\n';

    this.setDocumentText(id, documentText);
  }

  public getDocumentList(categoryService: CategoryService): DocumentModel[] {

    const documentList: DocumentModel[] = [];

    this.idToTextMap.forEach(
      (text: string, id: number) => {
        documentList.push(
          {
            id  : id,
            name: categoryService.getName(id),
            text: text,
          },
        );
      },
    );

    return documentList.sort(this.compareDocumentName);
  }

  public setCategorySample(categoryRaw: CategoryRaw, isProduction: boolean): void {
    const name = isProduction ? 'categoryProductionSample' : 'categoryStagingSample';

    this.categorySampleDocumentText += `import { CategoryRaw } from './category.raw';\n\n`;
    this.categorySampleDocumentText += `export const ${name}: CategoryRaw = `;
    this.categorySampleDocumentText += JSON.stringify(categoryRaw, null, 2);
    this.categorySampleDocumentText += `;\n`;
  }

  public setCommandSample(commandRawList: CommandRaw[], isProduction: boolean): void {
    const name = isProduction ? 'commandProductionSample' : 'commandStagingSample';

    this.commandSampleDocumentText += `import { CommandRaw } from './command.raw';\n\n`;
    this.commandSampleDocumentText += `export const ${name}: CommandRaw[] = `;
    this.commandSampleDocumentText += JSON.stringify(commandRawList, null, 2);
    this.commandSampleDocumentText += `;\n`;
  }

  protected compareDocumentName(a: DocumentModel, b: DocumentModel): number {

    if (a.name > b.name) return 1;
    if (b.name > a.name) return -1;
    return 0;
  }

  protected getDocumentText(id: number): string {

    const text = this.idToTextMap.get(id);

    return text === undefined
      ? ''
      : text;
  }

  protected setDocumentText(id: number, text: string): Map<number, string> {

    return this.idToTextMap.set(id, text);
  }

}
