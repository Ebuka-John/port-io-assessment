# Exercise 3 – Repository Scorecard for Open Pull Requests

## 🎯 Objective

Create a scorecard on the `Repository` blueprint that evaluates the number of open pull requests (PRs) per repository using the following logic:

- **Gold**: fewer than 5 open PRs
- **Silver**: fewer than 10 open PRs
- **Bronze**: fewer than 15 open PRs

---

## 🛠️ Implementation Steps

### 1. Create a Property: `open_pr_count`

- **Blueprint**: `Repository`
- **Property Name**: `open_pr_count`
- **Type**: Number
- **Source**: GitHub integration (Port GitHub App)
- **Logic**: Automatically populated by the integration using GitHub’s API to count open PRs per repository.

> ✅ Ensure your GitHub repositories have open PRs so the property reflects real data.

---

### 2. Define the Scorecard

- **Scorecard Name**: `Open PR Health`
- **Target Blueprint**: `Repository`
- **Evaluation Logic**:
    - `open_pr_count < 5` → **Gold**
    - `open_pr_count < 10` → **Silver**
    - `open_pr_count < 15` → **Bronze**
- **Fallback**: Repositories with `open_pr_count >= 15` or missing data are not scored or marked as "Needs Attention."

---

## 📸 Validation

- Verified scorecard behavior using three repositories:
    - `repo-a` with 3 open PRs → **Gold**
    - `repo-b` with 7 open PRs → **Silver**
    - `repo-c` with 12 open PRs → **Bronze**

> Screenshots of the scorecard results are included in the `screenshots/exercise-3` folder.

---

## ✅ Outcome

The scorecard provides a clear visual indicator of repository health based on open PR volume, helping teams prioritize code review and merge activity.

