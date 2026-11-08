import { FailureReportingService }  from './failure-reporting/failure-reporting.service';
import { GenerationWarningService } from './generation-warning/generation-warning.service';
import { Main }                     from './main';

FailureReportingService.reportUncaughtFailures();
GenerationWarningService.reportWhenFinished();

new Main();
