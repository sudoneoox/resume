// Must download otf fonts from fontawesome and import then into your project
// See documentation for typst/fontawesome
#import "@preview/fontawesome:0.6.0": *

#let resume(body) = {
  set list(indent: 1em)
  show list: set text(size: 0.92em)
  // show link: underline
  // show link: set underline(offset: 3pt)


  set page(
    paper: "us-letter",
    margin: (x: 0.5in, y: 0.5in)
  )

  set text(
    size: 11pt,
      font: "New Computer Modern",
  )

  body
}

#let name_header(name) = {
  // set text(size: 2.25em)
  set text(size: 2.15em)
  [*#name*]
}

#let header(
  name: "Jake Ryan",
  phone: "123-456-7890",
  email: "jake@su.edu",
  linkedin: "linkedin.com/in/jake",
  site: "github.com/jake",
) = {
  align(center,
    block[
      #name_header(name) \
      #phone |
      #link("mailto:" + email)[#email] |
      #link("https://" + linkedin)[#linkedin] |
      #link("https://" + site)[#site]
    ]
  )
  v(5pt)
}


#let header2(
  name: "Jake Ryan",
  phone: "123-456-7890",
  email: "jake@su.edu",
  linkedin: "linkedin.com/in/jake",
  site: "github.com/jake",
  site_display: none,
  github: none,
  github_display: none,
) = {
  let site_label = if site_display != none { site_display } else { site }
  let github_label = if github_display != none { github_display } else if github != none { github } else { none }

  grid(
    columns: (1fr, auto),
    align(horizon)[
      #text(size: 1.7em, weight: "bold")[#name]
    ],
    align(right)[
      #fa-globe() #h(1pt) #link("https://" + site)[#site_label] \
      #fa-envelope(solid:true) #h(1pt) #link("mailto:" + email)[#email] \
      #if github != none [
        #fa-icon("github") #h(1pt) #link("https://" + github)[#github_label]
        #h(1pt) #text(weight: "bold")[·] #h(1pt)
        #fa-linkedin() #h(1pt) #link("https://" + linkedin)[#linkedin]
      ] else [
        #fa-linkedin() #h(3pt) #link("https://" + linkedin)[#linkedin]
      ]
    ]
  )
  v(5pt)
}


#let resume_heading(txt) = {
  show heading: set text(size: 0.92em, weight: "regular")

  block[
    = #smallcaps(txt)
    #v(-4pt)
    #line(length: 100%, stroke: 1pt + black)
  ]
}

#let edu_item(
  name: "Sample University",
  degree: "B.S in Bullshit",
  location: "Foo, BA",
  date: "Aug. 1600 - May 1750",
  focus: none,
  honors: none,
) = {
  set block(above: 0.7em, below: 0.75em)
  pad(left: 1em, right: 0.5em)[
    #grid(
      columns: (3fr, 1fr),
      align(left)[
        #if name != none { strong(name); linebreak() }
        #emph(degree), _Focus:_ #emph(focus)
        #if honors != none {
          linebreak()
          text(size: 0.92em)[#emph(honors)]
        }
      ],
      align(right)[
        #if location != none { location; linebreak() }
        #if date != none { emph(date) }
      ],
    )
  ]
}



#let exp_item(
  name: "Sample Workplace",
  role: "Worker",
  date: "June 1837 - May 1845",
  location: "Foo, BA",
  ..points
) = {
    set block(above: 0.7em, below: 1em)
    pad(left: 1em, right: 0.5em, box[
      #grid(
        columns: (3fr, 1fr),
        align(left)[
          *#role* \
          _#name _
        ],
        align(right)[
          #date \
          _#location _
        ]
      )
      #list(..points)
    ])
}

#let project_item(
  name: "Example Project",
  skills: "Programming Language 1, Database3",
  date: "May 1234 - June 4321",
  ..points
) = {
  set block(above: 0.7em, below: 1em)
  pad(left: 1em, right: 0.5em, box[
    *#name* | _#skills _ #h(1fr) #date
    #list(..points)
  ])
}

#let skill_item(
  category: "Skills",
  skills: "Balling, Yoga, Valorant",
) = {
  set block(above: 0.7em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, block[*#category*: #skills])
}


#let cert_item(
  name: "Example Certification",
  issuer: "Issuing Organization",
  date: "Jan. 2024",
  id: none,
) = {
  set block(above: 0.7em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, block[
    *#name* | _#issuer _ #h(1fr) #date
    #if id != none [#text(size: 0.88em)[Credential ID: #id]]
  ])
}

#let honor_item(
  name: "Example Honor",
  org: "Granting Organization",
  date: "May 2024",
  note: none,
) = {
  set block(above: 0.7em, below: 0.3em)
  set text(size: 0.91em)
  pad(left: 1em, right: 0.5em, grid(
    columns: (3fr, 1fr),
    align(left)[
      *#name* #if note != none [--- #text(style: "italic")[#note]]
    ],
    align(right)[
      _#org _ \
      #date
    ]
  ))
}
