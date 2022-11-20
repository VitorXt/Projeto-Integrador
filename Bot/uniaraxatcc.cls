%==============================================================================
% Classe para Projeto de Trabalho de Conclusão de Curso do Uniaraxá 
% Curso de Sistemas de Informação
% Centro Universitário do Planalto de Araxá
% Por: Winicius Pereira
% Versão: 2015.11.20 - Winicius Pereira

%Adaptado da classe dissertacaoufu - Formatação para dissertção de mestrado PӓS-FACOM/UFU
%Adaptado para atender o Manual de Normalização do Uniaraxá 2011
%=============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uniaraxatcc}[25/03/2013 v0.1 Formatação para projeto de trabalho de conclusão de curso do Uniaraxá]

%==============================================================================
% Utilizando a classe abntex2
%==============================================================================
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\DeclareOption{twoside}{\gdef\@intwoside{true}}
\ProcessOptions
\LoadClass[12pt, openright,a4paper,chapter=TITLE,section=TITLE]{abntex2}



%==============================================================================
% Pacotes requeridos
%==============================================================================
% Permitir assentos e Tradução para português do Brasil
\usepackage[utf8]{inputenc}

% Permite hifenização de palavras com acentos e cedilhas
\RequirePackage[T1]{fontenc}


%pacote para definição da fonte times new roman
\usepackage{mathptmx} 


%==============================================================================
% Definição e redefinição de comandos
%==============================================================================
% SEÇÃO PRIMÁRIA = (CAIXA ALTA, negrito, tamanho 12)
\renewcommand{\ABNTEXchapterfont}{\fontfamily{cmr}\fontseries{b}\selectfont}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

