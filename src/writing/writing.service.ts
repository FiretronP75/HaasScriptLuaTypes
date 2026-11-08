import fs                     from 'fs';
import { CategoryService }    from '../category/category.service';
import { DocumentModel }      from '../document/document.model';
import { DocumentService }    from '../document/document.service';
import { HaasDataTypeMapper } from '../haas/haas-data-type-mapper';
import { commentPrefix }      from '../parsing/comment-prefix';

export class WritingService {

  protected static readonly DEFINITION_FILE_PATTERN = /^hs\..*\.def\..+$/;

  protected readonly categoryService: CategoryService;
  protected readonly directory: string;
  protected readonly documentService: DocumentService;
  protected readonly fileExtension: string;

  constructor(categoryService: CategoryService, documentService: DocumentService, fileExtension: string, isProduction: boolean) {
    this.categoryService = categoryService;
    this.documentService = documentService;
    this.fileExtension   = fileExtension;

    this.directory =
      isProduction
        ? 'haas-production'
        : 'haas-staging';

    if (HaasDataTypeMapper.isFlexNumbers) this.directory += '-flex-numbers';
  }

  public writeAll(): void {
    this.createDirectory();
    this.removeOldDefinitions();
    this.writeBaseDocument();
  }

  protected removeOldDefinitions(): void {

    try {
      fs.readdirSync(this.directory)
        .filter((fileName: string) => WritingService.DEFINITION_FILE_PATTERN.test(fileName))
        .forEach((fileName: string) => fs.rmSync(`${this.directory}/${fileName}`));
    } catch {
      throw `Could not remove the old definitions from the folder "${this.directory}". Check that you are allowed to change that folder, then try again.`;
    }
  }

  protected createDirectory(): void {

    try {
      fs.mkdirSync(this.directory, {recursive: true});
    } catch {
      throw `Could not create the folder "${this.directory}". Check that you are allowed to make folders here and that no file has that name, then try again.`;
    }
  }

  protected log(path: string, length: number, startTime: Date, needsBlankLine: boolean): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    if (needsBlankLine) console.log('');

    console.log(`Wrote ${path} (${length.toLocaleString()} characters) (${duration.toLocaleString()} ms)`);
  }

  protected writeFailureMessage(path: string): string {

    return `Could not save the file "${path}". Check that you are allowed to change that folder, then try again.`;
  }

  protected writeAllCategoryDocuments(): void {

    const documentList: DocumentModel[] = this.documentService.getDocumentList(this.categoryService);

    documentList.forEach(
      (document: DocumentModel) => {
        this.writeCategoryDocument(document);
      },
    );
  }

  protected writeBaseDocument(): void {

    const startTime: Date = new Date();
    const path: string    = `${this.directory}/hs.base.def.${this.fileExtension}`;
    const data: string    = this.documentService.baseDocumentText;
    const options         = 'utf8';

    const callback = (error: NodeJS.ErrnoException | null) => {
      if (error) throw this.writeFailureMessage(path);
      this.log(path, data.length, startTime, true);
      this.writeAllCategoryDocuments();
    };

    fs.writeFile(path, data, options, callback);
  }

  protected writeCategoryDocument(document: DocumentModel): void {

    const fileName = document.name.toLowerCase().replace(/ +/g, '-').replace(/\(+/g, '').replace(/\)+/g, '');

    const startTime: Date = new Date();
    const path: string    = `${this.directory}/hs.${fileName}.def.${this.fileExtension}`;
    const data: string    = commentPrefix + document.name + '\n\n' + document.text;
    const options         = 'utf8';

    const callback = (error: NodeJS.ErrnoException | null) => {
      if (error) throw this.writeFailureMessage(path);
      this.log(path, data.length, startTime, false);
    };

    fs.writeFile(path, data, options, callback);
  }

}
