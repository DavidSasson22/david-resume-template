// David Resume Template v1
// ATS-first, single-column Typst resume template.

#let resume(
  name: "Your Name",
  headline: none,
  contact: (),
  summary: none,
  skills: (),
  experience: (),
  education: (),
  additional: (),
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

  let section(title) = {
    v(0.8em)
    text(size: 12pt, weight: "bold", title)
    v(0.12em)
    line(length: 100%, stroke: 0.65pt + rgb("444444"))
    v(0.33em)
  }

  let contact-line(items) = {
    align(center)[
      #items.filter(item => item != none and item != "").join([ #sym.dot.c #])
    ]
  }

  let job(entry) = {
    grid(
      columns: (1fr, auto),
      column-gutter: 8pt,
      align: (left, right),
      [#strong(entry.company)],
      [#entry.dates],
      [#strong(entry.role)#if entry.location != none { [ — #entry.location] }],
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
    section("SUMMARY")
    summary
  }

  if skills.len() > 0 {
    section("TECHNICAL SKILLS")
    for group in skills {
      [#strong(group.label): #group.items.join(", ")]
      linebreak()
    }
  }

  if experience.len() > 0 {
    section("EXPERIENCE")
    for entry in experience { job(entry) }
  }

  if education.len() > 0 {
    section("EDUCATION")
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

  if additional.len() > 0 {
    section("ADDITIONAL")
    for item in additional {
      [#strong(item.label): #item.value]
      linebreak()
    }
  }
}
