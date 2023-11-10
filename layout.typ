#set list( tight: true, marker: "→")
#set page(
    paper: "us-letter",
    margin: (x: auto, y: 30pt),
    footer: align(center)[_References available upon request._]
)
#set text(font: "Nimbus Sans")
#set par(
  justify: true,
  leading: 0.52em,
)

#let special-color = rgb("#009688")
#let res-name(body) = [
    #set text(font: "URW Gothic", size: 15pt)
    #heading(upper(body))
]
#let contact(symbol, body) = [
    #set text(size: 10pt)
    #text(special-color)[ / #text(size: 8pt)[#symbol]:  *#body*]
]
#let heading(body) = [
    #v(-10pt)
    #set text(font: "URW Gothic", size: 15pt)
    #upper(text(special-color, weight: "bold")[#body])
    #v(-12pt)
    #line(length: 100%, stroke: special-color)
    #v(-10pt)

]
#let subheading(body) = [
    #text(weight: "bold")[#body]
]
#let EXP(company_or_topic, loc, title, dates) = [
    #table(
	columns: (12fr, auto),
	align: (col, row) =>
           if col == 0 { left }
           else { right },
	row-gutter: 4pt,
	inset: 0pt,
	stroke: none,
	[*#company_or_topic*], [#loc],
	[#(text(style: "italic")[#title])], [#(text(style: "italic")[#dates])]
    )[
    ]
    
]
#let job(task, url, body) = [
    #set text(size: 10pt)
    #v(-21pt)
    #block(
	inset: 10pt,
    )[
	#subheading()[#task] #if url.len() > 0 [
	    #link(url)[#text(size: 10pt, special-color)[]]
	]
	- #body
    ]
]
#let project_subheading(url, name, body) = [
    #subheading(text[#name])
    #text(special-color, link(url)[#text(size: 10pt, special-color)[]])\
    #body\
]
#let skill_set(title, body) = [
    #subheading(title)\
    #body\
]
