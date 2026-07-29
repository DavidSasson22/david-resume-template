#import "@preview/signal-resume:0.1.0": resume

#show: resume.with(
  name: "David Sasson",
  body_font: "Arial",
  headline: "Backend-Focused Full-Stack & Platform Engineer",
  list_spacing: 0.6em,
  contact: (
    "Jerusalem, Israel",
    link("tel:+972522626684")[+972 52 262 6684],
    link("mailto:davids2289@gmail.com")[davids2289\@gmail.com],
    link("https://www.linkedin.com/in/david-sasson-developer/")[linkedin.com/in/david-sasson-developer],
  ),
  summary: [
    Backend-focused full-stack and platform engineer with five years of experience building cybersecurity products across AI security, cloud security, and third-party risk. Takes evolving product requirements from system design through production and creates shared infrastructure that helps other engineers ship new capabilities faster.
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
        [Owned full-stack delivery for AI Assets for seven months, partnering across Backend, Product, QA, and Design to build product pages and reusable foundations based on a polymorphic domain model as the product grew into a standalone group.],
        [Built an AI Assets SDK used across backend services and the BFF to model relationships among agents, knowledge bases, capabilities, and resources.],
        [Shipped Scan Windows and Scan Control across schema, APIs, evaluation logic, and UI; its SDK lets backend services evaluate datastore pause rules in bulk and across time ranges.],
        [Resolved high-impact on-call incidents across the platform, including tracing a production OOM to database query fan-out and restoring baseline latency.],
        [Created shared Claude Code skills and platform recipes adopted by engineers to implement cross-stack filters consistently with minimal setup.],
      ),
    ),
    (
      company: "Panorays - Third-Party Cyber Risk",
      role: "Full-Stack Developer",
      location: "Tel Aviv, Israel",
      dates: "Oct 2021–May 2025",
      description: none,
      bullets: (
        [Built data integrations and full-stack product flows on a platform team while improving server performance and data models.],
        [Joined a newly formed cyber-posture assessment team as its first developer, owning core features including a risk policy tool and workflow automation.],
      ),
    ),
  ),
  featured_sections: (),
  education: (),
  sections: (
    (
      title: "Education",
      kind: "labeled",
      items: (
        (
          label: "Freie Universität Berlin",
          value: [M.A., Near & Middle Eastern Studies, 2016–2018 | 94/100; full scholarship, _Intellectual Encounters of the Islamicate World_],
        ),
        (
          label: "Ben-Gurion University",
          value: "Combined B.A., Psychology & Near and Middle Eastern Studies, 2013–2016 | 90/100; Departmental Excellence Program",
        ),
      ),
    ),
  ),
)
