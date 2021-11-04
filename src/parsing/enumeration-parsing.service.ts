import { CommandModel }         from '../command/command.model';
import { commentPrefix }        from './comment-prefix';
import { CommonParsingService } from './common-parsing.service';

export class EnumerationParsingService {

  protected readonly commonParsingService: CommonParsingService;

  constructor(commonParsingService: CommonParsingService) {
    this.commonParsingService = commonParsingService;
  }

  public toLuaDefinition(commandItem: CommandModel): string {
    let luaDefinition: string = '';

    luaDefinition += this.commonParsingService.getDescription(commandItem.description);
    luaDefinition += `${commentPrefix}@class ${commandItem.name} : Enum\n`;
    luaDefinition += `${commandItem.name} = {}\n`;

    return luaDefinition;
  }

}