%SEÇÃO SECUNDÁRIA (CAIXA ALTA, sem negrito, tamanho 12)
\renewcommand{\ABNTEXsectionfont}{\fontfamily{cmr}\selectfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

%Seção terciária (Caixa alta baixa, negrito, tamanho 12)
\renewcommand{\ABNTEXsubsectionfont}{\fontfamily{cmr}\fontseries{b}\selectfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

%Seção quaternária (caixa alta baixa, sem negrito, tamanho 12)
\renewcommand{\ABNTEXsubsubsectionfont}{\fontfamily{cmr}\selectfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

%Seção quinária (caixa alta baixa, itálico, tamanho 12)
\renewcommand{\ABNTEXsubsubsubsectionfont}{\fontfamily{cmr}\fontseries{it}\selectfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

\usepackage{indentfirst} % Indenta o primeiro parágrafo de cada seção.


\makepagestyle{abntheadings}
\makeoddhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}
\makeevenhead{abntheadings}{}{}{\ABNTEXfontereduzida\thepage}



\setlength\afterchapskip{\baselineskip}
%Padronização de formato para referencias
\usepackage[abnt-emphasize=bf,abnt-etal-list=3,alf]{abntex2cite}


% Fontes das entradas do sumario
%
\renewcommand{\cftchapterfont}{\fontfamily{cmr}\fontseries{b}}
\renewcommand{\cftchapterpagefont}{\normalsize\cftchapterfont}
%
\renewcommand{\cftsectionfont}{\fontfamily{cmr}\mdseries}
\renewcommand{\cftsectionpagefont}{\normalsize\cftsectionfont}
%
\renewcommand{\cftsubsectionfont}{\fontfamily{cmr}\fontseries{b}}
\renewcommand{\cftsubsectionpagefont}{\cftsubsectionfont}
%
\renewcommand{\cftsubsubsectionfont}{\smaller\mdseries}
\renewcommand{\cftsubsubsectionpagefont}{\cftsubsubsectionfont}
%
\renewcommand{\cftparagraphfont}{\smaller\smaller\mdseries\itshape}
\renewcommand{\cftparagraphpagefont}{\cftparagraphfont}






%Nome da Instituição de Ensino
\instituicao{Centro Universitário do Planalto de Araxá}

% Curso
\newcommand{\curso}[1]{\gdef\@curso{#1}}


% Local
 \renewcommand{\local}[2]{
         \gdef\@cidade{#1}
         \gdef\@uf{#2}
 }

% Data
\renewcommand{\date}[3]{
   \gdef\@day{#1}
   \gdef\@month{#2}
   \gdef\@year{#3}
}

% Linha de Pesquisa
\newcommand{\linhadepesquisa}[1]{\gdef\@linhadepesquisa{#1}}

% Orientador e coorientador
 \DeclareRobustCommand{\orientador}[3][]{
   \gdef\@orientador{#1~#2}
   \gdef\@orientadorsexo{#3}
 }
 
 \DeclareRobustCommand{\coorientador}[3][]{
   \gdef\@coorientador{#1~#2}
   \gdef\@coorientadorsexo{#3}
} 
 

% Membros da banca
 \DeclareRobustCommand{\avaliadorA}[3][]{
   \gdef\@avaliadorA{#1~#2}
   \gdef\@avaliadorSexoA{#3}
 }
 
 \DeclareRobustCommand{\avaliadorB}[3][]{
   \gdef\@avaliadorB{#1~#2}
   \gdef\@avaliadorSexoB{#3}
 }
 
% Habilitação
\newcommand{\habilitacao}[1]{\gdef\@habilitacao{#1}}

%Tipo de Trabalho
\newcommand{\tipotcc}[1]{\gdef\@tipotcc{#1}}




%Define o preâmbulo que é exibido na folha de rosto e de aprovação

\preambulo{
\ifthenelse{\equal{\@tipotcc}{M}}{}{Projeto de }
Trabalho de Conclusão de Curso apresentado ao Curso de \@curso~do \imprimirinstituicao, 
\ifthenelse{\equal{\@tipotcc}{M}}{como requisito parcial para obtenção do título de \@habilitacao~em \@curso.}{como exigência para elaboração de Trabalho de Conclusão de Curso.}
}



% Dedicatória, agradecimentos e epígrafe
 \renewcommand{\dedicatoria}[1]{\gdef\@dedicatoria{#1}}
 \renewcommand{\agradecimentos}[1]{\gdef\@agradecimentos{#1}}
 \renewcommand{\epigrafe}[1]{\gdef\@epigrafe{#1}}
 \renewcommand{\resumo}[1]{\gdef\@resumo{#1}} 
 \renewcommand{\abstract}[1]{\gdef\@abstract{#1}}
 \renewcommand{\siglas}[1]{\gdef\@siglas{#1}}  



					

%=========================
% Redefine a macro {capa}
%=========================
\renewcommand{\imprimircapa}{
	\begin{capa}
	 \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}		
		\center
		\normalsize
		\pdfbookmark[0]{\@title}{anchor:title} % Cria entrada de título no conteúdo do PDF
		
		\MakeUppercase{\imprimirinstituicao}\\
    	\MakeUppercase{\@curso}

		\vspace{1.5cm}
       
    	\textbf{\MakeUppercase{\imprimirautor}}       

    	\vspace{6cm}
      
    	\textbf{\MakeUppercase{\imprimirtitulo}}
 
		\vspace*{\fill}
    	\begin{SingleSpace}
			{\@cidade}\\
			{\@year}
    	\end{SingleSpace}		

		\end{capa}
}

%==================================
% Redefine a macro {folha de rosto}
%=================================
\renewcommand{\imprimirfolhaderosto}{
	\begin{folhaderosto}
	 \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}
		\center
		\normalsize	

    	\textbf{\MakeUppercase{\imprimirautor}}       

   		 \vspace{6cm}
      
    	\textbf{\MakeUppercase{\imprimirtitulo}} 

 		\vspace{4cm}    	  	

		\begin{small}
			\begin{flushright}    
	     		\begin{minipage}[b]{0.5\textwidth}
    				\begin{SingleSpace}
						\imprimirpreambulo
						\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco
						Linha de pesquisa: \@linhadepesquisa 
						\par\vspace{\baselineskip}
						\ifthenelse{\equal{\@orientadorsexo}{F}}{Orientadora:}{Orientador:} \@orientador
						\par
						\@ifundefined{@coorientador}{}{\ifthenelse{\equal{\@orientadorsexo}{F}}{Coorientadora:}
						{Coorientador:} \@coorientador}						
    				\end{SingleSpace}	
     			\end{minipage}
    		\end{flushright}
   		\end{small}

		\vspace*{\fill}
    	\begin{SingleSpace}
			{\@cidade}\\
			{\@year}
    	\end{SingleSpace}
	\end{folhaderosto}
}

%==================================
% Redefine a macro {folha de aprovação}
%=================================
\newcommand{\imprimirfolhadeaprovacao}{
\begin{folhadeaprovacao}
	 \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}
		\center
		\normalsize	
   	
    	\textbf{\MakeUppercase{\imprimirautor}}   
    	
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip}     	
		\par\vspace{\baselineskip}     			
%				
		\begin{small}
			\begin{flushright}    
	     		\begin{minipage}[b]{0.5\textwidth}
    				\begin{SingleSpace}
						\imprimirpreambulo
						\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco
						Linha de pesquisa: \@linhadepesquisa 
						\par\vspace{\baselineskip}
						\ifthenelse{\equal{\@orientadorsexo}{F}}{Orientadora:}{Orientador:} \@orientador
						\par
						\@ifundefined{@coorientador}{}{\ifthenelse{\equal{\@orientadorsexo}{F}}{Coorientadora:}
						{Coorientador:} \@coorientador}						
    				\end{SingleSpace}	
     			\end{minipage}
    		\end{flushright}
   		\end{small}
   		
		\par\vspace{\baselineskip}    

	    \textbf{\MakeUppercase{\@title}}  

		\par\vspace{\baselineskip}
		
		\begin{flushleft}
			{\@cidade}, {\@day} de {\@month} de {\@year}
		\end{flushleft}

		\par\vspace{\baselineskip} 
		BANCA EXAMINADORA
		\par\vspace{\baselineskip} 

		\assinatura{{\@orientador}\par \ifthenelse{\equal{\@orientadorsexo}{F}}{\textbf{Orientadora}}{\textbf{Orientador}}}

		\@ifundefined{@coorientador}{}{\assinatura{{\@coorientador}\par \ifthenelse{\equal{\@coorientadorsexo}{F}}
				{\textbf{Coorientadora}}{\textbf{Coorientador}}}}
		
		\assinatura{{\@avaliadorA}\par \ifthenelse{\equal{\@avaliadorSexoA}{F}}{\textbf{Examinadora}}{\textbf{Examinador}}}
		
		\@ifundefined{@avaliadorB}{}{\assinatura{{\@avaliadorB}\par \ifthenelse{\equal{\@avaliadorSexoB}{F}}
				{\textbf{Examinadora}}{\textbf{Examinador}}}}

		\vspace*{\fill}
    	\begin{SingleSpace}
			{\@cidade}\\
			{\@year}
    	\end{SingleSpace}
	
\end{folhadeaprovacao}

}

% ======================================================
% Dedicatória
%======================================================
 \def\@imprimirdedicatoria{
    \@ifundefined{@dedicatoria}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}

\setlength\absleftindent{3cm}
\setlength\absrightindent{2cm}

    \phantom d
    \vfill
		\begin{small}
			\begin{flushright}    
	     		\begin{minipage}[b]{0.5\textwidth}
    				\begin{SingleSpace}
				         \@dedicatoria
    				\end{SingleSpace}	
     			\end{minipage}
    		\end{flushright}
   		\end{small}
    \hspace{.45\textwidth}
    }
 }

% ======================================================
% Agradecimentos
%======================================================
 \def\@imprimiragradecimentos{
    \@ifundefined{@agradecimentos}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}

\setlength\absleftindent{3cm}
\setlength\absrightindent{2cm}

		\begin{center}
	      \textbf{\uppercase{agradecimentos}}		
		\end{center}      

		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
		
		
		\begin{center}
		\@agradecimentos
		\end{center}
    }
 }


% ======================================================
% Epígrafe
%======================================================
 \def\@imprimirepigrafe{
    \@ifundefined{@epigrafe}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}

\setlength\absleftindent{3cm}
\setlength\absrightindent{2cm}

    \phantom d
    \vfill
		\begin{small}
			\begin{flushright}    
	     		\begin{minipage}[b]{0.5\textwidth}
    				\begin{SingleSpace}
				         \@epigrafe
    				\end{SingleSpace}	
     			\end{minipage}
    		\end{flushright}
   		\end{small}
    \hspace{.45\textwidth}
    }
 }


% ======================================================
% Resumo
%======================================================
 \def\@imprimiresumo{
    \@ifundefined{@resumo}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}

		\setlength\absleftindent{3cm}
		\setlength\absrightindent{2cm}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
		\begin{center}
			\textbf{\uppercase{resumo}}
		\end{center}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
      \@resumo
    }
 }


% ======================================================
% Abstract
%======================================================
 \def\@imprimiabstract{
    \@ifundefined{@abstract}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}

		\setlength\absleftindent{3cm}
		\setlength\absrightindent{2cm}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
		\begin{center}
			\textbf{\uppercase{abstract}}
		\end{center}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
      \@abstract
    }
 }
 
% ======================================================
% Siglas
%======================================================
 \def\@imprimisiglas{
    \@ifundefined{@siglas}{}{
      \@ifundefined{@intwoside}{\clearpage}{\cleardoublepage}
		\setlength\absleftindent{3cm}
		\setlength\absrightindent{2cm}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
		\begin{center}
			\textbf{\uppercase{lista de siglas e abreviaturas}}
		\end{center}
		\par\vspace{\baselineskip} % quebra a linha e pula uma linha em branco    	
		\par\vspace{\baselineskip} 
      \@siglas
    }
 }
 
 
 
 
%==============================================================================
% Redefinição dos componentes pré-textuais
%==============================================================================
\renewcommand{\maketitle}{
		\pretextual %Indica início dos elementos pré-textuais
%		\pagestyle{empty}
		\setlength{\parindent}{1.25cm} % Recuo do parágrafo em relação à margem esquerda
		\imprimircapa
		\imprimirfolhaderosto
		\ifthenelse{\equal{\@tipotcc}{M}}{\imprimirfolhadeaprovacao}{}
		\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimirdedicatoria}{}
		\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimiragradecimentos}{}		
		\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimirepigrafe}{}			

		\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimiresumo}{}				
		\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimiabstract}{}
		\newpage
		\pdfbookmark[0]{\listfigurename}{lof}						
%		\ifthenelse{\equal{\@tipotcc}{M}}{\listoffigures*}{}		
%		\ifthenelse{\equal{\@tipotcc}{M}}{\listoftables*){}
\newpage
\pdfbookmark[0]{\listtablename}{lot}	
\ifthenelse{\equal{\@tipotcc}{M}}{\listoftables*}{}
\ifthenelse{\equal{\@tipotcc}{M}}{\@imprimisiglas}{}
		\newpage
		\input{Partes/Agradecimentos.tex}
		\cleardoublepage
		\newpage
		\input{Partes/Resumo.tex}
		\cleardoublepage
		\newpage
		\input{Partes/Abstract.tex}
		\cleardoublepage
		\newpage
		\listoffigures*
		\cleardoublepage
		\newpage
		\tableofcontents*
		\cleardoublepage
		\textual %Indica início dos elementos textuais
		\pagestyle{simple}		
}
% ---


