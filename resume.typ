#import "template.typ": resume, header, header2, resume_heading, edu_item, exp_item, project_item, skill_item, cert_item, honor_item

#show: resume


// =========================================+ HEADER +============================================================

// #header(
//   name: "Diego Coronado Rodriguez",
//   phone: "346-363-7089",
//   email: "diegoa2992@proton.me",
//   linkedin: "linkedin.com/in/diegocoronado0",
//   site: "github.com/sudoneoox",
// )

#header2(
  name: "Diego A. Coronado",
  email: "diegoa2992@proton.me",
  linkedin: "linkedin.com/in/diegocoronado0",
  site: "sudoneoox.github.io",
  site_display: "https://sudoneoox.github.io",
  github: "github.com/sudoneoox",
  github_display: "sudoneoox",
)


// =========================================+ EDUCATION +=========================================================
#resume_heading[Education]
#edu_item(
  name: "University of Houston",
  degree: "Bachelor of Science in Computer Science",
  location: "Houston, TX",
  date: "Aug. 2023 - May 2026",
  focus: "Data Science",
)
#edu_item(
  name: none,
  degree: "Bachelor of Science in Mathematics",
  location: none,
  date: none,
  focus: "Data Science",
  honors: "Phi Beta Kappa Honor Society"   // ← include this line for grad school apps
)

// =========================================+ EXPERIENCE +=========================================================
#resume_heading[Experience]
#exp_item(
  role: "Tutor Fellowship",
  name: "Ignite Teach For America",
  location: "Remote",
  date: "Jan. 2025 - Present",
  [Provided virtual one-on-one tutoring to underserved students, helping accelerate their academic progress and foster educational equity],
  [Participated in comprehensive professional development sessions to enhance tutoring effectiveness and student engagement strategies],
  [Collaborated with Ignite Site Leaders and fellow tutors to implement personalized learning approaches and track student progress],
  [Engaged in regular feedback sessions and development activities to continuously improve tutoring effectiveness]
)
#exp_item(
  role: "Computational Biophysics Undergraduate Research",
  name: "CTBP Rice University",
  location: "Houston, TX",
  date: "May 2024 - Aug. 2024",
  [Conducted research on cell differentiation of chromosome ensembles using minimal models],
  [Utilized Minimal Polymer Models to simulate and analyze Hi-C maps for multiple human cell lines],
  [Performed simulations of Chromosome 10 across various cell lines],
  [Developed pipelines for ensemble analysis using techniques such as PCA, t-SNE, and UMAP],
  [Collaborated with team members and presented findings in weekly meetings]
)

// =========================================+ PROJECTS +=============================================================
#resume_heading("Projects")
#project_item(
  name: "University Approval System",
  skills: "Django, SQL, React, Vite",
  date: "",
  [Developed a web-based academic form submission and approval system using Django backend and React frontend],
  [Designed and built a hierarchical approval workflow system allowing for complex multi-step processes],
  [Created electronic signature functionality for PDF document generation and validation],
  [Built administrative interfaces for managing users, organizational units, and approval delegation],
  [Integrated with another team's system to expand service coverage across multiple organizational units]
)
#project_item(
  name: "Medical Clinic Management System",
  skills: "SQL, Node.js, React",
  date: "",
  [Designed and implemented a detailed database schema for efficient management of medical clinic operations],
  [Developed a backend API using Node.js, Express, and Sequelize ORM, establishing complex relationships between entities],
  [Implemented user authentication and role-based access control for secure data management across different user roles],
  [Created API endpoints for core functionalities including user registration, appointment scheduling, and medical record management]
)

// =========================================+ CERTIFICATES +=========================================================

// #resume_heading("Certifications")
// #cert_item(
//   name: "Data Engineer",
//   issuer: "DataCamp",
//   date: "Feb. 2026",
// )
// #cert_item(
//   name: "Data Engineer",
//   issuer: "Zoomcamp",
//   date: "Apr. 2026"
// )


// =========================================+ TECHNICAL SKILLS +=========================================================
#resume_heading("Technical Skills")
#skill_item(
  category: "Languages",
  skills: "Python, SQL, R, C/C++, Javascript, HTML/CSS"
)
#skill_item(
  category: "Data Engineering",
  skills: "SQL, Pieplines, ETL/ELT, Data Modeling",
)
#skill_item(category: "Tools", skills: "Git, Linux, Shell"
)

// NEED TO FINISH
// #skill_item(
//   category: "Frameworks",
//   skills: "React, Node.js, Flask, JUnit, WordPress, Material-UI, FastAPI"
// )
// #skill_item(
//   category: "Developer Tools",
//   skills: "Git, Docker, TravisCI, Google Cloud Platform, VS Code, Visual Studio, PyCharm, IntelliJ, Eclipse"
// )
// #skill_item(
//   category: "Libraries",
//   skills: "pandas, NumPy, Matplotlib"
// )


// =========================================+ HONORS / AWARDS +=========================================================
// // Optional: include for grad school (move above Experience) or data eng (keep here/omit)
// #resume_heading("Honors & Awards")
// #honor_item(
//   name: "Phi Beta Kappa",
//   org: "Southwestern University",
//   date: "May 2021",
//   note: "Top academic honor society, awarded to top 10% of arts & sciences graduates"
// )

// Optional section — remove entire block if unused


