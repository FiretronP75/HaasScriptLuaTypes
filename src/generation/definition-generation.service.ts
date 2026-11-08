import { CategoryService }                 from '../category/category.service';
import { CommandModel }                    from '../command/command.model';
import { CommandService }                  from '../command/command.service';
import { DocumentService }                 from '../document/document.service';
import { HaasCommandCategory }             from '../haas/haas-command-category';
import { ColorParsingService }             from '../parsing/color-parsing.service';
import { CommonParsingService }            from '../parsing/common-parsing.service';
import { EnumerationParsingService }       from '../parsing/enumeration-parsing.service';
import { FunctionParsingService }          from '../parsing/function-parsing.service';
import { OptionalParameterParsingService } from '../parsing/optional-parameter-parsing.service';
import { OutputIndexParsingService }       from '../parsing/output-index-parsing.service';
import { SavedResponseService }            from '../saved-response/saved-response.service';
import { WritingService }                  from '../writing/writing.service';

export class DefinitionGenerationService {

  protected readonly colorParsingService: ColorParsingService;
  protected readonly commandService: CommandService;
  protected readonly commonParsingService: CommonParsingService;
  protected readonly documentService: DocumentService;
  protected readonly enumerationParsingService: EnumerationParsingService;
  protected readonly functionParsingService: FunctionParsingService;
  protected readonly optionalParameterParsingService: OptionalParameterParsingService;
  protected readonly outputIndexParsingService: OutputIndexParsingService;
  protected readonly writingService: WritingService;

  constructor(
    savedResponseService: SavedResponseService,
    categoryService: CategoryService,
    fileExtension: string,
    isProduction: boolean,
  ) {
    this.documentService                 = new DocumentService();
    this.writingService                  = new WritingService(
      categoryService,
      this.documentService,
      fileExtension,
      isProduction,
    );
    this.commandService                  = new CommandService(savedResponseService);
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
  }

  public generate(): void {

    this.commandService.loadCommands();

    this.convertCommandList(this.commandService.commandList);
    this.writingService.writeAll();
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

}
