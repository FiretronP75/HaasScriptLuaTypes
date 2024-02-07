import { CategoryService }                 from './category/category.service';
import { CommandModel }                    from './command/command.model';
import { CommandService }                  from './command/command.service';
import { DocumentService }                 from './document/document.service';
import { HaasCommandCategory }             from './haas/haas-command-category';
import { HaasDataTypeMapper }              from './haas/haas-data-type-mapper';
import { ColorParsingService }             from './parsing/color-parsing.service';
import { CommonParsingService }            from './parsing/common-parsing.service';
import { EnumerationParsingService }       from './parsing/enumeration-parsing.service';
import { FunctionParsingService }          from './parsing/function-parsing.service';
import { OptionalParameterParsingService } from './parsing/optional-parameter-parsing.service';
import { OutputIndexParsingService }       from './parsing/output-index-parsing.service';
import { WritingService }                  from './writing/writing.service';

export class Main {

  protected readonly categoryService: CategoryService;
  protected readonly colorParsingService: ColorParsingService;
  protected readonly commandService: CommandService;
  protected readonly commonParsingService: CommonParsingService;
  protected readonly documentService: DocumentService;
  protected readonly enumerationParsingService: EnumerationParsingService;
  protected readonly functionParsingService: FunctionParsingService;
  protected readonly optionalParameterParsingService: OptionalParameterParsingService;
  protected readonly outputIndexParsingService: OutputIndexParsingService;
  protected readonly writingService: WritingService;

  protected dataCount: number     = 0;
  protected fileExtension: string = '';
  protected isProduction: boolean = true;
  protected interfaceKey: string  = '';
  protected nodeBinPath: string   = '';
  protected scriptPath: string    = '';
  protected userId: string        = '';

  constructor() {
    this.validateArguments();

    this.documentService                 = new DocumentService();
    this.categoryService                 = new CategoryService(this.documentService, this.isProduction);
    this.writingService                  = new WritingService(
      this.categoryService,
      this.documentService,
      this.fileExtension,
      this.isProduction,
    );
    this.commandService                  = new CommandService(
      this.documentService,
      this.isProduction,
      this.interfaceKey,
      this.userId,
    );
    this.commonParsingService            = new CommonParsingService();
    this.functionParsingService          = new FunctionParsingService(this.commandService, this.commonParsingService);
    this.colorParsingService             = new ColorParsingService(this.commonParsingService,
      this.functionParsingService,
    );
    this.enumerationParsingService       = new EnumerationParsingService(this.commonParsingService);
    this.optionalParameterParsingService = new OptionalParameterParsingService();
    this.outputIndexParsingService       = new OutputIndexParsingService(this.commandService,
      this.commonParsingService,
    );

    this.loadRemoteData();
  }

  protected convertCommand(commandItem: CommandModel): void {

    if (commandItem.outputIndexList.length > 0) {

      const luaDefinition: string = this.outputIndexParsingService.toLuaDefinition(commandItem);

      this.documentService.appendToDocument(commandItem.category, luaDefinition);
    }

    if (commandItem.optionalParameterList.length > 0) {

      const luaDefinition: string = this.optionalParameterParsingService.toLuaDefinition(commandItem);

      this.documentService.appendToDocument(commandItem.category, luaDefinition);
    }

    if (commandItem.isEnumeration && commandItem.category === HaasCommandCategory.EnumerationsColor) {

      const luaDefinition: string = this.colorParsingService.toLuaDefinition(commandItem);

      this.documentService.appendToDocument(commandItem.category, luaDefinition);

    } else if (commandItem.isEnumeration) {

      const luaDefinition: string = this.enumerationParsingService.toLuaDefinition(commandItem);

      this.documentService.appendToDocument(commandItem.category, luaDefinition);

    } else {

      const luaDefinition: string = this.functionParsingService.toLuaDefinition(commandItem);

      this.documentService.appendToDocument(commandItem.category, luaDefinition);

    }
  }

  protected convertCommandList(commandList: CommandModel[]): void {
    console.log('');
    console.log('Parsing commands...');

    const startTime = new Date();

    commandList.forEach(
      (commandItem: CommandModel) => {
        this.convertCommand(commandItem);
      },
    );

    const endTime: Date    = new Date();
    const duration: number = endTime.getTime() - startTime.getTime();

    console.log(`Commands parsed. (${duration.toLocaleString()} ms)`);
  }

  protected loadRemoteData() {

    this.categoryService.loadCategories().then(
      () => this.onRemoteData(),
    );

    this.commandService.loadCommands().then(
      () => this.onRemoteData(),
    );

    console.log('');
  }

  protected onRemoteData(): void {

    this.dataCount++;

    if (this.dataCount < 2) return;

    this.convertCommandList(this.commandService.commandList);
    this.writingService.writeAll();
  }

  protected validateArguments(): void {

    if (process.argv.length < 7) {
      console.error(
        'This script requires 5 parameters: environment, file extension, flexible numbers, interface key, user id.');
      console.error(
        'Environment may be "production" or "staging". Anything other than "staging" (case-insensitive) assumes "production".');
      console.error('File extension may be anything, but "lua" or "hs" is recommended.');
      console.error(
        'Flexible numbers may be "flex-num" or "not-flex-num". Anything other than "flex-num" (case-insensitive) assumes "not-flex-num".');
      console.error('Interface key and user id can be copied from a web browser session that has not expired yet.');
      console.error(
        'Example: yarn start prod lua flex-num 30w3jrv4pa-fj209-qj0934-295cn-qv9r0cev fm02q9rf0q2fqr2cv98r4v8q9tv8rq48');
      process.exit(1);
    }

    this.nodeBinPath                 = process.argv.slice(0, 1)[0];
    this.scriptPath                  = process.argv.slice(1, 2)[0];
    this.isProduction                = process.argv.slice(2, 3)[0].toLowerCase() !== 'staging';
    this.fileExtension               = process.argv.slice(3, 4)[0];
    HaasDataTypeMapper.isFlexNumbers = process.argv.slice(4, 5)[0].toLowerCase() === 'flex-num';
    this.interfaceKey                = process.argv.slice(5, 6)[0];
    this.userId                      = process.argv.slice(6, 7)[0];

    console.log('Node Bin Path:', this.nodeBinPath);
    console.log('Script Path:', this.scriptPath);
    console.log('Production:', `${this.isProduction}`);
    console.log('File Extension:', this.fileExtension);
    console.log('Flexible Numbers:', `${HaasDataTypeMapper.isFlexNumbers}`);
    console.log('Interface Key:', this.interfaceKey);
    console.log('User ID:', this.userId);
    console.log('');
  }

}
