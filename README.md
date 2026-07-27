# David Resume Template v1

An open-source, ATS-first resume template for experienced software engineers.

The template prioritizes reliable parsing, rapid recruiter scanning, evidence-dense experience bullets, and maintainability. It deliberately avoids tables used for content layout, sidebars, icons, skill bars, profile photos, graphics, and decorative elements.

## Design principles

- Single-column, reverse-chronological structure
- A4 by default; US Letter supported
- 10.8 pt body text; three-level hierarchy
- 18 mm horizontal and 16 mm vertical margins
- Standard section names
- Contact information in the document body
- Text-based PDF output
- Skills grouped by meaningful categories
- Experience-first organization for experienced engineers
- No keyword stuffing or hidden text

## Quick start

Install [Typst](https://typst.app/docs/), then run:

```bash
typst compile example/resume.typ example/resume.pdf
```

Edit `example/resume.typ` with your own content. The reusable layout lives in `template/resume.typ`.

## Use US Letter

Pass `page-size: "us-letter"` to `resume.with(...)`.

## Font

The default is Arial because it is readable and widely available. Change `body-font` when calling the template if Arial is unavailable. Recommended fallbacks: Aptos, Calibri, Helvetica, or Liberation Sans.

## Content order

Default order:

1. Name, headline, contact information
2. Summary (optional)
3. Technical Skills
4. Experience
5. Education
6. Additional information (optional)

For most experienced engineers, keep Experience prominent and remove any optional section that does not improve role fit.

## ATS validation checklist

After generating the PDF:

1. Select all text and paste it into a plain-text editor.
2. Verify that reading order is correct.
3. Confirm that contact details and dates are extractable.
4. Check that no text is clipped.
5. Keep a DOCX fallback when an employer specifically requests it.

## Evidence basis

See [`docs/design-rationale.md`](docs/design-rationale.md). The template operationalizes robust constraints rather than claiming one exact font, spacing formula, or layout is universally optimal.

## License

MIT. See [`LICENSE`](LICENSE).
