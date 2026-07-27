#import "../template/resume.typ": resume

#show: resume.with(
  name: "Alex Morgan",
  headline: "Senior Backend & Platform Engineer",
  contact: (
    "Tel Aviv, Israel",
    link("mailto:alex@example.com")[alex@example.com],
    link("https://linkedin.com/in/example")[linkedin.com/in/example],
    link("https://github.com/example")[github.com/example],
  ),
  summary: [
    Backend and platform engineer with 7+ years of experience turning ambiguous product requirements into scalable production systems. Builds reusable infrastructure, improves reliability, and partners across Engineering, Product, QA, and Design.
  ],
  skills: (
    (label: "Languages", items: ("TypeScript", "JavaScript", "SQL", "Python")),
    (label: "Backend", items: ("Node.js", "NestJS", "REST APIs", "Event-driven architecture")),
    (label: "Data & Infrastructure", items: ("PostgreSQL", "Redis", "Kafka", "AWS", "Docker")),
    (label: "Practices", items: ("System design", "Data modeling", "Observability", "CI/CD")),
  ),
  experience: (
    (
      company: "Example Security",
      role: "Senior Software Engineer",
      location: "Tel Aviv",
      dates: "2023–Present",
      context: "Backend and platform engineering for cloud-security products.",
      bullets: (
        [Designed a reusable configuration and data-dispatch architecture that enabled new product surfaces without repeated frontend infrastructure work.],
        [Reduced a production service's memory pressure and restored stable response times by tracing allocation growth and redesigning a high-volume processing path.],
        [Created shared engineering tooling adopted by multiple teams, reducing setup effort and standardizing implementation patterns.],
      ),
    ),
    (
      company: "Example SaaS",
      role: "Software Engineer",
      location: "Tel Aviv",
      dates: "2019–2023",
      context: none,
      bullets: (
        [Owned backend delivery for policy and workflow capabilities, from system design through production rollout.],
        [Improved server performance and data-model efficiency for high-traffic platform screens.],
      ),
    ),
  ),
  education: (
    (institution: "Example University", credential: "B.Sc. in Computer Science", dates: "2015–2019"),
  ),
  additional: (
    (label: "Languages", value: "English (professional), Hebrew (native)"),
  ),
)
