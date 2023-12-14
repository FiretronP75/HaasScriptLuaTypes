import fs                     from 'fs';
import { CategoryService }    from '../category/category.service';
import { DocumentModel }      from '../document/document.model';
import { DocumentService }    from '../document/document.service';
import { HaasDataTypeMapper } from '../haas/haas-data-type-mapper';
import { commentPrefix }      from '../parsing/comment-prefix';

export class WritingService {

  protected readonly categoryService: CategoryService;
  protected readonly directory: string;
  protected readonly documentService: DocumentService;
  protected readonly fileExtension: string;
  protected readonly sampleSuffix: string;

  constructor(categoryService: CategoryService, documentService: DocumentService, fileExtension: string, isProduction: boolean) {
    this.categoryService = categoryService;
    this.documentService = documentService;
    this.fileExtension   = fileExtension;

    this.directory =
      isProduction
        ? 'haas-production'
        : 'haas-staging';

    if (HaasDataTypeMapper.isFlexNumbers) this.directory += '-flex-numbers';

    this.sampleSuffix =
      isProduction
        ? 'production'
        : 'staging';
  }

  public writeAll(): void {
    this.writeCategorySample();
  }

  protected log(path: string, length: number, startTime: Date, needsBlankLine: boolean): void {

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    if (needsBlankLine) console.log('');

    console.log(`Wrote ${path} (${length.toLocaleString()} characters) (${duration.toLocaleString()} ms)`);
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
      if (error) throw error;
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
      if (error) throw error;
      this.log(path, data.length, startTime, false);
    };

    fs.writeFile(path, data, options, callback);
  }

  protected writeCategorySample(): void {

    const startTime: Date = new Date();
    const path: string    = `src/category/sample/category-${this.sampleSuffix}.sample.ts`;
    const data: string    = this.documentService.categorySampleDocumentText;
    const options         = 'utf8';

    const callback = (error: NodeJS.ErrnoException | null) => {
      if (error) throw error;
      this.log(path, data.length, startTime, true);
      this.writeCommandSample();
    };

    fs.writeFile(path, data, options, callback);
  }

  protected writeCommandSample(): void {

    const startTime: Date = new Date();
    const path: string    = `src/command/sample/command-${this.sampleSuffix}.sample.ts`;
    const data: string    = this.documentService.commandSampleDocumentText;
    const options         = 'utf8';

    const callback = (error: NodeJS.ErrnoException | null) => {
      if (error) throw error;
      this.log(path, data.length, startTime, false);
      this.writeBaseDocument();
    };

    fs.writeFile(path, data, options, callback);
  }

}
