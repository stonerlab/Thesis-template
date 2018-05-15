%
% 
% Adapted from Harish Bhanderi
% Version 1.0 released 15/07/2002
%-------------------------- identification ---------------------
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Classes/myThesis}[]
%-------------------------- initial code -----------------------

%If you want to use a Report style document then uncomment the following 3 lines and comment the below 8 book style lines:
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
%\ProcessOptions\relax
%%\LoadClass[a4paper]{report}
%\ifx\pdfoutput\undefined
%   \LoadClass[dvips, a4paper]{report}
%\else
%   \LoadClass[pdftex, a4paper]{report}
%\fi
%%Bibliography
%%uncomment next line to change bibliography name to references for Report document class
%\renewcommand{\refname}{References}

%If you want to use a Book style document then uncomment the following 3 lines and comment the above 8 report style lines:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\ifx\pdfoutput\undefined
   \LoadClass[dvips, a4paper]{book}
\else
   \LoadClass[pdftex, a4paper]{book}
\fi

%\usepackage[pagebackref=true]{hyperref} %define hyperref package last
%\hypersetup{bookmarksopen=true, 
%colorlinks=true, linkcolor=blue, citecolor=blue, filecolor=blue, urlcolor=blue,
%%bookmarksopenlevel=2 %bookmarks pane opens to level 2
%pdfstartview={FitH}}    


\usepackage{textcomp} %solves \texteuro problem in bib
%\usepackage[T1]{fontenc}
\usepackage[ansinew]{inputenc}
\usepackage{lmodern} %font

%% Math Packages %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{amsfonts}

%% Packages for Graphics & Figures %%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[pdftex]{graphicx}


\usepackage{fancyhdr}
\usepackage{eucal}

%% Language %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage[UKenglish]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
%\usepackage[square, sort, numbers, authoryear,sort&compress]{natbib}
\usepackage{ifthen}
\usepackage{ifpdf}
\usepackage{subfigure}

%% Other Packages %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{color}
\usepackage{upgreek} %upright greek letters
\usepackage{physics}
\usepackage[square,comma,sort&compress]{natbib}
\usepackage[colorinlistoftodos]{todonotes}
\usepackage{url}
\renewcommand{\UrlFont}{\small\tt}
\usepackage[nodayofweek]{datetime}
\newdateformat{monthdate}{\monthname[\THEMONTH], \THEYEAR}
\newdateformat{yeardate}{ \THEYEAR}



%Bibliography
%uncomment next line to change bibliography name to references for Book document class
\renewcommand{\bibname}{References}
% note that this doesn't do much if you later define another bibliography style 


