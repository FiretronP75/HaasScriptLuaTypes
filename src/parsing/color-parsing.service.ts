import { CommandModel }           from '../command/command.model';
import { commentPrefix }          from './comment-prefix';
import { CommonParsingService }   from './common-parsing.service';
import { FunctionParsingService } from './function-parsing.service';

export class ColorParsingService {

  protected readonly commonParsingService: CommonParsingService;
  protected readonly functionParsingService: FunctionParsingService;

  constructor(commonParsingService: CommonParsingService, functionParsingService: FunctionParsingService) {
    this.commonParsingService   = commonParsingService;
    this.functionParsingService = functionParsingService;
  }

  public toLuaDefinition(commandItem: CommandModel): string {
    let luaDefinition: string = '';

    luaDefinition += this.commonParsingService.getDescription(commandItem.description);
    luaDefinition += `${commentPrefix}@class ${commandItem.name} : ColorEnum\n`;
    luaDefinition += this.functionParsingService.getReturn(commandItem);
    luaDefinition += this.functionParsingService.getOverloadList(commandItem);
    luaDefinition += `${commentPrefix}@overload fun(opacity: number): string\n`;
    luaDefinition += `${commandItem.name} = {}\n`;

    return luaDefinition;
  }

}
