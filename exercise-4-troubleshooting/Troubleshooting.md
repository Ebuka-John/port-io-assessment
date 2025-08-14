#  Exercise 4 – Troubleshooting GitHub Workflow Trigger via Port Self-Service Action

##  Problem Statement

A customer reports that their self-service action in Port remains stuck in **“IN PROGRESS”** and does not trigger the associated GitHub workflow.

---

##  Step-by-Step Troubleshooting Guide

###  1. Verify GitHub App Installation

-  Confirm the GitHub App is installed and authorized for the correct organization or user.
-  Ensure the app has access to the repository where the workflow is defined.
-  Check that the app has the required scopes:
    - `workflow`
    - `repo`
    - `actions`

---

###  2. Confirm Workflow Configuration in GitHub

-  The workflow file must include the `workflow_dispatch` trigger:
  ```yaml
  on:
    workflow_dispatch:
