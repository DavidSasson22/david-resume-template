#import "@preview/signal-resume:0.1.0": resume

#show: resume.with(
  name: "David Sasson",
  body_font: "Arial",
  headline: "Full-Stack Software Engineer",
  list_spacing: 0.8em,
  entry_header_spacing: 0em,
  contact: (
    link("tel:+972522626684")[+972 52 262 6684],
    link("mailto:davids2289@gmail.com")[davids2289\@gmail.com],
    link("https://www.linkedin.com/in/david-sasson-developer/")[linkedin.com/in/david-sasson-developer],
  ),
  summary: [
    Full-stack software engineer with five years of experience building AI security, data security, and third-party risk products. Delivers end-to-end features spanning data models, backend-for-frontend APIs, business logic, and user interfaces.
  ],
  skills: (
    (label: "Languages & Frameworks", items: ("TypeScript", "JavaScript", "Node.js", "NestJS", "React", "Jest")),
    (label: "Backend", items: ("REST APIs", "Microservices", "Kafka", "RabbitMQ", "SDK development")),
    (label: "Data", items: ("PostgreSQL", "MongoDB", "Redis", "TypeORM", "Mongoose", "Data modeling")),
    (label: "Engineering", items: ("System design", "BFF architecture", "Database schema design", "Query optimization")),
  ),
  experience: (
    (
      company: "Cyera - AI and Data Security",
      role: "Software Engineer",
      location: "Tel Aviv, Israel",
      dates: "Jun 2025–Present",
      description: none,
      bullets: (
        [Owned technical delivery of the AI Assets product from concept through standalone launch, including its asset catalog, polymorphic detail page, and security dashboard, in collaboration with backend engineering, product, QA, and design.],
        [Built a polymorphic asset model and dispatcher-driven shared layouts, reducing the time to add new asset types from days to hours and allowing backend engineers to ship UI changes without frontend support.],
        [Built the graph orchestration layer for relationships among AI agents, knowledge bases, and capabilities, defining the BFF response and shaping the backend persistence schema to enable users to visualize asset connections.],
        [Reduced latency for large customers on a core platform page by up to 90%, from 5 seconds to 0.5 seconds, through query optimization.],
      ),
    ),
    (
      company: "Panorays - Third-Party Cyber Risk Management",
      role: "Full-Stack Developer",
      location: "Tel Aviv, Israel",
      dates: "Oct 2021–May 2025",
      description: none,
      bullets: (
        [Cut runtime for a data-retrieval job across all customers from 11–12 minutes to 1.5 minutes by replacing batched API calls with a purpose-built endpoint, reducing database load and eliminating consumer-side aggregation and deduplication.],
        [Built a configurable risk-policy system adopted by more than 50% of customers, spanning data models, calculation logic, and a policy-management UI.],
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
