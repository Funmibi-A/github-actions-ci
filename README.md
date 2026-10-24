![Python CI Pipeline](https://github.com/Funmibi-A/github-actions-ci/actions/workflows/ci.yml/badge.svg)


# GitHub Actions CI Pipeline

## 1. Project Overview

This project demonstrates the design and implementation of a Continuous Integration (CI) pipeline using GitHub Actions. The pipeline automatically validates a Python calculator application and runs automated tests when code is pushed to the `main` branch or when a pull request targets that branch.

## 2. Project Objectives

- Understand the principles of Continuous Integration and event-driven automation.
- Configure GitHub Actions workflows using YAML.
- Execute CI tasks on a GitHub-hosted Ubuntu runner.
- Automate Python application validation and testing.
- Configure dependency management and caching.
- Monitor workflow execution and troubleshoot errors.

## 3. Tools and Technologies

- **Git and GitHub:** Source code management and version control.
- **GitHub Actions:** Workflow automation.
- **Python 3.12:** Application development and testing.
- **YAML:** Workflow configuration.
- **Ubuntu:** Operating system used by the GitHub-hosted runner.
- **Python unittest:** Automated testing framework.

## 4. Project Structure

```text
github-actions-ci/
├── .github/
│   └── workflows/
│       └── ci.yml
├── docs/
│   └── screenshots/
├── tests/
│   └── test_app.py
├── app.py
├── requirements.txt
├── README.md
└── .gitignore
```

## 5. Application Description

The project contains a simple Python calculator with four functions:

- Addition
- Subtraction
- Multiplication
- Division

The division function also handles division by zero by raising a `ValueError`.

## 6. Automated Tests

Five unit tests were implemented using Python's built-in `unittest` framework. The tests verify the calculator operations and confirm that division by zero is handled correctly.

To run the tests locally:

```bash
python3 -m unittest discover -s tests -v
```

**Local test result:** All five tests passed.

## 7. CI Pipeline Structure

The workflow is defined in `.github/workflows/ci.yml`.

The pipeline contains the following steps:

1. **Event triggers:** Starts on pushes to `main` and pull requests targeting `main`.
2. **Runner environment:** Executes on `ubuntu-latest`.
3. **Repository checkout:** Retrieves the repository source code using `actions/checkout`.
4. **Python setup:** Configures Python 3.12 using `actions/setup-python`.
5. **Dependency management:** Upgrades pip and installs dependencies if the requirements file contains any.
6. **Caching:** Configures pip caching to reduce dependency installation time on subsequent runs.
7. **Build validation:** Compiles the Python application and test files to check for syntax errors.
8. **Automated testing:** Runs the five unit tests using `unittest`.

## 8. Execution Results

The Python application was tested locally before workflow automation. The local test run completed successfully, with all five tests passing.

The GitHub Actions workflow was subsequently executed to validate the application automatically. Refer to the screenshots in `docs/screenshots/` for evidence of the workflow execution and test results.

## 9. Screenshots and Evidence

The project evidence includes:

- `01-repository.png` — GitHub repository overview.
- `02-local-tests-passed.png` — Successful local unit tests.
- `03-workflow-success.png` — Successful GitHub Actions workflow run.
- `04-test-logs.png` — Workflow job logs showing the test results.

## 10. Troubleshooting

During local setup, the `python` command was not available by default in Ubuntu. Python was installed and accessible through the `python3` command, so local testing was performed using `python3`.

