import { CommandModel }             from '../command/command.model';
import { CommandService }           from '../command/command.service';
import { HaasCommandParameterType } from '../haas/haas-command-parameter-type';
import { HaasCommandType }          from '../haas/haas-command-type';
import { ParameterModel }           from '../parameter/parameter.model';
import { commentPrefix }            from './comment-prefix';
import { CommonParsingService }     from './common-parsing.service';

export class FunctionParsingService {

  protected readonly commandService: CommandService;
  protected readonly commonParsingService: CommonParsingService;

  constructor(commandService: CommandService, commonParsingService: CommonParsingService) {
    this.commandService       = commandService;
    this.commonParsingService = commonParsingService;
  }

  public getOverloadList(commandItem: CommandModel): string {

    if (!commandItem.optionalParameterList.length) return '';

    let overloadListText: string = '';

    commandItem.optionalParameterList.forEach(
      (parameterItem: ParameterModel, index: number) => {
        overloadListText += this.getOverload(commandItem, index);
      },
    );

    overloadListText += this.getOverloadParameter(commandItem);

    return overloadListText;
  }

  public getReturn(commandItem: CommandModel): string {

    const description: string = commandItem.outputDescription.length
      ? ` ${commandItem.outputDescription}`
      : '';

    const validCommandNameList: string[] = this.commandService.getNameListForGroupIdList(commandItem.outputGroupIdList);
    const suggestions: string            = this.commonParsingService.getSuggestions(validCommandNameList, 'Output Suggestions');

    return `${commentPrefix}@return ${commandItem.outputTypeName}${description}${suggestions}\n`.replace('.. ', '. ');
  }

  public toLuaDefinition(commandItem: CommandModel): string {
    let luaDefinition: string = '';

    luaDefinition += this.commonParsingService.getDescription(commandItem.description);
    luaDefinition += this.getParameterListText(commandItem.parameterList);
    luaDefinition += this.getReturn(commandItem);
    luaDefinition += this.getOverloadList(commandItem);
    luaDefinition += this.getFunction(commandItem, commandItem.parameterList);

    return luaDefinition;
  }

  protected getFunction(commandItem: CommandModel, parameterList: ParameterModel[]): string {

    let functionText: string = `function ${commandItem.name}(`;

    parameterList.forEach(
      (parameterItem: ParameterModel, index: number, array: ParameterModel[]) => {
        if (parameterItem.type === HaasCommandParameterType.DynamicParams) {
          functionText += '...';
        } else {
          functionText += parameterItem.name;
        }

        if (index < array.length - 1) functionText += ', ';
      },
    );

    return functionText + ') end\n';
  }

  protected getInlineParameter(parameterItem: ParameterModel, index: number, lastIndex: number): string {

    const name: string     = parameterItem.name;
    let text: string       = '';
    const typeName: string = parameterItem.typeName;

    text += `${name}: ${typeName}`;

    if (parameterItem.groupIdList.includes(HaasCommandType.ColorAqua)) text += ' | ColorEnum';

    if (index < lastIndex) text += ', ';

    return text;
  }

  protected getOverload(commandItem: CommandModel, limit: number): string {

    let overloadText: string = `${commentPrefix}@overload fun(`;

    commandItem.requiredParameterList.forEach(
      (parameterItem: ParameterModel, index: number, array: ParameterModel[]) => {
        overloadText += this.getInlineParameter(parameterItem, index, array.length - 1);
      },
    );

    if (commandItem.optionalParameterList.length && commandItem.requiredParameterList.length && limit > 0) overloadText += ', ';

    commandItem.optionalParameterList.forEach(
      (parameterItem: ParameterModel, index: number) => {
        if (index < limit) overloadText += this.getInlineParameter(parameterItem, index, limit - 1);
      },
    );

    return `${overloadText}): ${commandItem.outputTypeName}\n`;
  }

  protected getOverloadParameter(commandItem: CommandModel): string {

    let overloadText: string = `${commentPrefix}@overload fun(`;

    commandItem.requiredParameterList.forEach(
      (parameterItem: ParameterModel, index: number, array: ParameterModel[]) => {
        overloadText += this.getInlineParameter(parameterItem, index, array.length - 1);
      },
    );

    if (commandItem.requiredParameterList.length > 0) overloadText += ', ';

    overloadText += `optionalParameters: ${commandItem.optionalParameterObjectName}`;

    return `${overloadText}): ${commandItem.outputTypeName}\n`;
  }

  protected getParameter(parameterItem: ParameterModel): string {

    const name: string        = parameterItem.name;
    const description: string = parameterItem.description;
    const optional: string    = parameterItem.isRequired
      ? ''
      : ' Optional -';
    const typeName: string    = parameterItem.typeName;

    let parameterText: string;

    if (parameterItem.type === HaasCommandParameterType.DynamicParams) {
      parameterText = `${commentPrefix}@vararg ${typeName}`;
    } else {
      parameterText = `${commentPrefix}@param ${name} ${typeName}`;
    }

    if (parameterItem.groupIdList.includes(HaasCommandType.ColorAqua)) parameterText += ' | ColorEnum';

    const validCommandNameList: string[] = this.commandService.getNameListForGroupIdList(parameterItem.groupIdList);
    const suggestions: string            = this.commonParsingService.getSuggestions(validCommandNameList, 'Suggestions');

    parameterText += `${optional} ${description}${suggestions}\n`;

    return parameterText.replace('.. ', '. ');
  }

  protected getParameterListText(parameterList: ParameterModel[]): string {
    let parameterListText: string = '';

    parameterList.forEach(
      (parameterItem: ParameterModel) => parameterListText += this.getParameter(parameterItem),
    );

    return parameterListText;
  }

}
