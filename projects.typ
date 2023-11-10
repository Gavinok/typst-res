#import "layout.typ": project_subheading
#let project(url, name, language, body) = {
    (
	url: url,
	name: name,
	language: language,
	body: body
    )
}
#let project_to_text(project) = {
    project_subheading(project.url, project.name + " (" + project.language + ")", project.body)
}
#let is_desired_project(desired_languages, project) = {
    desired_languages.map(upper).contains(upper(project.language))
}
#let projects = (
    project("https://github.com/Gavinok/scripts", "Automation Scripts", "POSIX Shell")[
	A collection of POSIX Shell Scripts for automating my life and
	improving my productivity. These are probably my most popular
	side projects.
    ]
    ,project("https://github.com/Gavinok/RL_Encoding", "Run-length encoding", "C")[
	A C implementation of the Run-length encoding (RLE) lossless
	data compression technique.
    ]
    ,project("https://github.com/Gavinok/StrokeMonitor", "StrokeMonitor", "C++")[
	Embedded stroke rate, speed, and distance monitor for canoes
	and kayaks.
    ]
    ,project("https://github.com/Gavinok/Filesystem-Emu", "Filesystem-Emu", "Java")[
	An emulation of a FAT-based filesystem in Java.  Introduced me
	to the foundations of Object Oriented Programming.
    ]
    ,project("https://github.com/Gavinok/html2csv", "HTML to CSV", "Python")[
	A python script that converts HTML5 tables into a CSV.
	Introduced me to text parsing with regex as well as python
	programming.
    ]
    ,project("https://github.com/Gavinok/YALL", "YALL Scheme Interpreter", "C++")[
	YALL is a simple and extensible Scheme (lisp) dialect written
	in C++
    ]
)
