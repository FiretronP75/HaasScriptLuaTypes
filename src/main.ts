import { CategoryService }             from './category/category.service';
import { DefinitionGenerationService } from './generation/definition-generation.service';
import { HaasDataTypeMapper }          from './haas/haas-data-type-mapper';
import { SavedResponseService }        from './saved-response/saved-response.service';

export class Main {

  protected readonly categoryService: CategoryService;
  protected readonly savedResponseService: SavedResponseService;

  protected fileExtension: string = '';
  protected harFilePath: string   = '';
  protected isProduction: boolean = true;
  protected nodeBinPath: string   = '';
  protected scriptPath: string    = '';

  constructor() {
    this.validateArguments();

    this.savedResponseService = new SavedResponseService(this.harFilePath);
    this.categoryService      = new CategoryService(this.savedResponseService);

    this.generateDefinitions();
  }

  protected generateDefinitions(): void {

    this.savedResponseService.load();
    this.categoryService.loadCategories();

    this.generateDefinitionsForNumberMode(true);
    this.generateDefinitionsForNumberMode(false);
  }

  protected generateDefinitionsForNumberMode(isFlexNumbers: boolean): void {

    console.log('');
    console.log('Flexible Numbers:', `${isFlexNumbers}`);

    HaasDataTypeMapper.isFlexNumbers = isFlexNumbers;

    new DefinitionGenerationService(
      this.savedResponseService,
      this.categoryService,
      this.fileExtension,
      this.isProduction,
    ).generate();
  }

  protected validateArguments(): void {

    if (process.argv.length < 5) {
      console.error('This script requires 3 parameters: environment, file extension, HAR file.');
      console.error(
        'Environment may be "production" or "staging". It only changes where the output is saved. Anything other than "staging" (case-insensitive) assumes "production".');
      console.error('File extension may be anything, but "lua" or "hs" is recommended.');
      console.error('The HAR file is exported from a logged-in web browser. The README explains how.');
      console.error('Example: pnpm start prod lua "app.haasbot.com.har"');
      process.exit(1);
    }

    this.nodeBinPath   = process.argv.slice(0, 1)[0];
    this.scriptPath    = process.argv.slice(1, 2)[0];
    this.isProduction  = process.argv.slice(2, 3)[0].toLowerCase() !== 'staging';
    this.fileExtension = process.argv.slice(3, 4)[0];
    this.harFilePath   = process.argv.slice(4, 5)[0];

    console.log('Node Bin Path:', this.nodeBinPath);
    console.log('Script Path:', this.scriptPath);
    console.log('Production:', `${this.isProduction}`);
    console.log('File Extension:', this.fileExtension);
    console.log('HAR File:', this.harFilePath);
    console.log('');
  }

}
