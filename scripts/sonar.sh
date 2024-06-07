#!/bin/bash

# Run pytest to generate the coverage and JUnit XML report
pytest --cov=src --cov-report=xml:coverage/coverage.xml
pytest --junitxml=test-reports/report.xml

# Transform the JUnit XML report to SonarQube format
python3 transform_pytest_report.py test-reports/report.xml test-reports/astronuts_report.xml
