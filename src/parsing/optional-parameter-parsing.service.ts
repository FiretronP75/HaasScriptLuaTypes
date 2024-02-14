import { CommandModel }    from '../command/command.model';
import { HaasCommandType } from '../haas/haas-command-type';
import { ParameterModel }  from '../parameter/parameter.model';
import { commentPrefix }   from './comment-prefix';

export class OptionalParameterParsingService {

  public toLuaDefinition(commandItem: CommandModel): string {
    let luaDefinition: string = '';

    luaDefinition += `${commentPrefix}The optional parameters of ${commandItem.name}.\n`;
    luaDefinition += `${commentPrefix}@shape ${commandItem.optionalParameterObjectName}\n`;

    commandItem.optionalParameterList.forEach(
      (parameterItem: ParameterModel) => {
        luaDefinition += this.getOptionalField(parameterItem);
      },
    );

    return luaDefinition;
  }

  protected getOptionalField(parameterItem: ParameterModel): string {

    let typeName: string = parameterItem.typeName;

    if (parameterItem.groupIdList.includes(HaasCommandType.ColorAqua)) typeName += ' | ColorEnum';

    return `${commentPrefix}@field ${parameterItem.name} ${typeName} | nil ${parameterItem.description}\n`;
  }

}
