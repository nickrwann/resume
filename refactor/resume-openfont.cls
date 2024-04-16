% Intro Options
\ProvidesClass{resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[left=.25cm, right=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/, BoldItalicFont=Lato-RegIta, BoldFont=Lato-Reg, ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase, Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Package Inclusions
\usepackage{titlesec}  % Required for modifying section and subsection formatting

% Section formatting configurations
\titlespacing*{\section}{0pt}{0pt}{-2.5pt}  % Control spacing around sections
\titlespacing*{\subsection}{0pt}{0pt}{0pt}  % Control spacing around subsections

% Custom commands for document styling
\newcommand{\namesection}[3]{%
  \centering{%
    \fontsize{25pt}{48pt}
    \fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #1 
    \fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #2
  } \\[5pt]
  \centering{%
    \color{headings}
    \fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3
  }
  \noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
  \vspace{-15pt}
}

\titleformat{\section}{%
  \color{headings}
  \scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{14pt}{24pt}\selectfont \raggedright\uppercase
}{}{0em}{}

\titleformat{\subsection}{%
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase
}{}{0em}{}

\newcommand{\sectiontitlerule}{
    \titlerule
    \vspace{5pt}
}

\newcommand{\runsubsection}[1]{%
  \color{subheadings}
  \fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont
}

\newcommand{\descript}[1]{%
  \color{subheadings}
  \raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont
}

\newcommand{\inlinedescript}[1]{%
  \textbf{\color{subheadings}#1}  % Example of inline descriptor without line break
}

\newcommand{\location}[1]{%
  \color{headings}
  \raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont
}

\newcommand{\project}[1]{%
  \textbf{--} \color{subheadings}
  \raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont #1 \normalfont
}

% Environments for structured content
\newenvironment{resumeSection}{
  \begin{minipage}[t]{1\textwidth}
}{
  \end{minipage}
  \vspace{-15pt}
}

\newenvironment{skilltable}{
    \vspace{-5pt}
    \begin{tabular}{@{}l l}
}{
    \end{tabular}
    \vspace{-5pt}
}

\newenvironment{tightemize}{%
  \vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt
}{
  \end{itemize}\vspace{-\topsep}
}

\newenvironment{patents_and_projects_section}{
}{
  \vspace{5pt}
}