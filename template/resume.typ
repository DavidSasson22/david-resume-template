// David Resume Template v1
// ATS-first, single-column Typst resume framework.

#let resume(
  name: "Your Name",
  headline: none,
  contact: (),
  summary: none,
  skills: (),
  experience: (),
  education: (),
  sections: (),
  body-font: "Arial",
  page-size: "a4",
) = {
  set document(title: name, author: name)
  set page(
    paper: page-size,
    margin: (x: 18mm, y: 16mm),
    header: none,
    footer: none,
  )
  set text(font: body-font, size: 10.8pt, fill: rgb("181818"))
  set par(leading: 0.55em, justify: false)
  set list(indent: 1.15em, body-indent: 0.42em, spacing: 0.16em, marker: [•])

  let section-heading(title) = {
    v(0.8em)
    text(size: 12pt, weight: "bold", upper(title))
    v(0.12em)
    line(length: 100%, stroke: 0.65pt + rgb("444444"))
    v(0.33em)
  }

  let contact-line(items) = {
    align(center)[
      #items.filter(item => item != none and item != "").join([ #sym.dot.c #])
    ]
  }

  let dated-entry(entry) = {
    grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      align: (left, right),
      [#strong(entry.organization)],
      [#entry.dates],
      [#strong(entry.title)#if entry.location != none { [ — #entry.location] }],
      [],
    )
    if entry.context != none {
      v(0.12em)
      emph(entry.context)
    }
    if entry.bullets.len() > 0 {
      v(0.15em)
      list(..entry.bullets)
    }
    v(0.42em)
  }

  let render-custom(section) = {
    section-heading(section.title)
    if section.kind == "bullets" {
      list(..section.items)
    } else if section.kind == "labeled" {
      for item in section.items {
        [#strong(item.label): #item.value]
        linebreak()
      }
    } else if section.kind == "entries" {
      for item in section.items { dated-entry(item) }
    } else {
      section.content
    }
  }

  align(center)[
    #text(size: 21pt, weight: "bold", name)
    #if headline != none {
      v(0.16em)
      text(size: 11.2pt, weight: "medium", headline)
    }
    #v(0.22em)
    #contact-line(contact)
  ]

  if summary != none {
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
        context: entry.context,
        bullets: entry.bullets,
      ))
    }
  }

  if education.len() > 0 {
    section-heading("Education")
    for entry in education {
      grid(
        columns: (1fr, auto),
        column-gutter: 8pt,
        [#strong(entry.institution)],
        [#entry.dates],
        [#entry.credential],
        [],
      )
      v(0.32em)
    }
  }

  for custom-section in sections {
    render-custom(custom-section)
  }
}
