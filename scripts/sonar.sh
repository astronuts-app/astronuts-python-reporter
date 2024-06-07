#!/bin/bash

# Run pytest to generate the coverage and JUnit XML report
pytest --cov=src --cov-report=xml:coverage/coverage.xml
pytest --junitxml=test-reports/report.xml

# Transform the JUnit XML report to SonarQube format
python3 transform_pytest_report.py test-reports/report.xml test-reports/astronuts_report.xml

# Check if the transformed report exists
if [ ! -f test-reports/astronuts_report.xml ]; then
    echo "Error: test-reports/astronuts_report.xml not found!"
    exit 1
fi

# Run SonarQube analysis
sonar-scanner \
  -Dsonar.projectKey=python-sonar-project \
  -Dsonar.sources=src \
  -Dsonar.tests=test \
  -Dsonar.python.coverage.reportPaths=coverage/coverage.xml \
  -Dsonar.testExecutionReportPaths=test-reports/astronuts_report.xml \
  -Dsonar.host.url=http://localhost:9000 \
  -Dsonar.token=sqa_d25f06f9a822017eed3ce2673fe86c19e5bcb1ac

