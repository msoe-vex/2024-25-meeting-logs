% Engineering notebook format class
% Created by Andrew Kempen (cleaned and optimized)

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{engineeringNotebook}[Format class for engineering notebooks]

\LoadClass[12pt]{article}

% Core packages
\RequirePackage[utf8]{inputenc} % Handles UTF-8 encoding
\RequirePackage[T1]{fontenc} % Modern font encoding
\RequirePackage[english]{babel} % Language handling
\RequirePackage[letterpaper, margin=1in]{geometry} % Page layout

% Fonts and styling
\RequirePackage{newtxtext} % Times New Roman font


% Colors and hyperlinks
\RequirePackage[dvipsnames, svgnames, x11names, table, xcdraw]{xcolor}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    breaklinks=true,
    urlcolor=Teal,
    linkcolor=Teal,
    linktoc=page
}

% Additional utilities
\RequirePackage{graphicx} % Image inclusion
\RequirePackage{float} % Precise figure/table placement
\RequirePackage{caption} % Improved captions
\RequirePackage{amsmath} % Math environments
\RequirePackage{minted} % Code highlighting
\RequirePackage{fancyhdr} % Custom headers/footers
\RequirePackage{enumitem} % Custom lists
\RequirePackage{titlesec} % Section formatting
\RequirePackage{listings} % Code listings
\RequirePackage{subfiles} % Modular documents
\RequirePackage{pdfpages} % Include PDFs
\RequirePackage{pgffor}  % Package that allows iteration in LaTeX


% Color definitions for code listings
\definecolor{dkgreen}{rgb}{0, 0.6, 0}
\definecolor{gray}{rgb}{0.5, 0.5, 0.5}
\definecolor{mauve}{rgb}{0.58, 0, 0.82}

% Listings settings
\lstset{
    frame=tb,
    language=C++,
    aboveskip=3mm,
    belowskip=3mm,
    showstringspaces=false,
    columns=flexible,
    basicstyle={\small\ttfamily},
    keywordstyle=\color{blue},
    commentstyle=\color{dkgreen},
    stringstyle=\color{mauve},
    breaklines=true,
    breakatwhitespace=true,
    tabsize=3
}

% Graphics settings
\setkeys{Gin}{width=\textwidth, height=250px, keepaspectratio}

% Fancyhdr setup
\fancyhf{}
\lhead{\leftmark}
\rfoot{\thepage}
\setlength{\headheight}{15pt}
\pagestyle{fancy}

% Section and subsection formatting
\titleformat{\section}{\bfseries\fontsize{16pt}{12}\selectfont}{\thesection}{1em}{}
\titlespacing\section{0pt}{0pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titleformat{\subsection}{\fontsize{14pt}{12}\selectfont}{\thesubsection}{1em}{}
\titlespacing\subsection{0pt}{6pt plus 4pt minus 2pt}{-4pt plus 2pt minus 2pt}
\titleformat{\subsubsection}{\bfseries\fontsize{12pt}{12}\selectfont}{}{0em}{}
\titlespacing\subsubsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

\setcounter{secnumdepth}{0} 

% Paragraph spacing
\setlength\parskip{1em plus 0.1em minus 0.2em}

% Custom commands and utilities
\newcommand{\fakesubsection}[1]{%
  \par\refstepcounter{subsection}%
  \subsectionmark{#1}%
  \addcontentsline{toc}{subsection}{\protect\numberline{\thesubsection}#1}%
}

\newcommand{\addpresentation}[2]{%
    \fakesubsection{#1 - #2}%
    \includepdf[pages=-, nup=1x2, delta=0 1cm, frame, pagecommand={\pagestyle{fancy}}, width=\textwidth]{images/presentations/#2.pdf}%
}

% Title page setup
\renewcommand\maketitle{%
    \graphicspath{{logos/}{../logos/}}
    \vfill
    \begin{center}
        \includegraphics[width=300px]{RR Logo Transparent.png}\\
        \vspace{1cm}
        \Huge{\textbf{\@title}} \\[0.5cm]
        \large{\textbf{\subtitle}}
    \end{center}
    
    \begin{center}
        \includegraphics[height=80px]{vexu.png} \hfill
        \includegraphics[height=80px]{MSOE Robotics Logo Transparent.png} \hfill
        \includegraphics[height=80px]{msoe.png}
    \end{center}
    \thispagestyle{empty}
    \newpage
    \setcounter{page}{1}
}

% Subtitle handling
\newcommand{\subtitle}[1]{\def\subtitle{#1}}

% Timestamp footer
\newcommand{\timestamp}[3]{%
\lfoot{Contributor(s): #1 - Timestamp: #2}
\noindent
\small{\textbf{Timestamp:} #2 - #1\\
\textbf{Attending:} #3}
}

% Force figure/table placement
\makeatletter
\renewcommand*{\fps@figure}{H}
\renewcommand*{\fps@table}{H}
\g@addto@macro\@floatboxreset\centering
\makeatother
