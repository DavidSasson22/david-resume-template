// David Resume Template v1
// ATS-first, single-column Typst resume framework.

#let resume(
  body,
  name: "Your Name",
  headline: none,
  contact: (),
  summary: none,
  skills: (),
  experience: (),
  education: (),
  sections: (),
  body_font: "Arial",
  page_size: "a4"
) = {
  set document(title: name, author: name)
  set page(
    paper: page_size,
    margin: (x: 18mm, y: 16mm),
    header: none,
    footer: none,
  )
  set text(font: body_font, size: 10.8pt, fill: rgb("181818"))
  set par(leading: 0.55em, justify: false)
  set list(indent: 1.15em, body-indent: 0.42em, spacing: 0.34em, marker: [•])

  let section-heading(title) = {
    v(0.8em)
    text(size: 12pt, weight: "bold", upper(title))
    v(0.12em)
    line(length: 100%, stroke: 0.65pt + rgb("444444"))
    v(0.33em)
  }

  let contact-line(items) = {
    align(center)[
      #items.filter(item => item != none and item != "").join([ #sym.dot.c ])
    ]
  }

  let dated-entry(entry) = {
    block(width: 100%)[
      #grid(
        columns: (1fr, auto),
        column-gutter: 8pt,
        row-gutter: 0.44em,
        align: (left, right),
        [#strong(entry.organization)],
        [#entry.dates],
        [
          #text(size: 10.2pt, weight: "medium", entry.title)
          #if entry.location != none {
            [ — #text(size: 9.8pt, fill: rgb("555555"), entry.location)]
          }
        ],
        [],
      )
    ]
    if entry.description != none {
      v(0.12em)
      emph(entry.description)
    }
    if entry.bullets.len() > 0 {
      v(0.15em)
      list(..entry.bullets)
    }
    v(0.42em)
  }

  let education-entry(entry) = {
    block(width: 100%)[
      #grid(
        columns: (1fr, auto),
        column-gutter: 8pt,
        row-gutter: 0.38em,
        [#strong(entry.institution)],
        [#entry.dates],
        [#text(weight: "medium", entry.credential)],
        [],
      )
    ]
    v(0.32em)
  }

  let render-custom(section) = {
    section-heading(section.title)
    if section.kind == "bullets" {
      list(..section.items)
    } else if section.kind == "labeled" {
      grid(
        columns: (1fr,),
        row-gutter: 0.48em,
        ..section.items.map(item => [#strong(item.label): #item.value]),
      )
      v(0.34em)
    } else if section.kind == "entries" {
      for item in section.items { dated-entry(item) }
    } else {
      section.content
    }
  }

  if headline != none {
    align(center, grid(
      columns: (auto,),
      row-gutter: 0.52em,
      align: center,
      [#text(size: 21pt, weight: "bold", name)],
      [#text(size: 11.2pt, weight: "medium", fill: rgb("333333"), headline)],
      [#text(size: 9.8pt, fill: rgb("444444"), contact-line(contact))],
    ))
  } else {
    align(center, grid(
      columns: (auto,),
      row-gutter: 0.52em,
      align: center,
      [#text(size: 21pt, weight: "bold", name)],
      [#text(size: 9.8pt, fill: rgb("444444"), contact-line(contact))],
    ))
  }

  if summary != none {
    v(0.30em)
    section-heading("Summary")
    summary
  }

  if skills.len() > 0 {
    section-heading("Skills")
    for group in skills {
      [#strong(group.label): #group.items.join(", ")]
      linebreak()
    }
  }

  if experience.len() > 0 {
    section-heading("Experience")
    for entry in experience {
      dated-entry((
        organization: entry.company,
        title: entry.role,
        location: entry.location,
        dates: entry.dates,
        description: entry.description,
        bullets: entry.bullets,
      ))
    }
  }

  if education.len() > 0 {
    block(breakable: false)[
      #section-heading("Education")
      #education-entry(education.first())
    ]
    for entry in education.slice(1) {
      education-entry(entry)
    }
  }

  for custom-section in sections {
    render-custom(custom-section)
  }
}
