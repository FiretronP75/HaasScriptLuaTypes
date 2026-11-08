export class FailureReportingService {

  protected static readonly UNCAUGHT_EXCEPTION_EVENT = 'uncaughtException';

  public static reportUncaughtFailures(): void {

    process.on(FailureReportingService.UNCAUGHT_EXCEPTION_EVENT, FailureReportingService.report);
  }

  protected static report(failure: any): never {

    if (typeof failure === 'string') {
      console.error(failure);
    } else {
      console.error('Something went wrong while creating the definitions. Check your command and your saved files, then try again.');
      console.error(failure);
    }

    process.exit(1);
  }

}
