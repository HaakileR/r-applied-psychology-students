# GitHub and Zenodo Release Checklist

Use this checklist before creating the first GitHub release and Zenodo DOI.

## 1. Before uploading to GitHub

Check that the repository contains:

- `README.md`
- `CITATION.cff`
- `LICENSE`
- `.zenodo.json`
- `CHANGELOG.md`
- `VERSION`
- `data/`
- `scripts/`
- `materials/`
- `exercises/`
- `solutions/`
- `reports/`
- `templates/`

## 2. Repository settings

Recommended settings:

- Repository name: `r-applied-psychology-students`
- Visibility: Public
- README: already included
- License: already included
- GitHub description: `Open materials for data analysis in psychological research using R.`

## 3. Before creating a release

Check:

- The repository is public.
- `CITATION.cff` has the correct GitHub URL.
- The README citation text is correct.
- The data are clearly described as synthetic.
- No private files are included.
- No real student data are included.

## 4. Create GitHub release

Recommended tag:

```text
v1.0.0
```

Recommended release title:

```text
Version 1.0.0
```

Suggested release notes:

```text
Initial public release of open R materials for applied psychology students. This version includes synthetic data, annotated R scripts, teaching materials, exercises, templates, and metadata prepared for Zenodo archiving.
```

## 5. Zenodo

After connecting GitHub with Zenodo:

1. Enable the repository in Zenodo GitHub settings.
2. Create the release on GitHub.
3. Wait for Zenodo to archive the release.
4. Copy the DOI.
5. Add the DOI to the README and citation text.
6. Create a small update/release if needed.

## 6. After DOI

Add the DOI to:

- README citation section;
- CV entry;
- any project/narrative description;
- future teaching materials.
