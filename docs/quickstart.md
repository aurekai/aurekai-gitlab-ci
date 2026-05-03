# Quickstart — aurekai-gitlab-ci

Run Aurekai pipeline templates as GitLab CI stages.

## Usage

Copy `.gitlab-ci.yml` to your repo root, or include it:

```yaml
include:
  - project: 'aurekai/aurekai-gitlab-ci'
    ref: main
    file: '.gitlab-ci.yml'
```

## Stages

| Stage | Job | Description |
|---|---|---|
| validate | doctor-deep | `akai doctor --deep` |
| validate | manifest-verify | Manifest schema check |
| pack | model-memory-pack | Pack model artifacts |
| audit | sae-audit | SAE audit |
| audit | semantic-cache-bench | Cache benchmark |
| audit | proof-bundle-export | Export proof bundle |
| gate | release-gate | Release gate check |

## Validate Locally

```bash
bash tests/validate-schemas.sh
bash tests/validate-scripts.sh
```
