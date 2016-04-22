%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% The original template was downloaded from:
% http://www.latextemplates.com
%
% The current version of the class file borrows heavily from the one available
% on latextemplates.com but has been modified to meet the needs of those trying
% to create a report for presentation in BITS Pilani.
%
% This class file defines the structure and design of the template.
%
% There is one part that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the variables.tex file.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com. Later modified by Darshit Shah
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%-------------------------------------------------------------------------------
% Base Class Definition
%-------------------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
%-------------------------------------------------------------------------------

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}} % New command to make the lines in the title page

\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}

%-------------------------------------------------------------------------------
% SPACING RULES
%-------------------------------------------------------------------------------
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% MARGINS
%-------------------------------------------------------------------------------
\usepackage{vmargin}
\setmarginsrb  { 1.0in}  % left margin
               { 0.6in}  % top margin
               { 1.0in}  % right margin
               { 0.8in}  % bottom margin
               {  20pt}  % head height
               {0.25in}  % head sep
               {   9pt}  % foot height
               { 0.3in}  % foot sep
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% DECLARATION OF AUTHORSHIP
%
% Use the \Declaration command to print the Declaration of Authorship page
%-------------------------------------------------------------------------------
\newcommand\Declaration{
    \btypeout{Declaration of Authorship}
    \addtotoc{Declaration of Authorship}
    \addtocontents{toc}{\vspace{1em}} % Add gap in the Contents, for aesthetics
    \thispagestyle{plain}
    \null\vfil
    \begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
    {\normalsize
I, \authornames, declare that this \doctype{} titled, `\ttitle' and the work
presented in it are my own. I confirm that:

\begin{itemize}
    \item[\tiny{$\blacksquare$}] This work was done wholly or mainly while in
        candidature for a research degree at this University.
    \item[\tiny{$\blacksquare$}] Where any part of this thesis has previously
        been submitted for a degree or any other qualification at this
        University or any other institution, this has been clearly stated.
    \item[\tiny{$\blacksquare$}] Where I have consulted the published work of
        others, this is always clearly attributed.
    \item[\tiny{$\blacksquare$}] Where I have quoted from the work of others,
        the source is always given. With the exception of such quotations, this
        thesis is entirely my own work.
    \item[\tiny{$\blacksquare$}] I have acknowledged all main sources of help.
    \item[\tiny{$\blacksquare$}] Where the thesis is based on work done by
        myself jointly with others, I have made clear exactly what was done by
        others and what I have contributed myself.\\
\end{itemize}

Signed:\\
\rule[1em]{25em}{0.5pt} % This prints a line for the signature

Date:\\
\rule[1em]{25em}{0.5pt} % This prints a line to write the date
    }

    \vfil\vfil\null
    \clearpage % Start a new page
}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% CERTIFICATE PAGE
%
% Use the \Certificate command to print the Certificate in the document
%-------------------------------------------------------------------------------
\newcommand\Certificate{
    \btypeout{Certificate}
    \addtotoc{Certificate}
    \addtocontents{toc}{\vspace{1em}}
    \thispagestyle{plain}
    \null\vfil
    \begin{center}{\huge\bf Certificate\par}\end{center}
    {\normalsize
This is to certify that the thesis entitled, ``\emph{\ttitle}'' and submitted by
\underline{\authornames} ID No. \underline{\idnum} in partial fulfillment of the
requirements of \ccode{} \cname{} embodies the work done by him under my
supervision.\\[2.5cm]
\begin{minipage}{0.5\textwidth}
    \begin{flushleft} \large
        \vspace{2cm}
        \rule[0.5em]{13em}{0.5pt}\\
        \emph{Supervisor}\\
        \supname\\
        \suppos,\\
        \supinst\\
        Date:\\
    \end{flushleft}
\end{minipage}
\begin{minipage}{0.5\textwidth}
    \begin{flushleft} \large
        \vspace{2cm}
        \rule[0.5em]{13em}{0.5pt}\\
        \emph{Co-Supervisor} \\
        \cosupname\\
        \cosuppos,\\
        \cosupinst\\
        Date:\\
    \end{flushleft}
\end{minipage}\\[3cm]
    }

    \vfil\vfil\null
    \clearpage
}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% QUOTATION PAGE
%
% Use the command \Quotation{Quote}{Author} to create a single page with a
% quotation in the document.
%-------------------------------------------------------------------------------
\newcommand\Quotation[2]{
    \btypeout{Quotation}
    \pagestyle{empty} % No headers or footers for the following pages

    \null\vfill % Add some space to move the quote down the page a bit

    \textit{``#1''}

    \begin{flushright}
        #2
    \end{flushright}

    % Add some space at the bottom to position the quote just right
    \vfill\vfill\vfill\vfill\vfill\vfill\null

    \clearpage % Start a new page
}
%-------------------------------------------------------------------------------

\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace,mathtools}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{enumitem}
\usepackage{listings}
\usepackage{lstpatch}
\usepackage{microtype}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={red},urlcolor={black},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}

\usepackage[toc]{glossaries}
\glossarystyle{long}
\makeglossaries
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\pdfstringdefDisableCommands{
   \let\\\space
}

\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\cosupervisor}[1]{\def\cosupname{#1}}
\newcommand*{\documenttype}[1]{\def\doctype{#1}}
\newcommand*{\coursecode}[1]{\def\ccode{#1}}
\newcommand*{\coursename}[1]{\def\cname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\IDNumber}[1]{\def\idnum{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\supervisorposition}[1]{\def\suppos{#1}}
\newcommand*{\supervisorinstitute}[1]{\def\supinst{#1}}
\newcommand*{\cosupervisorposition}[1]{\def\cosuppos{#1}}
\newcommand*{\cosupervisorinstitute}[1]{\def\cosupinst{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}


%-------------------------------------------------------------------------------
% TITLE PAGE
%
% Redefine the \maketitle command to create a custom title page
% ------------------------------------------------------------------------------
\renewcommand\maketitle{
    \btypeout{Title Page}

    % PDF meta-data
    \hypersetup{pdftitle={\ttitle}}
    \hypersetup{pdfsubject=\subjectname}
    \hypersetup{pdfauthor=\authornames}
    \hypersetup{pdfkeywords=\keywordnames}

    \begin{titlepage}
        \begin{center}

        %\textsc{\LARGE \univname}\\[1.5cm] % University name
        %\textsc{\Large \doctype}\\[0.5cm] % Thesis type

       \HRule \\[0.4cm] % Horizontal line
        {\huge \bfseries \ttitle}\\[0.4cm] % Thesis title
        \HRule \\[1.5cm] % Horizontal line

		\textsc{\Large \doctype}\\[0.5cm] % Thesis type
		
		\large \textit{Submitted in partial fulfillment of the
        requirements of\\\ccode{} \cname}\\[1cm] % University requirement text
        
        \begin{center}
            \emph{By}\\[0.3cm]
            \authornames\\
            ID No. \idnum\\
            \vspace{1cm}
            \emph{Under the supervision of:} \\[0.3cm]
            \supname \\ % The supervisor's name
            \& \\
            \cosupname\\[1cm] % The co-supervisor's name
        \end{center}

        \includegraphics{Figures/bits-logo.pdf} % University/department logo
       \\[1cm]
        \UNIVNAME\\
        {\large \today}\\[4cm] % Date
        \vfill
    \end{center}

\end{titlepage}
}
% ------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% ABSTRACT PAGE DESIGN
%-------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \addtotoc{Abstract}
  \addtocontents{toc}{\vspace{1em}}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par} % University name in capitals
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \degreename\par} % Degree name
    \bigskip
    {\normalsize\bf \@title \par} % Thesis title
    \medskip
    {\normalsize by \authornames \par} % Author name
    \bigskip
  \end{center}
}
{\clearpage}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% ACKNOWLEDGEMENTS
%-------------------------------------------------------------------------------
\newenvironment{acknowledgements}
{
    \btypeout{Acknowledgements}
    \addtotoc{Acknowledgements}
    \addtocontents{toc}{\vspace{1em}}
    \setstretch{1.3}
    \thispagestyle{plain}
    \begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
    \normalsize
}
{
    \vfil\vfil\null
    \clearpage
}
%-------------------------------------------------------------------------------

%-------------------------------------------------------------------------------
% DEDICATORY
%-------------------------------------------------------------------------------
\newcommand\Dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
%-------------------------------------------------------------------------------

\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{3}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\addtotoc{Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\addtotoc{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{List of Tables}
\addtotoc{List of Tables}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Nomenclature}
\newcommand\listofnomenclature[0]{
\printglossaries
    \cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput
