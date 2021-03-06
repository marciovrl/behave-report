var reporter = require("cucumber-html-reporter");

var options = {
  theme: "bootstrap",
  jsonFile: "results/report.json",
  output: "results/report.html",
  reportSuiteAsScenarios: true,
  scenarioTimestamp: true,
  launchReport: true,
  metadata: {
    "App Version": "0.3.2",
    "Test Environment": "EXAMPLE",
    Browser: "Chrome",
    Platform: "Behave Report",
    Parallel: "Scenarios",
    Executed: "Remote",
  },
};

reporter.generate(options);