% Nomenclature
%\usepackage{nomencl}
%\makeglossary
%\renewcommand\nomgroup[1]{%
%  \ifthenelse{\equal{#1}{A}}{%
%   \item[\textbf{Roman Symbols}] }{%             A - Roman
%    \ifthenelse{\equal{#1}{G}}{%
%     \item[\textbf{Greek Symbols}]}{%             G - Greek
%      \ifthenelse{\equal{#1}{R}}{%
%        \item[\textbf{Superscripts}]}{%              R - Superscripts
%          \ifthenelse{\equal{#1}{S}}{%
%           \item[\textbf{Subscripts}]}{{%             S - Subscripts
%	    \ifthenelse{\equal{#1}{X}}{%
%	     \item[\textbf{Other Symbols}]}{{%    X - Other Symbols
%	    \ifthenelse{\equal{#1}{Z}}{%
%	     \item[\textbf{Acronyms}]}%              Z - Acronyms
%              			{{}}}}}}}}}}

\ifpdf
%-->
%--> Google.com search "hyperref options"
%--> 
%--> http://www.ai.mit.edu/lab/sysadmin/latex/documentation/latex/hyperref/manual.pdf
%--> http://www.chemie.unibas.ch/~vogtp/LaTeX2PDFLaTeX.pdf 
%--> http://www.uni-giessen.de/partosch/eurotex99/ oberdiek/print/sli4a4col.pdf
%--> http://me.in-berlin.de/~miwie/tex-refs/html/latex-packages.html
%-->
    \usepackage[ pdftex, plainpages = false, pdfpagelabels, 
                 pdfpagelayout = useoutlines,
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 %pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = blue,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref} 

    \DeclareGraphicsExtensions{.png, .jpg, .pdf}
    \usepackage[pdftex]{graphicx}
    \pdfcompresslevel=9
    \graphicspath{{ThesisFigs/PNG/}{ThesisFigs/PDF/}{ThesisFigs/}}
\else
    \usepackage[ dvips, 
                 bookmarks,
                 bookmarksopen = true,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 %pagebackref,
                 colorlinks = true,
                 linkcolor = blue,
                 urlcolor  = blue,
                 citecolor = blue,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    \DeclareGraphicsExtensions{.eps, .ps}
    \usepackage{epsfig}
    \usepackage{graphicx}
    \graphicspath{{ThesisFigs/EPS/}{ThesisFigs/}}
\fi

%define the page size including an offset for binding
%\setlength{\topmargin}{0.0in}
%\setlength{\oddsidemargin}{0in}
%\setlength{\evensidemargin}{0in}
%\setlength{\textheight}{700pt}
%\setlength{\textwidth}{500pt}


%A4 settings
\ifpdf
   \pdfpageheight=350mm
   \pdfpagewidth=260mm
\else
   \setlength{\paperheight}{350mm}
   \setlength{\paperwidth}{260mm}
\fi

%\ifpdf
%   \pdfpageheight=350mm
%   \pdfpagewidth=260mm
%\else
%   \setlength{\paperheight}{297mm}
%   \setlength{\paperwidth}{210mm}
%\fi


\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}

%\setlength{\evensidemargin}{1.0cm}
%\setlength{\oddsidemargin}{-0.54cm}
%\setlength{\topmargin}{1mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
%\setlength{\textheight}{21.84cm}
%\setlength{\textwidth}{16.5cm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}

%Below are the original formats...put back in when you get a chance.



\setlength{\evensidemargin}{1.96cm}
%\setlength{\oddsidemargin}{-0.54cm}
\setlength{\topmargin}{1mm}
\setlength{\headheight}{1.36cm}
\setlength{\headsep}{1.00cm}
\setlength{\textheight}{20.84cm}
\setlength{\textwidth}{14.5cm}
\setlength{\marginparsep}{1mm}
\setlength{\marginparwidth}{3cm}
\setlength{\footskip}{2.36cm}


\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\MakeUppercase{\thechapter. #1 }}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\fancyhf{}
\fancyhead[RO]{\bfseries\rightmark}
\fancyhead[LE]{\bfseries\leftmark}\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{0.5pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}

% START CUSTOM

%	CONTENTS HEADER

\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \reset@font
%    \hrule                                        % horizontal line
    \vspace{5pt}%                                 % add vertical space
    \interlinepenalty\@M
    \Huge \scshape #1\par                         % chapter title
    \vspace{5pt}%                                 % add vertical space
%    \hrule                                        % horizontal line
    \nobreak
    \vskip 40\p@
  }}
%  
%	CHAPTER HEADER
\newcommand{\gargantuan}{\fontsize{45}{50}\selectfont}
\newcommand{\Megarule}{\rule{\linewidth}{0.5mm}}

\renewcommand{\@makechapterhead}[1]{%
  \vspace*{0\p@}%
  {\parindent \z@ \raggedright \reset@font
%    \hrule                                    % horizontal line
		\rule{\textwidth}{0.5mm}
    \vspace{5pt}%                                 % add vertical space
    \ifnum \c@secnumdepth >\m@ne
        \gargantuan {\scshape\@chapapp\space \thechapter} % Chapter number
        \par\nobreak
        \vskip 20\p@
    \fi
    
    \interlinepenalty\@M
    \vspace{5pt}%                                 % add vertical space
    \hrule                                   % horizontal rule
    \rule{\textwidth}{0.5mm} \\
    \vspace{40pt}
    \huge #1\par                         % chapter title
    \nobreak
    \vskip 40\p@
    \newpage
  }}
  
% END CUSTOM

\newcommand{\submittedtext}{{Submitted in accordance with the requirements for the degree of}}
%
%
% DECLARATIONS
%
% These macros are used to declare arguments needed for the
% construction of the title page and other preamble.

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}
% Defining the logo
\def\logo#1{\gdef\@logo{#1}}
% Defining the departmental logo
\def\deptlogo#1{\gdef\@deptlogo{#1}}


% These macros define an environment for front matter that is always 
% single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

%%define title page layout
%\renewcommand{\maketitle}{%
%\begin{alwayssingle}
%    \renewcommand{\footnotesize}{\small}
%    \renewcommand{\footnoterule}{\relax}
%    \thispagestyle{empty}
%%  \null\vfill
%  \begin{center}
%    { \Huge {\bfseries {\@title}} \par}
%{\large \vspace*{35mm} {{\@crest} \par} \vspace*{25mm}}
%    {{\Large \@author} \par}
%{\large \vspace*{1ex}
%    {{\@collegeordept} \par}
%\vspace*{1ex}
%    {{\@university} \par}
%\vspace*{25mm}
%    {{\submittedtext} \par}
%\vspace*{1ex}
%    {\it {\@degree} \par}
%\vspace*{2ex}
%    {\@degreedate}}
%  \end{center}
%  \null\vfill
%\end{alwayssingle}}

%CUSTOM title page layout
\renewcommand{\maketitle}{%
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
%  \null\vfill
\begin{picture}({50,25})
\put(-75,75){\hbox{\@deptlogo}}
\end{picture}
\begin{picture}({50,25})
\put(210,75){\hbox{\@logo}}
\end{picture}
  \begin{center}
    { \Huge {\bfseries {\@title}} \par}
{\large \vspace*{20mm} {{\@crest} \par} \vspace*{20mm}}
    {{\Large \@author} \par}
{\large \vspace*{1ex}
    {{\@university} \par}
\vspace*{1ex}
    {{\@collegeordept} \par}
\vspace*{20mm}
    {{\submittedtext} \par}
\vspace*{1ex}
    {\it {\@degree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}
  \null\vfill
\end{alwayssingle}}

% DEDICATION
%
% The dedication environment makes sure the dedication gets its
% own page and is set out in verse format.

\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{plain}
  \begin{center}
  \vspace*{1.5cm}
  {\LARGE }
  \end{center}
  \vspace{0.5cm}
  \begin{quote} \begin{center}}
{\end{center} \end{quote} \end{alwayssingle}}

% Abbreviations
%
% Abbreviations used throughout the thesis.

\newenvironment{abbreviations}
{
\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Abbreviations}
\end{center}
\vspace{0.7cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% Abbreviations
%
% Abbreviations used throughout the thesis.

\newenvironment{Common_Symbols}
{
\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Common Symbols}
\end{center}
\vspace{0.7cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% IPSTATEMENT
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{ipstatement}
{\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Intellectual Property Statement}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% ACKNOWLEDGEMENTS
%
% The acknowledgements environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgements
% themselves appear in a quote environment, i.e. tabbed in at both sides, and
% on its own page.

\newenvironment{acknowledgements}
{\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{-2.0cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

% The acknowledgementslong environment puts a large, bold, centered 
% "Acknowledgements" label at the top of the page. The acknowledgement itself 
% does not appears in a quote environment so you can get more in.

\newenvironment{acknowledgementslong}
{\pagestyle{plain}
\begin{alwayssingle}
\begin{center}
\vspace*{1.5cm}
{\Large \bfseries Acknowledgements}
\end{center}
\vspace{0.5cm}\begin{quote}}
{\end{quote}\end{alwayssingle}}

%ABSTRACT
%
%The abstract environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself appears in a quote environment,
%i.e. tabbed in at both sides, and on its own page.

\newenvironment{abstracts} {\begin{alwayssingle} \pagestyle{plain}
  \begin{center}
%  \vspace*{1.5cm}
\vspace*{-2.0cm}
  {\Large \bfseries  Abstract}
  \end{center}
  \vspace{0.5cm}
   \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractlong environment puts a large, bold, centered "Abstract" label at
%the top of the page. The abstract itself does not appears in a quote
%environment so you can get more in.

\newenvironment{abstractslong} {\begin{alwayssingle} \pagestyle{empty}
  \begin{center}
  \vspace*{1.5cm}
  {\Large \bfseries  Abstract}
  \end{center}
  \vspace{0.5cm} \begin{quote}}
{\end{quote}\end{alwayssingle}}

%The abstractseparate environment is for running of a page with the abstract
%on including title and author etc as required to be handed in separately

\newenvironment{abstractseparate} {\begin{alwayssingle} \pagestyle{empty}
  \vspace*{-1in}
 \begin{center}
    { \Large {\bfseries {\@title}} \par}
    {{\large \vspace*{1ex} \@author} \par}
{\large \vspace*{1ex}
    {{\@collegeordept} \par}
    {{\@university} \par}
\vspace*{1ex}
    {{\it \submittedtext} \par}
    {\it {\@degree} \par}
\vspace*{2ex}
    {\@degreedate}}
  \end{center}}
{\end{alwayssingle}}

%ROMANPAGES
%
% The romanpages environment set the page numbering to lowercase roman one
% for the contents and figures lists. It also resets
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

\hbadness=10000  %when to report badness errors
\hfuzz=50pt  %when to report overfull error
