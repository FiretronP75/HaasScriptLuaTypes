import { CategoryService } from '../category/category.service';
import { commentPrefix }   from '../parsing/comment-prefix';
import { DocumentModel }   from './document.model';

export class DocumentService {

  public baseDocumentText = '';

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
