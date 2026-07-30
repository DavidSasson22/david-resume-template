#import "@preview/signal-resume:0.1.0": resume

#show: resume.with(
  name: "David Sasson",
  body_font: "Arial",
  headline: "Backend & Platform Engineer",
  list_spacing: 0.8em,
  contact: (
    link("tel:+972522626684")[+972 52 262 6684],
    link("mailto:davids2289@gmail.com")[davids2289\@gmail.com],
    link("https://www.linkedin.com/in/david-sasson-developer/")[linkedin.com/in/david-sasson-developer],
  ),
  summary: [
    Software engineer with five years of experience building AI security, cloud security, and third-party risk products. Resolves performance bottlenecks, designs reusable platform architecture, and takes complex systems from design through production.
  ],
  skills: (
    (label: "Languages & Frameworks", items: ("TypeScript", "JavaScript", "Node.js", "NestJS", "React")),
    (label: "Backend", items: ("REST APIs", "Microservices", "Kafka", "RabbitMQ", "SDK development")),
    (label: "Data", items: ("PostgreSQL", "MongoDB", "Redis", "TypeORM", "Mongoose", "Data modeling")),
    (label: "Engineering", items: ("System design", "Platform engineering", "Performance optimization", "Testing")),
  ),
  experience: (
    (
      company: "Cyera - AI and Data Security",
      role: "Software Engineer",
      location: "Tel Aviv, Israel",
      dates: "Jun 2025–Present",
      description: none,
      bullets: (
        [Owned end-to-end delivery of AI Assets from inception, building its catalog, polymorphic asset-detail page, and AI Security dashboard in partnership with Backend, Product, QA, and Design.],
        [Built a polymorphic asset model and dispatcher-driven tabs and cards on shared layout infrastructure, cutting new asset additions from days to hours and enabling backend engineers to ship UI changes independently.],
        [Reduced worst-case latency on a core page from approximately 5 seconds to 0.5 seconds through query optimization, improving performance across tenants.],
      ),
    ),
    (
      company: "Panorays - Third-Party Cyber Risk Management",
      role: "Full-Stack Developer",
      location: "Tel Aviv, Israel",
      dates: "Oct 2021–May 2025",
      description: none,
      bullets: (
        [Cut a data-retrieval job spanning all customers from 11–12 minutes to 1.5 minutes by replacing batched API calls with one purpose-built endpoint, reducing database load and eliminating consumer-side aggregation and deduplication.],
        [Built a configurable risk-policy system used by more than 50% of customers to override default risk calculations, spanning data models, calculation logic, and complex UI.],
        [Built rules-driven security workflows that triggered emails and task assignments when customer-defined conditions were met.],
      ),
    ),
  ),
  featured_sections: (),
  education: (),
  sections: (
    (
      title: "Education",
      kind: "custom",
      content: grid(
        columns: (1fr,),
        row-gutter: 0.72em,
        [
          #strong[Freie Universität Berlin]
          #linebreak()
          #text(size: 10pt)[M.A., Near and Middle Eastern Studies, 2016–2018 | 94/100; full scholarship]
        ],
        [
          #strong[Ben-Gurion University]
          #linebreak()
          #text(size: 10pt)[Combined B.A., Psychology & Near and Middle Eastern Studies, 2013–2016 | 90/100; Departmental Excellence]
        ],
      ),
    ),
  ),
)
