import { CommandModel }         from '../command/command.model';
import { CommandService }       from '../command/command.service';
import { OutputIndexModel }     from '../outputIndex/output-index.model';
import { commentPrefix }        from './comment-prefix';
import { CommonParsingService } from './common-parsing.service';

export class OutputIndexParsingService {

  protected readonly commandService: CommandService;
  protected readonly commonParsingService: CommonParsingService;

  constructor(commandService: CommandService, commonParsingService: CommonParsingService) {
    this.commandService       = commandService;
    this.commonParsingService = commonParsingService;
  }

  public toLuaDefinition(commandItem: CommandModel): string {
    let luaDefinition: string = '';

    luaDefinition += `${commentPrefix}The object returned by ${commandItem.name}.\n`;
    luaDefinition += `${commentPrefix}@class ${commandItem.outputTypeName}\n`;

    commandItem.outputIndexList.forEach(
      (outputIndexItem: OutputIndexModel) => {
        luaDefinition += this.getIndexField(outputIndexItem);
      },
    );

    let position: number = 0;

    commandItem.outputIndexList.forEach(
      (outputIndexItem: OutputIndexModel) => {
        position++;
        luaDefinition += this.getIndexField(outputIndexItem, position);
      },
    );

    return luaDefinition;
  }

  protected getIndexField(outputIndexItem: OutputIndexModel, position?: number): string {

    const indexName: string = position
      ? `[${position}]`
      : outputIndexItem.name;
    const typeName: string  = outputIndexItem.typeName;

    const validCommandNameList: string[] = this.commandService.getNameListForGroupIdList(outputIndexItem.groupIdList);
    const suggestions: string            = this.commonParsingService.getSuggestions(validCommandNameList, 'Suggestions');

    return `${commentPrefix}@field ${indexName} ${typeName} ${outputIndexItem.description}${suggestions}\n`.replace('.. ', '. ');
  }

}
