# David Resume Template v1

An open-source, evidence-informed, ATS-first resume framework for experienced professionals.

It prioritizes reliable parsing, rapid human scanning, evidence-dense accomplishments, and maintainability. It deliberately avoids sidebars, icons, skill bars, profile photos, charts, and decorative graphics.

## What makes it different

This repository documents not only how to build a resume, but why the framework uses its structure. Recommendations are separated into robust constraints, context-dependent practices, and aesthetic preferences.

## Design principles

- Single-column, reverse-chronological structure
- A4 by default; US Letter supported
- 10.8 pt body text and restrained hierarchy
- 18 mm horizontal and 16 mm vertical margins
- Standard, explicit section names
- Contact information in the document body
- Selectable-text PDF output
- Flexible optional sections
- No keyword stuffing or hidden text

## Quick start

Install [Typst](https://typst.app/docs/), then run:

```bash
typst compile examples/generic/resume.typ examples/generic/resume.pdf
```

Edit `examples/generic/resume.typ`. The reusable framework lives in `template/resume.typ`.

## Canonical example

The repository contains one profession-neutral fictional example at [`examples/generic`](examples/generic). It demonstrates summaries, categorized skills, reverse-chronological experience, measurable bullets, education, certifications, projects, languages, and community work.

The figures are fictional. Replace them with truthful evidence rather than copying claims.

## Optional sections

The `sections` parameter supports:

- `kind: "bullets"` for Projects, Awards, Publications, Speaking, or similar lists
- `kind: "labeled"` for Certifications, Languages, Tools, or compact metadata
- `kind: "entries"` for dated roles such as Volunteering or Military Service
- custom Typst content for other needs

Include only sections that improve fit for the target role.

## Use US Letter

Pass `page-size: "us-letter"` to `resume.with(...)`.

## Documentation

- [`Design principles`](docs/design-principles.md)
- [`ATS guidance`](docs/ats-research.md)
- [`Typography`](docs/typography.md)
- [`Section order`](docs/section-order.md)
- [`Impact bullets`](docs/quantified-bullets.md)
- [`Detailed rationale`](docs/design-rationale.md)

## ATS validation checklist

After generating the PDF:

1. Select all text and paste it into a plain-text editor.
2. Verify that reading order is correct.
3. Confirm that contact details and dates are extractable.
4. Check for clipped text and unexpected page breaks.
5. Keep a DOCX fallback when an employer specifically requests it.

## License

MIT. See [`LICENSE`](LICENSE).
