\LoadClass[serif, pdftex]{beamer}

% Packages
\usepackage{tikz}
\usepackage{framed}
\usepackage{amssymb, amsmath, amsthm, graphicx}
\usepackage{braket}
\usepackage{physics}
%\usepackage{kotex}
\usepackage{xcolor}

\newcommand\HUGE{\@setfontsize\Huge{38}{47}}
\usefonttheme{structuresmallcapsserif}

\theoremstyle{definition}

% Colors
\definecolor{pureblack}{HTML}{000000}
\definecolor{black}{HTML}{2E282A}
\definecolor{darkgray}{HTML}{332d2f}
\definecolor{gray}{HTML}{A6A2A4}
\definecolor{red}{HTML}{CD5334}
\definecolor{green}{HTML}{76CD34}
\definecolor{cyan}{HTML}{17BEBB}
\definecolor{orange}{HTML}{EDB88B}
\definecolor{white}{HTML}{FFFFFF}

\setbeamercolor{background canvas}{bg=black}

\setbeamercolor{title}{fg=white}
\setbeamerfont{title}{size=\Large}
\setbeamercolor{author}{fg=white}
\setbeamerfont{author}{size=\normalsize}

\setbeamercolor{item}{fg=red}
\setbeamercolor{itemize/enumerate body}{fg=white}

\setbeamercolor{normal text}{fg=white}
\setbeamercolor{section in toc}{fg=white}
\setbeamercolor{subsection in toc}{fg=white}
\setbeamercolor{section in toc shaded}{fg=pureblack}
\setbeamercolor{subsection in toc shaded}{fg=pureblack}
\setbeamertemplate{section in toc}[sections numbered]
\setbeamertemplate{subsection in toc}[subsections numbered]

% Highlighting

\let\oldtextbf\textbf
\renewcommand{\textbf}[1]{\textcolor{orange}{\oldtextbf{#1}}}

\newcommand\titlesymbol[1]{
	\setlength{\fboxsep}{1em}
	\setbeamertemplate{title page}{
		\vskip 5em 
		\begin{center}
			\fcolorbox{white}{black}{\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle}
		\end{center}

		\vskip 2em
		\begin{center}
			\usebeamerfont{author} \usebeamercolor[fg]{author}\insertauthor 		
		\end{center}


		\vskip 4em
		\begin{center}
			\color{gray}{\Huge $#1$}
		\end{center}
	}
}


\setbeamertemplate{frametitle}
{
	\vskip 4mm
	\color{white}\Large{\insertframetitle}
	\vskip 2mm
	\hrule height 1pt \hfill
}

\AtBeginSection[]{
	\frame{\tableofcontents[currentsection]}
}

% Environments
\setbeamertemplate{blocks}[rounded][shadow=false]

\AtBeginEnvironment{theorem}{
	\setbeamercolor{block title}{fg=white, bg=red!30!black}
	\setbeamercolor{block body}{bg=red!10!black}
}

\AtBeginEnvironment{definition}{
	\setbeamercolor{block title}{fg=white, bg=green!30!black}
	\setbeamercolor{block body}{bg=green!10!black}
}

\renewcommand{\qed}{\hfill$\blacksquare$}
\AtBeginEnvironment{proof}{
	\setbeamercolor{block title}{fg=white, bg=cyan!30!black}
	\setbeamercolor{block body}{bg=cyan!10!black}
}

\makeatletter
\newenvironment<>{pfnotend}[1][\proofname]{%
    \par
    \def\insertproofname{#1\@addpunct{.}}%
    \usebeamertemplate{proof begin}#2}
  {\usebeamertemplate{proof end}}
\makeatother

\AtBeginEnvironment{pfnotend}{
	\setbeamercolor{block title}{fg=white, bg=cyan!30!black}
	\setbeamercolor{block body}{bg=cyan!10!black}
}

