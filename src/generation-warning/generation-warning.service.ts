export class GenerationWarningService {

  protected static readonly BEFORE_EXIT_EVENT = 'beforeExit';
  protected static readonly warningSet        = new Set<string>();

  public static add(warning: string): void {

    GenerationWarningService.warningSet.add(warning);
  }

  public static reportWhenFinished(): void {

    process.once(GenerationWarningService.BEFORE_EXIT_EVENT, GenerationWarningService.report);
  }

  protected static report(): void {

    if (GenerationWarningService.warningSet.size === 0) return;

    console.warn('');
    GenerationWarningService.warningSet.forEach((warning: string) => console.warn(`Warning: ${warning}`));
  }

}
