#import "@preview/signal-resume:0.1.0": resume

#show: resume.with(
  name: "David Sasson",
  body_font: "Arial",
  headline: "Backend & Platform Engineer",
  list_spacing: 0.8em,
  contact: (
    "Jerusalem, Israel",
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
        [Owned end-to-end delivery of AI Assets from inception, building the AI Assets catalog page, polymorphic asset-details page, and AI Security dashboard page in partnership with a backend team, Product, QA, and Design.],
        [Designed AI Assets' polymorphic family-and-instance model and extended shared layout infrastructure with dispatcher-driven tabs and cards, cutting new asset additions from days to hours and enabling backend engineers to complete UI integrations independently.],
        [Cut worst-case query latency for large customers from approximately 5 seconds to 0.5 seconds while improving performance across all tenants by moving heavy aggregation from the server into the database.],
        [Resolved production OOMs and elevated latency by eliminating Cartesian fan-out in a many-to-many database query, restoring baseline response times and improving performance across tenants.],
      ),
    ),
    (
      company: "Panorays - Third-Party Cyber Risk Management",
      role: "Full-Stack Developer",
      location: "Tel Aviv, Israel",
      dates: "Oct 2021–May 2025",
      description: none,
      bullets: (
        [Cut a backend data-retrieval job spanning all customers from 11–12 minutes to 1.5 minutes by replacing repeated batched API calls with a single purpose-built endpoint, reducing database load and removing consumer-side aggregation and deduplication.],
        [Built a configurable risk-policy system used by more than 50% of customers to override default risk calculations, owning its data models, calculation logic, and complex UI end to end.],
        [Built rules-driven workflow automation that triggered emails and task assignments when customer-defined security conditions were met.],
      ),
    ),
  ),
  featured_sections: (),
  education: (
    (
      institution: "Freie Universität Berlin",
      credential: [M.A., Near & Middle Eastern Studies; 94/100; full scholarship, _Intellectual Encounters of the Islamicate World_],
      dates: "2016–2018",
    ),
    (
      institution: "Ben-Gurion University",
      credential: "Combined B.A., Psychology & Near and Middle Eastern Studies; 90/100; Departmental Excellence Program",
      dates: "2013–2016",
    ),
  ),
  sections: (),
)
