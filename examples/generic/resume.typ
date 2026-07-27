#import "../../template/resume.typ": resume

#show: resume.with(
  name: "Jordan Lee",
  headline: "Senior Operations & Program Leader",
  contact: (
    "Metro City, Country",
    link("mailto:jordan.lee@example.com")[jordan.lee@example.com],
    link("https://linkedin.com/in/jordanlee")[linkedin.com/in/jordanlee],
  ),
  summary: [
    Results-oriented professional with 10+ years of experience leading cross-functional programs, improving operating models, and delivering measurable customer and business outcomes. Known for translating ambiguous goals into clear plans, aligning stakeholders, and building repeatable processes that scale.
  ],
  skills: (
    (label: "Program Leadership", items: ("Portfolio planning", "Roadmaps", "Risk management", "Executive reporting")),
    (label: "Operations", items: ("Process improvement", "Capacity planning", "Vendor management", "Quality systems")),
    (label: "Analysis", items: ("KPI design", "Forecasting", "Business cases", "Root-cause analysis")),
    (label: "Tools", items: ("Microsoft Excel", "Power BI", "Jira", "Salesforce")),
  ),
  experience: (
    (
      company: "Northstar Services",
      role: "Senior Program Manager",
      location: "Metro City",
      dates: "2022–Present",
      description: "Leads strategic programs spanning Operations, Product, Finance, and Customer Success.",
      bullets: (
        [Redesigned the annual planning process across six departments, reducing planning-cycle time by 30% and giving executives a single view of priorities, owners, and dependencies.],
        [Established a portfolio health framework that surfaced delivery risks earlier and improved on-time completion from 74% to 91% within one year.],
        [Led a customer onboarding improvement program that removed four handoffs, shortened time to value by 25%, and increased satisfaction scores.],
      ),
    ),
    (
      company: "Example Group",
      role: "Operations Manager",
      location: "Metro City",
      dates: "2017–2022",
      description: none,
      bullets: (
        [Managed a multi-site operating function serving more than 200 internal users while maintaining service levels during rapid organizational growth.],
        [Automated recurring reporting and introduced standard operating reviews, saving approximately 20 staff hours per month.],
        [Negotiated supplier and workflow changes that reduced annual operating costs by 12% without reducing service quality.],
      ),
    ),
    (
      company: "Sample Company",
      role: "Business Analyst",
      location: "Metro City",
      dates: "2013–2017",
      description: none,
      bullets: (
        [Built performance dashboards and decision models used by department leaders to prioritize investments and staffing.],
        [Mapped customer-support processes and identified changes that reduced avoidable escalations by 18%.],
      ),
    ),
  ),
  education: (
    (institution: "Example University", credential: "B.A. in Business Administration", dates: "2009–2013"),
  ),
  sections: (
    (
      title: "Certifications",
      kind: "labeled",
      items: (
        (label: "Project Management", value: "Recognized professional certification, 2021"),
        (label: "Process Improvement", value: "Advanced practitioner certification, 2019"),
      ),
    ),
    (
      title: "Selected Projects",
      kind: "bullets",
      items: (
        [Created a reusable operating-review toolkit with templates for objectives, metrics, risks, decisions, and follow-up actions.],
        [Volunteered as program lead for a local workforce-readiness initiative, coordinating 25 mentors and 80 participants.],
      ),
    ),
    (
      title: "Additional Information",
      kind: "labeled",
      items: (
        (label: "Languages", value: "English (native), Spanish (professional)"),
        (label: "Community", value: "Volunteer mentor for early-career professionals"),
      ),
    ),
  ),
)
