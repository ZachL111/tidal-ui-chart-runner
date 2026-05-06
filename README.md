# tidal-ui-chart-runner

`tidal-ui-chart-runner` keeps a focused Lua implementation around frontend apps. The project goal is to develop a Lua command-oriented project for chart scenarios with deny and allow fixtures, explainable decision traces, and synthetic fixtures only.

## Problem It Tries To Make Smaller

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how view drift and layout risk should influence a review result.

## Tidal UI Chart Runner Review Notes

Start with `view drift` and `state pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/tidal-ui-chart-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `view drift` and `state pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The added Lua path is deliberately direct, with fixtures doing most of the explaining.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stale` is the high score at 232; `stress` is the low score at 173.

## Known Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
