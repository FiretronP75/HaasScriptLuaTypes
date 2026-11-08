import { FailureReportingService } from './failure-reporting/failure-reporting.service';
import { Main }                    from './main';

FailureReportingService.reportUncaughtFailures();

new Main();
