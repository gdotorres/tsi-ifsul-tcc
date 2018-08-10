%==============================================================================
% Identificação
%==============================================================================
\def\currversion{3/5/2014}

\typeout{^^J^^J
--------------------------------------------------^^J
CLASSE textsi^^J
Formatação de Documentos LaTeX do TSI^^J
--------------------------------------------------^^J
Agradecimentos^^J
Marilton Aguiar, pela Classe de Formatação de Documentos LaTeX da UFPEL^^J
Rafael Krolow, pelo esqueleto de Template para o Documento LaTeX par o TSI^^J
--------------------------------------------------^^J
Desenvolvimento por Giovane de Oliveira Torres (ggiovaneotorres@gmail.com)^^J
--------------------------------------------------^^J
Versão: \currversion^^J
--------------------------------------------------^^J^^J}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{textsi}[\currversion]

%==============================================================================
% Declaração de opções
%==============================================================================

% Órgãos para o cabeçalho do título.

\newcommand{\ministerio}[1]{\gdef\@ministerio{#1}}
\ministerio{Minist{\'e}rio da Educa\c c{\~a}o}

\newcommand{\secretaria}[1]{\gdef\@secretaria{#1}}
\secretaria{Secretaria de Educa\c c{\~a}o Profissional e Tecnol{\'o}gica}

\newcommand{\instituto}[1]{\gdef\@instituto{#1}}
\instituto{Instituto Federal Sul-Rio-Grandense}

\newcommand{\campus}[1]{\gdef\@campus{#1}}
\campus{C{\^a}mpus Pelotas}

\newcommand{\thecurso}[1]{\gdef\@thecurso{#1}}
\thecurso{Curso Superior de Tecnologia em Sistemas para Internet}

\newcommand{\documento}[1]{\gdef\@documento{#1}}
\newcommand{\tipodocumento}[1]{\gdef\@tipodocumento{#1}}
\newcommand{\descricaodocumento}[1]{\gdef\@descricaodocumento{#1}}

% Para a folha de aprovação

\newcommand{\instituicaoadvisor}[1]{\gdef\@instituicaoadvisor{#1}}

\newcommand{\membroi}[1]{\gdef\@membroi{#1}}
\newcommand{\membroii}[1]{\gdef\@membroii{#1}}
\newcommand{\membroiii}[1]{\gdef\@membroiii{#1}}

\newcommand{\instituicaomembroi}[1]{\gdef\@instituicaomembroi{#1}}
\newcommand{\instituicaomembroii}[1]{\gdef\@instituicaomembroii{#1}}
\newcommand{\instituicaomembroiii}[1]{\gdef\@instituicaomembroiii{#1}}

% Para o texto

\newcommand{\source}[1]{\\ Fonte: #1}

% Opções

\DeclareOption{tcc}{
\documento{Trabalho de Conclus{\~a}o de Curso}
\tipodocumento{Trabalho de Conclus{\~a}o de Curso (\@nomecurso) -- \@unidade}
\descricaodocumento{Trabalho de Conclus{\~a}o de Curso apresentado como requisito parcial {\`a} obten\c c{\~a}o ao t{\'i}tulo de tecn{\'o}logo em Sistemas para Internet do Instituto Federal Sul-Rio-Grandense}
}

\newcommand{\capa}[1]{\gdef\@capa{#1}}
\DeclareOption{capa}{\capa{1}}

\newcommand{\nocipinfo}[1]{\gdef\@nocipinfo{#1}}
\DeclareOption{nocipinfo}{\nocipinfo{1}}

\DeclareOption{english}{\@englishtrue\OptionNotUsed}\newif\if@english
\DeclareOption{oneside}{\AtEndOfClass{\@twosidefalse}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\relax

%==============================================================================
% Herança da classe `report' e inclusão de pacotes e arquivos necessários
%==============================================================================
\LoadClass[12pt,a4paper,oneside]{report}

\RequirePackage[english,brazilian]{babel}
\RequirePackage{ulem}
\RequirePackage{lastpage}
\RequirePackage{indentfirst}
\RequirePackage{natbib}
\RequirePackage{chngcntr}
\RequirePackage{eso-pic}
\RequirePackage{color}
\RequirePackage{setspace}
\RequirePackage{geometry}

\geometry{top=3cm,right=2cm,left=3cm,bottom=2cm}

\definecolor{laranjaufpel}{rgb}{1,0.6,0}
\definecolor{verdeufpel}{rgb}{0.09,0.7,0.44}
\definecolor{azulufpel}{rgb}{0.07,0.49,0.72}
\definecolor{cinzaufpel}{rgb}{0.85,0.85,0.85}

%
% definições para textos em português
%
\@namedef{captionsbrazilian}{%
  \def\bibname{Refer{\^e}ncias}%
  \def\abstractname{Resumo}%
  \def\appendixname{Ap{\^e}ndice}%
  \def\contentsname{Sum{\'a}rio}%
  \def\listfigurename{Lista de Ilustra\c{c}{\~o}es}%
  \def\listtablename{Lista de Tabelas}%
  \def\figurename{Figura}%
  \def\tablename{Tabela}%
  \def\advisorname{Orientador}%
  \def\coadvisorname{Coorientador}%
  \def\collaboratorname{Colaborador}%
  \def\listabbrvname{Lista de Abreviaturas e Siglas}%
  \def\listsymbolname{Lista de S{\'\i}mbolos}%
  \def\annexname{Anexo}%
  \def\keywordsname{Palavras-chave}%
}

\@namedef{datebrazilian}{%
  \def\monthname{%
    \ifcase\month\or%
    janeiro\or fevereiro\or mar{\c{c}}o\or abril\or maio\or junho\or
    julho\or agosto\or setembro\or outubro\or novembro\or dezembro%
    \fi%
  }%
  \def\ei@date{\@publyear}%
  % \def\ei@date{\@publmonth\ de~\@publyear}%
}

%
% definições para textos em inglês
%
\@namedef{captionsenglish}{%
  \def\bibname{References}%
  \def\abstractname{Abstract}%
  \def\appendixname{Appendix}%
  \def\contentsname{Contents}%
  \def\listfigurename{List of Figures}%
  \def\listtablename{List of Tables}%
  \def\figurename{Figure}%
  \def\tablename{Table}%
  \def\advisorname{Advisor}%
  \def\coadvisorname{Coadvisor}%
  \def\collaboratorname{Collaborator}%
  \def\listabbrvname{List of Abbreviations and Acronyms}%
  \def\listsymbolname{List of Symbols}%
  \def\annexname{Annex}%
  \def\keywordsname{Keywords}%
}

\@namedef{dateenglish}{%
  \def\monthname{%
    \ifcase\month\or%
    January\or February\or March\or April\or May\or June\or July\or
    August\or September\or October\or November\or December%
    \fi%
  }%
  \def\ei@date{\@publyear}%
  % \def\ei@date{\@publmonth~\@publyear}%
}

\if@english%
\selectlanguage{english}%
\AtBeginDocument{\selectlanguage{english}}%
\fi

%==============================================================================
% O uso de fonte Arial, 12 pt, é mandatório
%==============================================================================
\renewcommand*\familydefault{\sfdefault}%
\renewcommand{\rmdefault}{phv}%
\renewcommand{\sfdefault}{phv}

% Definição do espaçamento de texto
\setlength{\baselineskip}{1.5cm}

%==============================================================================
% Numeração das páginas
%==============================================================================
\def\ps@texufpel{%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty%
  \def\@oddhead{\hspace*{\fill}{\small\thepage}}%
  \def\@evenhead{\hspace*{\fill}{\small\thepage}}%
} 

\pagestyle{empty}%
\let\ps@plain\ps@empty

%==============================================================================
% Definição de autor(es), orientador e co-orientador
%==============================================================================
\newcounter{ei@authorcount}
\renewcommand{\author}[2]{
        \addtocounter{ei@authorcount}{1}
        \expandafter\gdef\csname @author\alph{ei@authorcount}last\endcsname{#1}
        \expandafter\gdef\csname @author\alph{ei@authorcount}first\endcsname{#2}
        \expandafter\gdef\csname @author\alph{ei@authorcount}\endcsname{#2 #1}
}

\newcounter{ei@advisorcount}
\DeclareRobustCommand{\advisor}[3][]{
        \addtocounter{ei@advisorcount}{1}
        \expandafter\gdef\csname @advisor\alph{ei@advisorcount}last\endcsname{#2}
        \expandafter\gdef\csname @advisor\alph{ei@advisorcount}first\endcsname{#3}
        \expandafter\gdef\csname @advisor\alph{ei@advisorcount}\endcsname{#1~#3 #2}
}

\newcounter{ei@coadvisorcount}
\DeclareRobustCommand{\coadvisor}[3][]{
        \addtocounter{ei@coadvisorcount}{1}
        \expandafter\gdef\csname @coadvisor\alph{ei@coadvisorcount}last\endcsname{#2}
        \expandafter\gdef\csname @coadvisor\alph{ei@coadvisorcount}first\endcsname{#3}
        \expandafter\gdef\csname @coadvisor\alph{ei@coadvisorcount}\endcsname{#1~#3 #2}
}

\newcounter{ei@collaboratorcount}
\DeclareRobustCommand{\collaborator}[3][]{
        \addtocounter{ei@collaboratorcount}{1}
        \expandafter\gdef\csname @collaborator\alph{ei@collaboratorcount}last\endcsname{#2}
        \expandafter\gdef\csname @collaborator\alph{ei@collaboratorcount}first\endcsname{#3}
        \expandafter\gdef\csname @collaborator\alph{ei@collaboratorcount}\endcsname{#1~#3 #2}
}


%==============================================================================
% Definição das palavras-chave (máx. 10)
%==============================================================================
\newcounter{kwcounter}
\newcommand{\keyword}[1]{
        \addtocounter{kwcounter}{1}
        \expandafter\gdef\csname keyw\alph{kwcounter}\endcsname{#1}
}

\newcommand{\@cipkw}{%
        \@ifundefined{keywa}{}{1.~\expandafter\MakeUppercase\keywa\@. }%
        \@ifundefined{keywb}{}{2.~\expandafter\MakeUppercase\keywb\@. }%
        \@ifundefined{keywc}{}{3.~\expandafter\MakeUppercase\keywc\@. }%
        \@ifundefined{keywd}{}{4.~\expandafter\MakeUppercase\keywd\@. }%
        \@ifundefined{keywe}{}{5.~\expandafter\MakeUppercase\keywe\@. }%
        \@ifundefined{keywf}{}{6.~\expandafter\MakeUppercase\keywf\@. }%
        \@ifundefined{keywg}{}{7.~\expandafter\MakeUppercase\keywg\@. }%
        \@ifundefined{keywh}{}{8.~\expandafter\MakeUppercase\keywh\@. }%
        \@ifundefined{keywi}{}{9.~\expandafter\MakeUppercase\keywi\@. }%
        \@ifundefined{keywj}{}{10.~\expandafter\MakeUppercase\keywj\@. }%
}

\newcommand{\@abstractkw}{%
        \@ifundefined{keywa}{}{\expandafter\MakeUppercase\keywa}%
        \@ifundefined{keywb}{}{, \keywb}%
        \@ifundefined{keywc}{}{, \keywc}%
        \@ifundefined{keywd}{}{, \keywd}%
        \@ifundefined{keywe}{}{, \keywe}%
        \@ifundefined{keywf}{}{, \keywf}%
        \@ifundefined{keywg}{}{, \keywg}%
        \@ifundefined{keywh}{}{, \keywh}%
        \@ifundefined{keywi}{}{, \keywi}%
        \@ifundefined{keywj}{}{, \keywj}%
}

%==============================================================================
% Redefinição da data (para ter mês e ano separados)
%==============================================================================
\renewcommand{\date}[2]{
        \gdef\@publmonth{#1}
        \gdef\@publyear{#2}
}
\date{\monthname}{\number\year}

%==============================================================================
% Definição padrão da folha de rosto.
% Os dados específicos do tipo de trabalho (dissertação, tese, etc.) são
% informados definindo-se o comando \titlepagespecificinfo. Veja os
% arquivos .def incluídos com a classe.
%==============================================================================

\newlength{\titlepagewinwidth}\setlength{\titlepagewinwidth}{95mm}
\newlength{\titlepagewinheight}\setlength{\titlepagewinheight}{64mm}
\newlength{\titlepagewinvoffset}\setlength{\titlepagewinvoffset}{112mm}

\newcommand{\location}[2]{
        \gdef\@city{#1}
        \gdef\@state{#2}
}

\location{Pelotas}{RS}

\renewcommand{\maketitle}{
\@ifundefined{@capa}{%
\begin{titlepage}
\thetitlepage
\end{titlepage}
\clearpage
\setcounter{page}{1}
}{%
\begin{titlepage}
\thecoverpage
\newpage
\thetitlepage
\end{titlepage}
\clearpage
\setcounter{page}{2}
}
}

\newcommand{\thecoverpage}{%
  \noindent%
  \parbox[b]{0.1\textwidth}{%
    \hspace{-2cm}%
    \includegraphics[width=3cm]{if}%
  }%
  \noindent%
    \parbox[b]{0.8\textwidth}{%    
      \centering%
      \vskip 1cm%
      \MakeUppercase{\textbf{\@ministerio}}\\%
      \MakeUppercase{\textbf{\@secretaria}}\\%
      \MakeUppercase{\textbf{\@instituto}}\\%
      \MakeUppercase{\textbf{\@campus}}\\%
      \MakeUppercase{\textbf{\@thecurso}}\\%
      %\@unidade\\%
      %\@ifundefined{@nomecurso}{\@programa}{Curso de \@nomecurso}\\%
      \vskip 1cm%
      %\@documento\\%
      %\vskip 1cm%
    }%
  \parbox[b][][t]{0.1\textwidth}{%
    \includegraphics[scale=0.175]{tsi.png}%
  }%      
  \noindent%
  \vskip 1cm%
  \noindent%
    \parbox[b]{\textwidth}{%
      \centering%
      \vskip .5cm%
      \textbf{{\@authora}\\
      \@ifundefined{@authorb}{}{\@authorb\\}%
      \@ifundefined{@authorc}{}{\@authorc\\}%
      \@ifundefined{@authord}{}{\@authord\\}}%      
      \vskip .5cm%
    }%
  \vskip 3cm%
  \noindent%
    \parbox[b]{\textwidth}{%
      \centering%
      \vskip .5cm%
      \textbf{\@title}
      \vskip .5cm%
    }%
  \vskip 3cm%
  \noindent%
    \parbox[b]{\textwidth}{%
      \centering%
      \vskip .5cm%
      \textbf{\@documento}   
      \vskip .5cm%
    }%    
  \vfill%
  \noindent%
    \parbox[b]{\textwidth}{%
      \centering%
      \vskip .1cm%
      \textbf{\@city}\\
      \textbf{\ei@date}%
      \vskip .1cm%
    }%
}

\newcommand{\thetitlepage}{%
  \noindent%
  \parbox[b]{\textwidth}{%
    \centering%
    \@authora\\
    \@ifundefined{@authorb}{}{\@authorb\\}%
    \@ifundefined{@authorc}{}{\@authorc\\}%
    \@ifundefined{@authord}{}{\@authord\\}%
    \vskip 5cm%
    {\textbf{\@title}}%
  }
  \vskip 8cm%
  %\@ifundefined{titlepagespecificinfo}{}{%
    \hspace*{\fill}\makebox[.5\textwidth][l]{%
      \parbox[b]{8.5cm}{%
        \@descricaodocumento%
        \@ifundefined{@advisora}{}{%
          \vskip 1cm%
          \hspace{-0.25cm}
          \begin{tabular}{lp{.3675\textwidth}}
            \@ifundefined{@advisora}{}{
              \@ifundefined{@advisorb}{\advisorname:}{\advisorname es:} &
              \@ifundefined{@advisora}{}{\@advisora\\}
              \@ifundefined{@advisorb}{}{\ &}
              \@ifundefined{@advisorb}{}{\@advisorb\\}
              \@ifundefined{@advisorc}{}{\ &}
              \@ifundefined{@advisorc}{}{\@advisorc\\}
              \@ifundefined{@advisord}{}{\ &}
              \@ifundefined{@advisord}{}{\@advisord\\}}
            \@ifundefined{@coadvisora}{}{
               \@ifundefined{@coadvisorb}{\coadvisorname:}{\coadvisorname es:} &
               \@ifundefined{@coadvisora}{}{\@coadvisora\\}
              \@ifundefined{@coadvisorb}{}{\ &}
              \@ifundefined{@coadvisorb}{}{\@coadvisorb\\}
              \@ifundefined{@coadvisorc}{}{\ &}
              \@ifundefined{@coadvisorc}{}{\@coadvisorc\\}
              \@ifundefined{@coadvisord}{}{\ &}
              \@ifundefined{@coadvisord}{}{\@coadvisord\\}}
            \@ifundefined{@collaboratora}{}{
              \@ifundefined{@collaboratorb}{\collaboratorname:}{\collaboratorname es:} &
              \@ifundefined{@collaboratora}{}{\@collaboratora\\}
              \@ifundefined{@collaboratorb}{}{\ &}
              \@ifundefined{@collaboratorb}{}{\@collaboratorb\\}
              \@ifundefined{@collaboratorc}{}{\ &}
              \@ifundefined{@collaboratorc}{}{\@collaboratorc\\}
              \@ifundefined{@collaboratord}{}{\ &}
              \@ifundefined{@collaboratord}{}{\@collaboratord\\}}
          \end{tabular}
        }                
      }
    }%
    \vfill%
  %}%
  \vfill%
  \centerline{\@city}%
  \centerline{\ei@date}%
}

\newcommand{\folhadeaprovacao}{%
  \clearpage%
  \noindent%
  \parbox[b]{\textwidth}{%
    \centering%
    \MakeUppercase{\@authora}\\%
    \vskip 5cm%
    \textbf{\MakeUppercase{\@title}}\\%
    \vskip 4cm%
  }
  \hspace*{\fill}\makebox[.5\textwidth][l]{%
    \parbox[b]{8.5cm}{%
      \@descricaodocumento%
      \@ifundefined{@advisora}{}{%
        \vskip 1cm%
        \hspace{-0.3cm}
        \begin{tabular}{lp{.3675\textwidth}}
          \@ifundefined{@advisora}{}{
            \@ifundefined{@advisorb}{\advisorname:}{\advisorname es:} &
            \@ifundefined{@advisora}{}{\@advisora\\}
            \@ifundefined{@advisorb}{}{\ &}
            \@ifundefined{@advisorb}{}{\@advisorb\\}
            \@ifundefined{@advisorc}{}{\ &}
            \@ifundefined{@advisorc}{}{\@advisorc\\}
            \@ifundefined{@advisord}{}{\ &}
            \@ifundefined{@advisord}{}{\@advisord\\}}
          \@ifundefined{@coadvisora}{}{
             \@ifundefined{@coadvisorb}{\coadvisorname:}{\coadvisorname es:} &
             \@ifundefined{@coadvisora}{}{\@coadvisora\\}
            \@ifundefined{@coadvisorb}{}{\ &}
            \@ifundefined{@coadvisorb}{}{\@coadvisorb\\}
            \@ifundefined{@coadvisorc}{}{\ &}
            \@ifundefined{@coadvisorc}{}{\@coadvisorc\\}
            \@ifundefined{@coadvisord}{}{\ &}
            \@ifundefined{@coadvisord}{}{\@coadvisord\\}}
          \@ifundefined{@collaboratora}{}{
            \@ifundefined{@collaboratorb}{\collaboratorname:}{\collaboratorname es:} &
            \@ifundefined{@collaboratora}{}{\@collaboratora\\}
            \@ifundefined{@collaboratorb}{}{\ &}
            \@ifundefined{@collaboratorb}{}{\@collaboratorb\\}
            \@ifundefined{@collaboratorc}{}{\ &}
            \@ifundefined{@collaboratorc}{}{\@collaboratorc\\}
            \@ifundefined{@collaboratord}{}{\ &}
            \@ifundefined{@collaboratord}{}{\@collaboratord\\}}
        \end{tabular}
      }        
    }
  }
  \vskip 1cm%
  \hspace{-0.75cm}
  \parbox[b]{\textwidth}{%
    \centering
    Aprovado pela banca examinadora em: \uline{\hspace{0.75cm}}/\uline{\hspace{0.75cm}}/\uline{\hspace{1.5cm}}
  }
  \vfill%
  \hspace{-0.75cm}
  \parbox[b]{\textwidth}{%
    \centering%
    ~\uline{\hspace{0.75\textwidth}}~\\%
    \@advisora~-~\@instituicaoadvisor\\%
    \@ifundefined{orientadora}{Prof.\textordmasculine}{Prof.\textordfeminine}~\advisorname%
    \@ifundefined{@membroi}{}{
      \vskip 0.5cm%
      ~\uline{\hspace{0.75\textwidth}}~\\%
      \@membroi~-~\@instituicaomembroi\\%
      Membro titular\\%    
    }
    \@ifundefined{@membroii}{}{
      \vskip 0.5cm%
      ~\uline{\hspace{0.75\textwidth}}~\\%
      \@membroii~-~\@instituicaomembroii\\%
      Membro titular\\%    
    }
    \@ifundefined{@membroiii}{}{
      \vskip 0.5cm%
      ~\uline{\hspace{0.75\textwidth}}~\\%
      \@membroiii~-~\@instituicaomembroiii\\%
      Membro titular\\%    
    }    
  }
}

%==============================================================================
% Ajuste do sumário (nada indentado) 
%==============================================================================

% Nível do sumário
\setcounter{tocdepth}{4}

\newlength{\ei@chapnumindent}\setlength{\ei@chapnumindent}{1em}

\renewcommand*{\l@chapter}[2]{
        \addpenalty{-\@highpenalty}
        \vskip -1ex \@plus\p@
        \setlength\@tempdima{1.5em}
        \begingroup
        \parindent \z@ \rightskip \@pnumwidth
        \parfillskip -\@pnumwidth
        \leavevmode\bfseries\sffamily
        \advance\leftskip\@tempdima
        \hskip -\leftskip
        \@dottedtocline{0}{0em}{\ei@chapnumindent}{\MakeUppercase{#1}}{#2}
        \penalty\@highpenalty
        \endgroup
}
\renewcommand*{\l@section}[2]
              {\@dottedtocline{1}{0em}{1.8em}{\MakeUppercase{#1}}{\hss #2}}

\renewcommand*{\l@subsection}[2]{\@dottedtocline{2}{0em}{2.5em}{\textbf{#1}}{#2}}

\renewcommand*{\l@subsubsection}[2]{\@dottedtocline{3}{0em}{3.5em}{\textit{#1}}{#2}}

\renewcommand*{\l@paragraph}[2]{\@dottedtocline{4}{0em}{4.25em}{\uline{#1}}{#2}}

\newif\if@aftertoc
\@aftertocfalse
\renewcommand{\tableofcontents}{%
        \chapter*{\contentsname}
        \@starttoc{toc}\@aftertoctrue%
}

%
% Anexos e apêndices
%

% Seção anexo
\newcounter{annex}% add counter
\renewcommand\theannex{\annexname~\@Alph\c@annex \space --}

\newcommand*\l@annex[2]{
        \addpenalty{-\@highpenalty}
        \vskip -1ex \@plus\p@
        \setlength\@tempdima{1.5em}
        \begingroup
        \parindent \z@ \rightskip \@pnumwidth
        \parfillskip -\@pnumwidth
        \leavevmode\bfseries\sffamily
        \advance\leftskip\@tempdima
        \hskip -\leftskip
        \@dottedtocline{0}{0em}{5.75em}{\MakeUppercase{#1}}{#2}
        \penalty\@highpenalty
        \endgroup
}

\newcommand\annexmark[1]{} % define header/footer                            
\newcommand\annex{
  \clearpage%
  \vspace*{90pt}%
  \@startsection{annex}{0}{0pt}{0pt}{42pt}{\centering\reset@font\ei@chapterfont\sffamily\bfseries\MakeUppercase}%
}

% Seção apêndice
\newcounter{append}% add counter
\renewcommand\theappend{\appendixname~\@Alph\c@append \space --}

\newcommand*\l@append[2]{
        \addpenalty{-\@highpenalty}
        \vskip -1ex \@plus\p@
        \setlength\@tempdima{1.5em}
        \begingroup
        \parindent \z@ \rightskip \@pnumwidth
        \parfillskip -\@pnumwidth
        \leavevmode\bfseries\sffamily
        \advance\leftskip\@tempdima
        \hskip -\leftskip
        \@dottedtocline{0}{0em}{7.25em}{\MakeUppercase{#1}}{#2}
        \penalty\@highpenalty
        \endgroup
}

\newcommand\appendmark[1]{} % define header/footer                            
\newcommand\append{
  \clearpage%
  \vspace*{90pt}%
  \@startsection{append}{0}{0pt}{0pt}{42pt}{\centering\reset@font\ei@chapterfont\sffamily\bfseries\MakeUppercase}%
}

%==============================================================================
% Definição das listas de abreviaturas e siglas e de símbolos
%==============================================================================
\newenvironment{listofabbrv}[1]{
  \chapter*{\listabbrvname}
  \begin{list}{\textbf{??}}{%
      \settowidth{\labelwidth}{#1}%
      \setlength{\labelsep}{1em}%
      \setlength{\itemindent}{0mm}%
      \setlength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}%
      \setlength{\rightmargin}{0mm}%
      \setlength{\itemsep}{.1\baselineskip}%
      \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}%
    }
  }{
  \end{list}
} 

\newenvironment{listofsymbols}[1]{
  \chapter*{\listsymbolname}
  \begin{list}{\textbf{??}}{%
      \settowidth{\labelwidth}{#1}%
      \setlength{\labelsep}{1em}%
      \setlength{\itemindent}{0mm}%
      \setlength{\leftmargin}{\labelwidth}%
      \addtolength{\leftmargin}{\labelsep}%
      \setlength{\rightmargin}{0mm}%
      \setlength{\itemsep}{.1\baselineskip}%
      \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}%
    }
  }{
  \end{list}
}

%==============================================================================
% Resumo (abstract) e Abstract (englishabstract)
%==============================================================================
\renewenvironment{abstract}{%
  \chapter*{\abstractname}
}{%
  \par\vskip 0.5cm%
  \noindent\textbf{\keywordsname:} \@abstractkw.
}

\newenvironment{englishabstract}[1]{%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \gdef\@englishkeywords{#1}%
  \iflanguage{english}{
    \begin{otherlanguage}{brazilian}
    }{
      \begin{otherlanguage}{english}
      }
      \chapter*{\abstractname}
    }{
      \par\vskip 0.5cm%
      \noindent\textbf{\keywordsname:} \@englishkeywords.
    \end{otherlanguage}
}

%==============================================================================
% Formatação dos capítulos.
% Os comandos \@chapter e \@schapter são redefinidos para que a
% numeração de páginas seja correta (deve aparecer somente a partir do
% primeiro capítulo do texto, mas não nas páginas iniciais de
% capítulos).
% Os comandos \@makechapterhead e \@makeschapterhead fazem a
% formatação dos títulos propriamente ditos.
%==============================================================================
\newcommand{\ei@chapterfont}{\@setfontsize\Large{16}{20}}
\def\@chapapp{}

\def\@chapter[#1]#2{%
	\onehalfspacing
  \refstepcounter{chapter}%
  \addcontentsline{toc}{chapter}{\protect\numberline{\@chapapp\thechapter}#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \pagestyle{texufpel}\let\ps@plain\ps@texufpel%
  \@makechapterhead{#2}\@afterheading%
}

\def\@makechapterhead#1{%
  \vspace*{90pt}%
  \reset@font\noindent{\ei@chapterfont\sffamily\textbf{\@chapapp\thechapter\hspace{1em}\MakeUppercase{#1}}\par}%
  \addvspace{42pt}%
  \thispagestyle{empty}%
}

\def\@schapter#1{%
  \if@aftertoc\addcontentsline{toc}{chapter}{#1}\fi%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \@makeschapterhead{#1}\@afterheading%
}

\def\@makeschapterhead#1{%
  \vspace*{90pt}%
  \reset@font\centerline{\ei@chapterfont\sffamily\textbf{\MakeUppercase{#1}}}%
  \addvspace{42pt}%
}

%==============================================================================
% Formatação das seções
%==============================================================================
\setcounter{secnumdepth}{4} 

\renewcommand{\section}{%
  \@startsection{section}{1}{0pt}{18pt}{9pt}{\reset@font\large\MakeUppercase}
} 

\renewcommand{\subsection}{%
  \@startsection{subsection}{2}{0pt}{12pt}{6pt}{\reset@font\bfseries}
} 

\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{3}{0pt}{12pt}{6pt}{\reset@font\itshape}
} 

\renewcommand{\paragraph}{%
  \@startsection{paragraph}{4}{0pt}{12pt}{6pt}{\reset@font\uline} 
}

\renewcommand{\subparagraph}{%
  \@startsection{subparagraph}{5}{0pt}{1ex}{-1em}{\reset@font\bfseries}
}

%==============================================================================
% Formatação das legendas
%==============================================================================
\renewcommand{\thefigure}{\@arabic\c@figure}
\renewcommand{\thetable}{\@arabic\c@table}

\counterwithout{figure}{chapter}
\counterwithout{equation}{chapter}
\counterwithout{table}{chapter}

%==============================================================================
% Redefinição do conteúdo das listas de figuras e tabelas
%==============================================================================
\newif\if@captionlisting\@captionlistingtrue
\long\def\@caption#1[#2]#3{%
  \par
  \if@captionlisting%
    \addcontentsline{\csname ext@#1\endcsname}{#1}%
        {\protect\numberline{\csname fnum@#1\endcsname}{\ignorespaces #2}}%
  \fi%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup%
}

\renewcommand*{\l@figure}{\@dottedtocline{1}{0em}{5.5em}}
\let\l@table\l@figure

%==============================================================================
% Redefinição do formato de citações longas
%==============================================================================
\renewenvironment{quote}{%
  \small%
  \begin{list}{}{\setlength{\leftmargin}{40mm}\item\relax}
  }{%
  \end{list}
}

%==============================================================================
% Ajuste do formato das citações e referências
%==============================================================================
\setlength{\bibhang}{0pt}
\let\cite\citep

%
% Definições de seções restantes.
%

% Ficha catalográfica: Uma página temporária, somente indicando que é necessário ter a ficha catalográfica

\newcommand{\fichacatalografica}{%
  \clearpage%
  \mbox{}%
  \vfill
  \begin{center}
    \textbf{Insira AQUI a ficha catalogr\'afica\\(solicitada na p\'agina da biblioteca)}
\end{center}
\vfill%
}

% Seção de agradecimentos

\newenvironment{agradecimentos}{%
  \chapter*{Agradecimentos}%
}{%
}

% Seção de dedicatória

\newenvironment{dedicatoria}{%
  \clearpage%
  \mbox{}\vfill\begin{flushright}%
  }{%
  \end{flushright}%
}

% Seção de epígrafe

\newenvironment{epigrafe}{%
  \clearpage%
  \mbox{}\vfill\begin{flushright}%
  }{%
  \end{flushright}%
}
