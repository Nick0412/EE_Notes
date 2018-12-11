\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}
\LoadClass{article}

\usepackage{geometry}
\usepackage{xcolor}
\usepackage{layout}
\usepackage[calcwidth]{titlesec}
\usepackage{anyfontsize}

\geometry{
	letterpaper,
	left=2in,
	right=1in,
	marginparwidth=1.5in,
	marginparsep=.25in
}
\setlength\parindent{0pt}

\newlength{\mylength}
\setlength{\mylength}{\textwidth}
\addtolength{\mylength}{1in}

\newcommand{\stitle}[1]{{\vspace*{10pt} \color[HTML]{156EC7}\fontsize{18}{22}\selectfont\bfseries #1 \vspace*{10pt} }\\}

\titleformat{\section}
	{\fontsize{75}{90}\selectfont\bfseries}
	% {\normalfont\Huge\bfseries} % format
	{\llap{\hspace*{-1in}\thesection\hspace*{.25in}}} % label
	{0pt} % sep
	{} % before code
	[] % after code

\titleformat{\subsection}
	{\fontsize{40}{48}\selectfont\bfseries}%
	{} %
	{0pt}%
	{\llap{\hspace*{-1in}\thesubsection\hspace*{.25in}}}%
	[\vspace*{20pt}]%

\titleformat{\subsubsection}
	{\fontsize{20}{24}\selectfont\bfseries}%
	{}%
	{0pt}%
	{\makebox[\linewidth][r]{\color[HTML]{156EC7}\rule{\mylength}{3pt}} \\ \llap{\hspace*{-1in}\thesubsubsection\hspace*{.25in}}}%
	[] %



