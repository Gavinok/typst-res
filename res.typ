#import "layout.typ": res-name, contact, EXP, special-color, resume
#import "projects.typ"
#show: resume.with(
    name: "Gavin Jaeger-Freeborn",
    contacts: (
	"": "gavinfreeborn@gmail.com",
	"": "Gavin Jaeger-Freeborn",
	"": "Gavinok",
	"": "Gavin Freeborn",
    )
)
= Education
#EXP("University of Victoria", "Victoria, BC", "B.S Software Engineering", "September 2017-2023")
= Experience
#include "experience.typ"
#let languages = ("C", "C++", "Java")
#columns(2)[
    = projects
    #projects.projects.filter(
	(arg2) => projects.is_desired_project(languages, arg2)
    ).map(projects.project_to_text).join()
    #colbreak()
    = technical skills
    #include "skills.typ"
]
= EXTRACURRICULAR ACTIVITIES
#EXP("Sprint Canoe Athlete & Coach", "Calgary, AB", "", "May 2005-Present")
#v(-15pt)
#set text(size: 10pt)
- Member of the Canadian Junior National Team (2015),
- Multiple Time National Medalist (2016-2019),
#v(-5pt)
#set text(size: 11pt)
#EXP("YouTube Tutorials", text(style: "italic", "September 2020-Present"), "", "")
#v(-10pt)
#set text(size: 10pt)
- Creating tutorials on programming, Linux and productivity.,
- With Over 450,000 views.
