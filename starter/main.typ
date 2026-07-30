#import "@preview/signal-resume:0.1.0": resume

#show: resume.with(
  name: "David Sasson",
  body_font: "Arial",
  headline: "Backend-Oriented Full-Stack Engineer",
  list_spacing: 0.8em,
  contact: (
    "Jerusalem, Israel",
    link("tel:+972522626684")[+972 52 262 6684],
    link("mailto:davids2289@gmail.com")[davids2289\@gmail.com],
    link("https://www.linkedin.com/in/david-sasson-developer/")[linkedin.com/in/david-sasson-developer],
  ),
  summary: [
    Software engineer with five years of experience building cybersecurity products across AI security, cloud security, and third-party risk. Takes evolving product requirements from system design through production and creates shared infrastructure that helps other engineers ship new capabilities faster.
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
        [Owned full-stack delivery for AI Assets from its early stages, partnering across Backend, Product, QA, and Design as the initiative grew into a standalone product.],
        [Built performant backend solutions for customer queries spanning millions of rows across multiple tables, balancing runtime efficiency with fast product development.],
        [Designed a reusable, polymorphic AI Assets SDK used across backend services and the BFF.],
        [Built reusable developer tooling adopted across the team, accelerating cross-stack implementation while improving consistency.],
      ),
    ),
    (
      company: "Panorays - Third-Party Cyber Risk Management",
      role: "Full-Stack Developer",
      location: "Tel Aviv, Israel",
      dates: "Oct 2021–May 2025",
      description: none,
      bullets: (
        [Spent two years on a platform team, building data integrations and shared services while optimizing data-intensive backend operations.],
        [Joined a newly established cyber-posture assessment team as its first developer, onboarding two engineers and collaborating closely with the core engine team.],
        [Owned end-to-end delivery of configurable, rules-driven product systems spanning data models, calculation logic, and complex user interfaces.],
        [Contributed to a cross-team MUI component library adopted as the standard for new UI development, improving consistency and reuse across the product.],
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
