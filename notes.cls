\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{notes}
\LoadClass{article}

% packages needed
\usepackage{geometry}
\usepackage{xcolor}
\usepackage{layout}
\usepackage[calcwidth]{titlesec}
\usepackage{anyfontsize}
\usepackage{letltxmacro}
\usepackage{array}

\geometry{
	letterpaper,
	left=2in,
	right=1in,
	marginparwidth=1.5in,
	marginparsep=.25in
}

\definecolor{frameColor}{HTML}{C0E8FF}
\definecolor{borderColor}{HTML}{0090FF}
\definecolor{frameColor2}{HTML}{C3FFC1}
\definecolor{borderColor2}{HTML}{09AF03}
\definecolor{frameColor3}{HTML}{FFD8FA}
\definecolor{borderColor3}{HTML}{7B0082}
\definecolor{frameColor4}{HTML}{FFBF72}
\definecolor{borderColor4}{HTML}{C46E07}

\setlength\parindent{0pt}
\newlength{\mylength}
\setlength{\mylength}{\textwidth}
\addtolength{\mylength}{1in}
\setlength{\belowcaptionskip}{0pt}
\setlength{\abovecaptionskip}{0pt}
\setlength{\intextsep}{5pt}

\newlength{\sidelen}
\setlength{\sidelen}{.25in}
\addtolength{\sidelen}{10pt}

% Smaller head titles like a subsubsub section 
\newcommand{\stitle}[1]{{\vspace*{1ex} \color[HTML]{156EC7}\fontsize{18}{22}\selectfont\bfseries #1 \vspace*{1ex} }\\}
\renewcommand{\normalsize}{\fontsize{12}{14}\selectfont}

% title formatting sections
\titleformat{\section}
	{\fontsize{75}{90}\selectfont\bfseries}
	{\hspace{-2in}\makebox[2in]{\hfill \thesection \hspace{.25in}}} % label
	{0pt} % sep
	{} % before code
	[] % after code

\titleformat{\subsection}
	{\fontsize{40}{48}\selectfont\bfseries}%
	{\hspace{-2in}\makebox[2in]{\hfill \thesubsection \hspace{.25in}}} %
	{0pt}%
	{}%
	[]%

\titlespacing*{\subsection}{0pt}{0pt}{20pt}

\titleformat{\subsubsection}
	{\fontsize{20}{24}\selectfont\bfseries}%
	{\hspace{-2in}\makebox[2in]{\hfill \thesubsubsection \hspace{.25in}}}%
	{0pt}%
	{}%
	[]%

\titlespacing*{\subsubsection}{0pt}{0pt}{10pt}

\LetLtxMacro{\temp}{\subsubsection}
\renewcommand{\subsubsection}{\makebox[\linewidth][r]{\color[HTML]{156EC7}\rule{\mylength}{3pt}} \temp}

\newenvironment{circd} 
	{\begin{mdframed}[backgroundcolor=frameColor,linecolor=borderColor,linewidth=2pt,roundcorner=8pt,align=left]
	\vspace*{5px}}
	{\vspace*{5px}
	\end{mdframed}}
