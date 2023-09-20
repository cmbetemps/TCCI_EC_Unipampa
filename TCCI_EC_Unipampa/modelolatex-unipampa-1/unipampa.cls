%==============================================================================
% unipampa - classe de documento com padrões para documentos da UNIPAMPA
%
% Este documento foi baseado no documento construído pelo UFRGS TeX Users Group,
% Grupo de Usuários TeX da UFRGS e adaptado para atender ao manual de normalização
% da UNIPAMPA 2016 (produzido pelo grupo gestor do Sistema de Bibliotecas da
% UNIPAMPA), pela Profa. Ana Paula Lüdtke Ferreira, do Campus Bagé.
%
% Este arquivo é distribído por meio da licença GNU Public License.
%
% Não nos responsabilizamos por manter este documento. Sugestões e atualizações
% podem ser enviadas para anaferreira@unipampa.edu.br.
%
%==============================================================================


%==============================================================================
%
% Identificação deste documento
%
%==============================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unipampa}[2017/12/12 Formatacao de documentos para a UNIPAMPA]

%==============================================================================
%
% Informações sobre cursos e titulações
%
%==============================================================================

\newcommand{\UNIPAMPA}{Universidade Federal do Pampa}

\newcommand{\course}[1]{\gdef\@course{#1}}                  % nome do curso, sem modalidade - no caso de p{\'o}s-gradua\c{c}{\~a}o, com nome completo
\newcommand{\coursename}[1]{\gdef\@coursename{#1}}              % nome do curso, sem modalidade - no caso de p{\'o}s-gradua\c{c}{\~a}o, com nome completo
\newcommand{\modalidade}[1]{\gdef\@modalidade{#1}}          % somente para a gradua\c{c}{\~a}o (Licenciatura, Bacharelado, Curso Superior de Tecnologia)
\newcommand{\campus}[1]{\gdef\@campus{#1}}                  % nome do Campus
\newcommand{\advisorname}{Orientador}%
\newcommand{\coadvisorname}{Coorientador}%
\newcommand{\instorientador}[1]{\gdef\@instorientador{#1}}


%==============================================================================
%
% Tipos de documentos suportados por este modelo
%
%==============================================================================


\DeclareOption{tcc}{%
    \newcommand{\titlepagespecificinfo}{\tccspecificinfo}
    \def\@cipspecificinfo{\tccname\ (Gradua\c{c}\~{a}o)}
		\coursename{Gradua\c{c}\~{a}o}
    \def\textapproval{\tccapproval}
}
\DeclareOption{espec}{%
    \newcommand{\titlepagespecificinfo}{\especspecificinfo}
    \def\@cipspecificinfo{\especname\ (Especializa\c{c}\~{a}o)}
		\coursename{Especializa\c{c}\~{a}o}
    \def\textapproval{\especapproval}
}
\DeclareOption{mestrado}{%
    \newcommand{\titlepagespecificinfo}{\dissspecificinfo}
    \def\@cipspecificinfo{\dissname\ (Mestrado)}
		\coursename{Mestrado}
    \def\textapproval{\dissapproval}
}
\DeclareOption{mestradoprof}{%
    \newcommand{\titlepagespecificinfo}{\dissspecificinfo}
    \def\@cipspecificinfo{\dissname\ (Mestrado Profissional)}
    \coursename{Mestrado Profissional}
		\def\textapproval{\dissapproval}
}
\DeclareOption{doutorado}{%
    \newcommand{\titlepagespecificinfo}{\tesespecificinfo}
    \def\@cipspecificinfo{\tesename\ (Doutorado)}
    \coursename{Doutorado}
		\def\textapproval{\teseapproval}
}
\DeclareOption{projetotcc}{%
    \newcommand{\titlepagespecificinfo}{Projeto de \tccspecificinfo}
    \def\@cipspecificinfo{Projeto de \tccname\ (Gradua\c{c}\~{a}o)}
    \def\textapproval{Projeto de \tccname\ defendido e aprovado em: }
}
\DeclareOption{projetoespec}{%
    \newcommand{\titlepagespecificinfo}{Projeto de \especspecificinfo}
    \def\@cipspecificinfo{Projeto de \especname\ (Especializa\c{c}\~{a}o)}
    \def\textapproval{Projeto de \especname\ defendido e aprovado em: }
}
\DeclareOption{projetomestrado}{%
    \newcommand{\titlepagespecificinfo}{Projeto de \dissspecificinfo}
    \def\@cipspecificinfo{Projeto de \dissname\ (Mestrado)}
    \def\textapproval{Projeto de \dissname\ defendido e aprovado em: }
}
\DeclareOption{projetomestradoprof}{%
    \newcommand{\titlepagespecificinfo}{Projeto de \dissspecificinfo}
    \def\@cipspecificinfo{Projeto de \dissname\ (Mestrado Profissional)}
    \def\textapproval{Projeto de \dissname\ defendido e aprovado em: }
}
\DeclareOption{projetodoutorado}{%
    \newcommand{\titlepagespecificinfo}{Projeto de \tesespecificinfo}
    \def\@cipspecificinfo{Projeto de \tesename\ (Doutorado)}
    \def\textapproval{Projeto de \tesename\ defendido e aprovado em: }
}
\DeclareOption{relatorio}{%
    \newcommand{\titlepagespecificinfo}{Relat\'{o}rio de Projeto}
    \def\@cipspecificinfo{Relat\'{o}rio de Projeto}
}



%==============================================================================
%
% Outros pacotes locais importados
%
%==============================================================================

\newcommand{\unipampa@novodoc}[1]{\DeclareOption{#1}{\AtEndOfClass{\input{#1.def}}}}

%==============================================================================
%
% Definições para os cursos de graduação
%
%==============================================================================

%
% Campus Alegrete
%
\DeclareOption{alcc}{%
  \course{Ci{\^e}ncia da Computa\c{c}{\~a}o}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncia da Computa\c{c}{\~a}o}
}
\DeclareOption{alea}{%
  \course{Engenharia Agr\'{\i}cola}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Agr\'{\i}cola}
}
\DeclareOption{alec}{%
  \course{Engenharia Civil}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Civil}
}
\DeclareOption{ales}{%
  \course{Engenharia de Software}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Software}
}
\DeclareOption{alet}{%
  \course{Engenharia de Telecomunica\c{c}ões}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Telecomunica\c{c}ões}
}
\DeclareOption{alee}{%
  \course{Engenharia El{\'e}trica}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia El{\'e}trica}
}
\DeclareOption{alem}{%
  \course{Engenharia Mec{\^a}nica}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Mec{\^a}nica}
}
%
% Campus Bagé
%
\DeclareOption{baec}{%
  \course{Engenharia de Computa\c{c}{\~a}o}
  \modalidade{Bacharelado}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Computa\c{c}{\~a}o}
}

\DeclareOption{baeq}{%
  \course{Engenharia Qu\'{\i}mica}
  \modalidade{Bacharelado}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Qu\'{\i}mica}
}

\DeclareOption{baep}{%
  \course{Engenharia de Produ\c{c}{\~a}o}
  \modalidade{Bacharelado}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Produ\c{c}{\~a}o}
}

\DeclareOption{baera}{%
  \course{Engenharia de Energias Renov{\'a}veis e de Ambiente}
  \modalidade{Bacharelado}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Energias}
}

\DeclareOption{baee}{%
  \course{Engenharia de Energia}
  \modalidade{Bacharelado}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Energia}
}

\DeclareOption{baea}{%
  \course{Engenharia de Alimentos}
  \modalidade{Bacharelado}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Alimentos}
}

\DeclareOption{balf}{%
  \course{F\'{\i}sica}
  \campus{Bag{\'e}}
  \modalidade{Licenciatura}
	\providecommand{\titulacaoEm}{Licenciado em F\'{\i}sica}
}

\DeclareOption{balm}{%
  \course{Matem{\'a}tica}
  \campus{Bag{\'e}}
  \modalidade{Licenciatura}
	\providecommand{\titulacaoEm}{Licenciado em Matem{\'a}tica}
}

\DeclareOption{balq}{%
  \course{Qu\'{\i}mica}
  \modalidade{Licenciatura}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Licenciado em Qu\'{\i}mica}
}

\DeclareOption{bamu}{%
  \course{M{\'u}sica}
  \modalidade{Licenciatura}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Licenciado em M{\'u}sica}
}

\DeclareOption{bale}{%
  \course{Letras -- Portugu{\^e}s e Literaturas de L\'{\i}ngua Portuguesa}
  \modalidade{Licenciatura}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}

\DeclareOption{bala}{%
  \course{Letras -- L\'{\i}nguas Adicionais: Ingl{\^e}s Espanhol e Respectivas Literaturas}
  \modalidade{Licenciatura}
  \campus{Bag{\'e}}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}
%
% Campus Caçapava do Sul
%
\DeclareOption{csce}{%
  \course{Ci{\^e}ncias Exatas}
  \modalidade{Licenciatura Interdisciplinar}
  \campus{Ca\c{c}apava do Sul}
	\providecommand{\titulacaoEm}{Licenciado em Ci{\^e}ncias Exatas}
}
\DeclareOption{csesa}{%
  \course{Engenharia Ambiental e Sanit{\'a}ria}
  \modalidade{Bacharelado}
  \campus{Ca\c{c}apava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Ambiental e Sanit{\'a}ria}
}
\DeclareOption{csgeo}{%
  \course{Geof\'{\i}sica}
  \modalidade{Bacharelado}
  \campus{Ca\c{c}apava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Geof\'{\i}sica}
}
\DeclareOption{csgel}{%
  \course{Geologia}
  \modalidade{Bacharelado}
  \campus{Ca\c{c}apava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Geologia}
}
\DeclareOption{cstm}{%
  \course{Minera\c{c}{\~a}o}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Ca\c{c}apava do Sul}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Minera\c{c}{\~a}o}
}
%
% Campus Dom Pedrito
%
\DeclareOption{dplcn}{%
  \course{Ci{\^e}ncias da Natureza}
  \modalidade{Licenciatura}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Licenciado em Ci{\^e}ncias da Natureza}
}
\DeclareOption{dpta}{%
  \course{Agroneg{\'o}cio}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Agroneg{\'o}cio}
}
\DeclareOption{dpec}{%
  \course{Educa\c{c}{\~a}o no Campo}
  \modalidade{Licenciatura}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Licenciado em Educa\c{c}{\~a}o no Campo}
}
\DeclareOption{dpz}{%
  \course{Zootecnia}
  \modalidade{Bacharelado}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Bacharel em Zootecnia}
}
\DeclareOption{dpe}{%
  \course{Enologia}
  \modalidade{Bacharelado}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Bacharel em Enologia}
}
%
% Campus Itaqui
%
\DeclareOption{itagr}{%
  \course{Agronomia}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Agronomia}
}
\DeclareOption{itta}{%
  \course{Ci{\^e}ncia e Tecnologia dos Alimentos}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncia e Tecnologia dos Alimentos}
}
\DeclareOption{itea}{%
  \course{Engenharia de Agrimensura}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Agrimensura}
}
\DeclareOption{ittc}{%
  \course{Interdisciplinar em Ci{\^e}ncia e Tecnologia}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncia e Tecnologia}
}
\DeclareOption{itlm}{%
  \course{Matem{\'a}tica}
  \modalidade{Licenciatura}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Licenciado em Matem{\'a}tica}
}
\DeclareOption{itnut}{%
  \course{Nutri\c{c}{\~a}o}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Nutri\c{c}{\~a}o}
}
%
% Campus Jaguar{\~a}o
%
\DeclareOption{jatur}{%
  \course{Gest{\~a}o de Turismo}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Jaguar{\~a}o}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Gest{\~a}o de Turismo}
}
\DeclareOption{jahis}{%
  \course{Hist{\'o}ria}
  \modalidade{Licenciatura}
  \campus{Jaguar{\~a}o}
	\providecommand{\titulacaoEm}{Licenciado em Hist{\'o}ria}
}
\DeclareOption{jalpe}{%
  \course{Letras -- Portugu{\^e}s, Espanhol e Respectivas Literaturas}
  \modalidade{Licenciatura}
  \campus{Jaguar{\~a}o}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}
\DeclareOption{jape}{%
  \course{Pedagogia}
  \modalidade{Licenciatura}
  \campus{Jaguar{\~a}o}
	\providecommand{\titulacaoEm}{Licenciado em Pedagogia}
}
\DeclareOption{jappc}{%
  \course{Produ\c{c}{\~a}o e Pol\'{\i}tica Cultural}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Jaguar{\~a}o}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Produ\c{c}{\~a}o e Pol\'{\i}tica Cultural}
}
%
% Campus Santana do Livramento
%
\DeclareOption{slgp}{%
  \course{Gest{\~a}o Pública}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Gest{\~a}o Pública}
}
\DeclareOption{sla}{%
  \course{Administra\c{c}{\~a}o}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Administra\c{c}{\~a}o}
}
\DeclareOption{slce}{%
  \course{Ci{\^e}ncias Econômicas}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncias Econômicas}
}
\DeclareOption{sldir}{%
  \course{Direito}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Direito}
}
\DeclareOption{slri}{%
  \course{Rela\c{c}ões Internacionais}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Rela\c{c}ões Internacionais}
}
%
% Campus S{\~a}o Borja
%
\DeclareOption{sbcp}{%
  \course{Ci{\^e}ncias Sociais - Ci{\^e}ncia Pol\'{\i}tica}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncias Sociais}
}
\DeclareOption{sbch}{%
  \course{Ci{\^e}ncias Humanas}
  \modalidade{Licenciatura}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Licenciado em Ci{\^e}ncias Humanas}
}
\DeclareOption{sbjor}{%
  \course{Jornalismo}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Jornalismo}
}
\DeclareOption{sbpp}{%
  \course{Publicidade e Propaganda}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Publicidade e Propaganda}
}
\DeclareOption{sbrp}{%
  \course{Rela\c{c}ões Públicas}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Rela\c{c}ões Públicas}
}
\DeclareOption{sbss}{%
  \course{Servi\c{c}o Social}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Servi\c{c}o Social}
}
%
% Campus S{\~a}o Gabriel
%
\DeclareOption{sgbio}{%
  \course{Biotecnologia}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Biotecnologia}
}
\DeclareOption{sgbic}{%
  \course{Ci{\^e}ncias Biol{\'o}gicas}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Ci{\^e}ncias Biol{\'o}gicas}
}
\DeclareOption{sgbil}{%
  \course{Ci{\^e}ncias Biol{\'o}gicas}
  \modalidade{Licenciatura}
  \campus{S{\~a}o Gabriel}
	\providecommand{\titulacaoEm}{Licenciado em Ci{\^e}ncias Biol{\'o}gicas}
}
\DeclareOption{sgef}{%
  \course{Engenharia Florestal}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Florestal}
}
\DeclareOption{sggea}{%
  \course{Gest{\~a}o Ambiental}
  \modalidade{Bacharelado}
  \campus{S{\~a}o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Gest{\~a}o Ambiental}
}
%
% Campus Uruguaiana
%  
\DeclareOption{ursta}{%
  \course{Aquicultura}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Tecn{\'o}logo em Aquicultura}
}
\DeclareOption{urlcn}{%
  \course{Ci{\^e}ncias da Natureza}
  \modalidade{Licenciatura}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Licenciado em Ci{\^e}ncias da Natureza}
}
\DeclareOption{urlef}{%
  \course{Educa\c{c}{\~a}o F\'{\i}sica}
  \modalidade{Licenciatura}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Licenciado em Educa\c{c}{\~a}o F\'{\i}sica}
}
\DeclareOption{urenf}{%
  \course{Enfermagem}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Enfermagem}
}
\DeclareOption{urfar}{%
  \course{Farm{\'a}cia}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Farm{\'a}cia}
}
\DeclareOption{urfis}{%
  \course{Fisioterapia}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Fisioterapia}
}
\DeclareOption{urmed}{%
  \course{Medicina}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Medicina}
}
\DeclareOption{urvet}{%
  \course{Medicina Veterin{\'a}ria}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Medicina Veterin{\'a}ria}
}
%==============================================================================
%
% Defini\c{c}ões para os cursos de cursos de p{\'o}s-gradua\c{c}{\~a}o
%
%==============================================================================
\DeclareOption{ppgee}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Engenharia El{\'e}trica}
    \providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Engenharia El{\'e}trica}
    \campus{Alegrete}
}

\DeclareOption{ppgeng}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Engenharia}
    \providecommand{\areacourse}{Tecnologia de Materiais}
    \providecommand{\titulacaoEm}{Engenharia}
    \campus{Alegrete}
}

\DeclareOption{ppges}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Engenharia de Software}
    \providecommand{\areacourse}{Engenharia de Software}
    \providecommand{\titulacaoEm}{Engenharia de Software}
    \campus{Alegrete}
}
%
% Campus Bagé
%
\DeclareOption{ppgcap}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Computa\c{c}{\~a}o Aplicada}
    \providecommand{\areacourse}{Tecnologias para a Produ\c{c}{\~a}o Agropecu{\'a}ria}
    \providecommand{\titulacaoEm}{Computa\c{c}{\~a}o Aplicada}
    \campus{Bag{\'e}}
}

\DeclareOption{ppgcem}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ci\^{e}ncia e Engenharia de Materiais}
    \providecommand{\areacourse}{Engenharia de Materiais e Metalúrgica}
    \providecommand{\titulacaoEm}{Ci\^{e}ncia e Engenharia de Materiais}
    \campus{Bag{\'e}}
}

\DeclareOption{ppgec}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ensino de Ci{\^e}ncias}
    \providecommand{\areacourse}{Ensino de Ci\^encias}
    \providecommand{\titulacaoEm}{Ensino de Ci{\^e}ncias}
    \campus{Bag{\'e}}
}

\DeclareOption{ppgmae}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ensino}
    \providecommand{\areacourse}{Ensino}
    \providecommand{\titulacaoEm}{Ensino de Ci{\^e}ncias}
    \campus{Bag{\'e}}
}

\DeclareOption{ppgel}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ensino de L\'{\i}nguas}
    \providecommand{\areacourse}{Linguagem e Doc\^encia}
    \providecommand{\titulacaoEm}{Ensino de L\'{\i}nguas}
    \campus{Bag{\'e}}
}
%
% Campus Ca\c{c}apava do Sul
%
\DeclareOption{ppgtm}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Tecnologia Mineral}
    \providecommand{\areacourse}{Tecnologia Mineral}
    \providecommand{\titulacaoEm}{Tecnologia Mineral}
    \campus{Ca\c{c}apava do Sul}
}

\DeclareOption{profmat}{%
    \course{Mestrado Profissional em Matemática em Rede Nacional}
    \providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Matemática}
    \campus{Ca\c{c}apava do Sul}
}
%
% Campus Jaguar{\~a}o
%
\DeclareOption{ppgedu}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Educa\c{c}{\~a}o}
    \providecommand{\areacourse}{Planejamento Educacional}
    \providecommand{\titulacaoEm}{Educa\c{c}{\~a}o}
    \campus{Jaguar{\~a}o}
}
%
% Campus Santana do Livramento
%
\DeclareOption{ppga}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Administra\c{c}{\~a}o}
    \providecommand{\areacourse}{Administra\c{c}{\~a}o}
    \providecommand{\titulacaoEm}{Administra\c{c}{\~a}o}
    \campus{Santana do Livramento}
}
%
% Campus São Borja
%
\DeclareOption{ppgcic}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Comunica\c{c}{\~a}o e Ind\'ustria Criativa}
    \providecommand{\areacourse}{Comunica\c{c}{\~a}o e Ind\'ustria Criativa}
    \providecommand{\titulacaoEm}{Comunica\c{c}{\~a}o e Ind\'ustria Criativa}
    \campus{S\~ao Borja}
}

\DeclareOption{ppgpp}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Pol\'{\i}ticas P\'ublicas}
    \providecommand{\areacourse}{Elabora\c{c}{\~a}o, Implementa\c{c}{\~a}o e Avalia\c{c}{\~a}o de Pol\'{\i}ticas P\'ublicas para o Desenvolvimento Regional em \'Areas de Fronteira}
    \providecommand{\titulacaoEm}{Pol\'{\i}ticas P\'ublicas}
    \campus{S\~ao Borja}
}

%
% Campus S{\~a}o Gabriel
%
\DeclareOption{ppgcb}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ci{\^e}ncias Biol{\'o}gicas}
    \providecommand{\areacourse}{Ci{\^e}ncias Biol{\'o}gicas}
    \providecommand{\titulacaoEm}{Ci{\^e}ncias Biol{\'o}gicas}
    \campus{S{\~a}o Gabriel}
}
%
% Campus Uruguaiana
%
\DeclareOption{ppgbioq}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Bioqu\'{\i}mica}
    \providecommand{\areacourse}{Bioprospecção Molecular}
    \providecommand{\titulacaoEm}{Bioqu\'{\i}mica}
    \campus{Uruguaiana}
}

\DeclareOption{ppgca}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ci{\^e}ncia Animal}
    \providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ci{\^e}ncia Animal}
    \campus{Uruguaiana}
}

\DeclareOption{ppgcf}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Ci{\^e}ncias Farmac{\^e}uticas}
    \providecommand{\areacourse}{Farm\'acia}
    \providecommand{\titulacaoEm}{Ci{\^e}ncias Farmac{\^e}uticas}
    \campus{Uruguaiana}
}

\DeclareOption{pmpgcf}{%
    \course{Programa Multic{\^e}ntrico de P{\'o}s-Gradua\c{c}{\~a}o em Ci{\^e}ncias Fisiol{\'o}gicas}
    \providecommand{\areacourse}{Fisiologia}
    \providecommand{\titulacaoEm}{Ci{\^e}ncias Fisiol{\'o}gicas}
    \campus{Uruguaiana}
}

\DeclareOption{ppgecqvs}{%
    \course{Programa de P{\'o}s-Gradua\c{c}{\~a}o em Educação em Ciências: Química da Vida e Saúde}
    \providecommand{\areacourse}{Educação em Ciências}
    \providecommand{\titulacaoEm}{Educação em Ciências: Química da Vida e Saúde}
    \campus{Uruguaiana}
}

%==============================================================================
%
% Outros documentos necess{\'a}rios para a produ\c{c}{\~a}o dos documentos
%
%==============================================================================

\unipampa@novodoc{formais} 						% pacote para defini\c{c}ões formais - defini\c{c}ões, teoremas, provas, etc.

%==============================================================================
%
% Declara\c{c}ões de l\'{\i}ngua e estrutura base dos documentos
%
%==============================================================================

\DeclareOption{english}{\@englishtrue\OptionNotUsed}\newif\if@english
\DeclareOption{noabntcite}{\@noabntcitetrue\OptionNotUsed}\newif\if@noabntcite
\DeclareOption{oneside}{\AtEndOfClass{\@twosidefalse}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax


%==============================================================================
%
% Inclus{\~a}o de op\c{c}ões da classe 'report' e outros pacotes e arquivos
%
%==============================================================================

\LoadClass[12pt,a4paper,twoside]{report} % era report

\RequirePackage{xspace}
\RequirePackage{keyval}
\RequirePackage{fixltx2e}

\RequirePackage[english,brazilian]{babel}
\input{brazilian.babel}
\input{english.babel}
\if@english
        \selectlanguage{english}
        \AtBeginDocument{\selectlanguage{english}}
\fi
\RequirePackage{lastpage}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{ccaption}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}

%%%%%%%%%%%%%%%
%\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

%%%%%%%%%%%%%%%


%\RequirePackage[tocindentauto,tocfullflat]{tocstyle}

\RequirePackage[tocflat]{tocstyle}

%\settocfeature[toc][0]{entryhook}{\bfseries\uppercase}
%\settocfeature[toc][1]{entryhook}{\bfseries}
\settocfeature[toc]{entryhook}{\bfseries}
\settocfeature[toc][0]{entryhook}{\bfseries\uppercase}
\settocfeature[toc][1]{entryhook}{\bfseries}
\settocfeature[toc][2]{entryhook}{\bfseries}
\settocfeature[toc][3]{entryhook}{\bfseries}
\settocstylefeature{pagenumberbox}{\pnbox}
\settocfeature[lof][1]{entryhook}{\figurename\hspace{0.2em}} % valor calculado no olho. Deveria ser um espa\c{c}o de tamanho fixo, mas ~ tem tamanho vari{\'a}vel
\settocfeature[lot][1]{entryhook}{\tablename\hspace{0.2em}}
%\settocfeature[lof][1]{raggedhook}{--}

\RequirePackage[%
        bookmarksnumbered=true,
        breaklinks=true,
        unicode=true,
        colorlinks=true,
        anchorcolor=black,
        citecolor=black,
        filecolor=black,
        linkcolor=black,
        urlcolor=black
]{hyperref}[2009/10/09]
\RequirePackage[all]{hypcap}

\ifxetex
  \usepackage{tgtermes}
\else
  \usepackage{times}              % pacote para usar fonte Adobe Times
  \RequirePackage[T1]{fontenc}
\fi

\if@noabntcite
\else
\RequirePackage[
	alf,
	%abnt-etal-text=default,
	%abnt-etal-text=emph,
	%abnt-url-package=hyperref,
    abnt-emphasize=bf]{abntex2cite}
\fi

% espa\c{c}amento entre as linhas
\newcommand{\setlinespacing}{\setstretch{1.415}}
\setlinespacing

% estes valores est{\~a}o no segundo par{\'a}grafo da introdu\c{c}{\~a}o dos documentos da biblioteca e, portanto, est{\~a}£o corretos
% a numera{\~a}§{\~a}£o deve estar a 20mm do topo, logo headsep=30mm-20mm = 10mm
\RequirePackage[top=30mm,bottom=20mm,left=30mm,right=30mm,headsep=10mm]{geometry}
%\RequirePackage{calc}

\vfuzz=30pt % prevent "overfull \vbox while \output is active" warning

%==============================================================================
% Margens do texto
%==============================================================================

% indenta{\~a}§{\~a}£o dos par{\~a}¡grafos (medido no olho)
\setlength{\parindent}{3em}
\AtBeginDocument{\setlength{\parskip}{0mm}}

%==============================================================================
% Numera{\~a}§{\~a}£o das p{\~a}¡ginas
%==============================================================================
\def\ps@iiufrgs{
        \let\@oddfoot\@empty
        \let\@evenfoot\@empty
        \def\@evenhead{{\small\thepage}}
        \def\@oddhead{\hspace*{\fill}{\small\thepage}}
}
\pagestyle{empty}
\let\ps@plain\ps@empty

%==============================================================================
% Defini\c{c}{\~a}o de autor(es), orientador e coorientador
%==============================================================================
\newcounter{ii@authorcount}
\renewcommand{\author}[2]{
        \addtocounter{ii@authorcount}{1}
        \expandafter\gdef\csname @author\alph{ii@authorcount}last\endcsname{#1}
        \expandafter\gdef\csname @author\alph{ii@authorcount}first\endcsname{#2}
        \expandafter\gdef\csname @author\alph{ii@authorcount}\endcsname{#2 #1}
}
\DeclareRobustCommand{\advisor}[3][]{
        \gdef\@advisorlast{#2}
        \gdef\@advisorfirst{#3}
        \gdef\@advisor{#1~#3 #2}
}
\DeclareRobustCommand{\coadvisor}[3][]{
        \gdef\@coadvisorlast{#2}
        \gdef\@coadvisorfirst{#3}
        \gdef\@coadvisor{#1~#3 #2}
}

%==============================================================================
% Defini\c{c}{\~a}o dos membros da banca e suas institui\c{c}ões
%==============================================================================
\newcounter{ii@bancacount}
\newcounter{ii@instcount}

\newcommand{\banca}[3][]{
        \addtocounter{ii@bancacount}{1}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}last\endcsname{#1}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}first\endcsname{#2}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}\endcsname{#1 #3 #2}
}

\newcommand{\inst}[1]{
        \addtocounter{ii@instcount}{1}
        \expandafter\gdef\csname @inst\alph{ii@instcount}\endcsname{#1}
}

%==============================================================================
% Defini\c{c}{\~a}o das palavras-chave (max. 10)
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
        \@ifundefined{keywb}{}{. \keywb}%
        \@ifundefined{keywc}{}{. \keywc}%
        \@ifundefined{keywd}{}{. \keywd}%
        \@ifundefined{keywe}{}{. \keywe}%
        \@ifundefined{keywf}{}{. \keywf}%
        \@ifundefined{keywg}{}{. \keywg}%
        \@ifundefined{keywh}{}{. \keywh}%
        \@ifundefined{keywi}{}{. \keywi}%
        \@ifundefined{keywj}{}{. \keywj}%
}

%==============================================================================
% Redefini\c{c}{\~a}o da data (para ter m{\^e}s e ano separados)
%==============================================================================
\renewcommand{\date}[2]{
        \gdef\@publmonth{#1}
        \gdef\@publyear{#2}%
}
\date{\monthname}{\number\year}

%==============================================================================
% Defini\c{c}{\~a}o padr{\~a}o da folha de rosto.
% Os dados espec\'{\i}ficos do tipo de trabalho (disserta\c{c}{\~a}o, tese, etc.) s{\~a}o
% informados definindo-se o comando \titlepagespecificinfo. Veja os
% arquivos .def inclu\'{\i}dos com a classe.
%==============================================================================
\newlength{\titlepagewinwidth}\setlength{\titlepagewinwidth}{95mm}
\newlength{\titlepagewinheight}\setlength{\titlepagewinheight}{64mm}
\newlength{\titlepagewinvoffset}\setlength{\titlepagewinvoffset}{112mm}
\newlength{\approvalpagewinvoffset}\setlength{\approvalpagewinvoffset}{30mm}
\newlength{\bancapagewinvoffset}\setlength{\bancapagewinvoffset}{40mm}

\newcommand{\location}[2]{
        \gdef\@city{#1}
        \gdef\@state{#2}
}
\renewcommand{\maketitle}{%
  \setstretch{0.92}
	\hyphenpenalty 10000 
	\exhyphenpenalty 10000
  \hypersetup{%
    pdftitle={\@title},%
    pdfauthor={%
      \@authora%
      \@ifundefined{@authorb}{}{, \@authorb}%
      \@ifundefined{@authorc}{}{, \@authorc}%
      \@ifundefined{@authord}{}{, \@authord}%
    },%
    pdfkeywords={%
      \@ifundefined{keywa}{}{\keywa}%
      \@ifundefined{keywb}{}{. \keywb}%
      \@ifundefined{keywc}{}{. \keywc}%
      \@ifundefined{keywd}{}{. \keywd}%
      \@ifundefined{keywe}{}{. \keywe}%
      \@ifundefined{keywf}{}{. \keywf}%
      \@ifundefined{keywg}{}{. \keywg}%
      \@ifundefined{keywh}{}{. \keywh}%
      \@ifundefined{keywi}{}{. \keywi}%
      \@ifundefined{keywj}{}{. \keywj}%
    }%
  }%
  \begin{titlepage}
      \thetitlepage
  \end{titlepage}%
  \clearpage
  \setcounter{page}{2}%
  %\@ifundefined{@cipspecificinfo}{\@makenominatapage}{\@makecippage}
  \@ifundefined{@cipspecificinfo}{}{\@makecippage}
  \setlinespacing
  \@ifundefined{@bancaa}{}{\folhadeaprovacao}%
}
\newcommand{\thetitlepage}{%
  \noindent\@topbox\\
  %\vspace{5.9ex}\\
  \vfill
  \centerline{\textbf{\@city}}
  \centerline{\textbf{\ii@date}}
  \vspace{8mm}
  \clearpage
  \noindent\@authorbox\\
  \vspace{5.9ex}\\
  \setstretch{0.95}
  \@ifundefined{titlepagespecificinfo}{}{
    \hspace*{\fill}\makebox[.56\textwidth][l]{%
      \parbox[t]{0.56\textwidth}{\lefthyphenmin=64\titlepagespecificinfo}%
    }%
    \vspace{5.5ex}\\
  }
  \@ifundefined{@advisor}{}{
    \hspace*{\fill}\makebox[.56\textwidth][l]{%
      \parbox[t]{0.56\textwidth}{\raggedright\lefthyphenmin=64\titlepageadvisorinfo}%
    }%
  }
  \vfill
  \centerline{\textbf{\@city}}
  \centerline{\textbf{\ii@date}}
  \vspace{8mm}
}
\def\@topbox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to \titlepagewinvoffset{%
                        \titlepagetopinfo\vfill\@winbox
                }
        }
}
\def\@authorbox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to \titlepagewinvoffset{%
                        \titlepageauthorinfo\vfill\@authorwinbox
                }
        }
}
\def\@authorwinbox{%
%       \fbox{
        \parbox[b]{\titlepagewinwidth}{%
        \centering\vbox to \titlepagewinheight{%
                \vspace*{5ex}
                {\large\MakeUppercase{\textbf{\@title}}\par}
                \vfill
        }%
       }%
}
\def\@winbox{%
%       \fbox{
        \parbox[b]{\titlepagewinwidth}{%
        \centering\vbox to \titlepagewinheight{%
                \vspace*{5ex}
                \MakeUppercase{\textbf{\@authora}}\\
                \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}%
                \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}%
                \@ifundefined{@authord}{}{\MakeUppercase{\@authord}\\}%
                \vspace{3cm}
                {\large\MakeUppercase{\textbf{\@title}}\par}
                \vfill
        }}%
%       }%
}

\newcommand{\titlepagetopinfo}{%
        \MakeUppercase{\bf\UNIPAMPA}\\
        %\MakeUppercase{Campus \@city}\\
        %\@ifundefined{@dept}{}{\MakeUppercase{\csname dept\@dept\endcsname}\\}%
        %\MakeUppercase{\@course}\\
}
\newcommand{\titlepageauthorinfo}{%
                \MakeUppercase{\textbf{\@authora}}\\
                \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}%
                \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}%
                \@ifundefined{@authord}{}{\MakeUppercase{\@authord}\\}%
                %\vspace{3cm}
                %{\large\textbf{\@title}\par}
}
\newcommand{\titlepageadvisorinfo}{%
        \@ifundefined{@advisor}{}{\advisorname:~\@advisorfirst\ \@advisorlast\\}%
        \@ifundefined{@coadvisor}{}{\coadvisorname:~\@coadvisorfirst\ \@coadvisorlast\\}%
}

%==============================================================================
% Defini\c{c}{\~a}o da folha de aprova\c{c}{\~a}o
%==============================================================================

\newcommand{\defesa}[3]{        
        \gdef\@defday{#1}
        \gdef\@defmonth{#2}%
        \gdef\@defyear{#3}%
}

\newcommand{\folhadeaprovacao}{%
  \clearpage
  %\noindent\@approvalbox\\
  \noindent\parbox[t]{\textwidth}{%
       \centering%
       \vbox to \approvalpagewinvoffset{%
           \titlepageauthorinfo
           \vfill
           %\@approvalwinbox
           \parbox[b]{\titlepagewinwidth}{%
           %\centering\vbox to .5\titlepagewinheight{%
					      \hyphenpenalty 10000 
								\exhyphenpenalty 10000
                \vspace*{20mm}
                {\large\MakeUppercase{\textbf{\@title}}\par}
            }
       %}
       \vspace{36pt}
       \setstretch{0.95}
       \vfill
       \@ifundefined{titlepagespecificinfo}{}{
             \hspace*{\fill}\makebox[.56\textwidth][l]{%
                 \parbox[t]{0.56\textwidth}{\lefthyphenmin=64\titlepagespecificinfo}%
             }%
             \vspace{12pt}\\
        }
				\@ifundefined{areacourse}{}{
				    \hspace*{\fill}\makebox[\textwidth][r]{%
				        \parbox[t]{0.56\textwidth}{{\'A}rea de concentra\c{c}{\~a}o: \righthyphenmin=64\areacourse}%
				    }%
				    %\vspace{18pt}\\
				}
     }
  }
  \vfill
  %\parbox[b]{.5\titlepagewinwidth}{%
  %      \centering\vbox to .5\titlepagewinheight{%
  %              \vspace*{20mm}
  %				       }%
	%}
  \noindent\@bancabox\\
}

%\def\@approvalbox{%
%        \parbox[t]{\textwidth}{%
%                \centering%
%                \vbox to \approvalpagewinvoffset{%
%                        \titlepageauthorinfo
%                        \vfill
%                        %\@approvalwinbox
%                        \parbox[b]{\titlepagewinwidth}{%
%                               \centering\vbox to .5\titlepagewinheight{%
%                                   \vspace*{20mm}
%                                   {\large\MakeUppercase{\textbf{\@title}}\par}
%                               }%
%                        }%
%                        \vspace{10mm}
%                        \setstretch{0.95}
%                        \@ifundefined{titlepagespecificinfo}{}{
%                           \hspace*{\fill}\makebox[.56\textwidth][l]{%
%                              \parbox[t]{0.56\textwidth}{\lefthyphenmin=64\titlepagespecificinfo}%
%                           }%
%                           \vspace{12pt}\\
%                        }%
%				                \@ifundefined{areacourse}{}{
%				                   \hspace*{\fill}\makebox[\textwidth][r]{%
%				                      \parbox[t]{0.56\textwidth}{{\'a}rea de concentra\c{c}{\~a}o: \righthyphenmin=64\areacourse}%
%				                   }%
%				                   \vspace{18pt}\\
%				                }
%                        \vfill
%                }
%        }
%}
%\def\@approvalwinbox{%
        %\parbox[b]{\titlepagewinwidth}{%
        %\centering\vbox to .5\titlepagewinheight{%
                %\vspace*{20mm}
               % {\large\MakeUppercase{\textbf{\@title}}\par}
     %   }%
    %   }%
%}

\def\@bancabox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to .6\textheight{%
                        \vfill
                        \@newbancawinbox
                }
        }
}

\def\@newbancawinbox{%
        %\raggedright%\framebox[.9\textwidth]{%
        
						 \centering
             \begin{minipage}{.9\textwidth}%
						    \centering
                \setstretch{0.95}
                \vspace*{0.2ex}
                \setlength{\parindent}{0em}%
                \setlength{\parskip}{1.3ex}%
                \textapproval\ \@defday\ de \@defmonth\ de \@defyear.\\
    						%\vspace*{12pt}
    						Banca examinadora:\\
    						%\hspace*{\fill}
    						\begin{tabular}{p{10mm}cp{10mm}}
    						          & &\\ & &\\ & &\\ 
    						          \hline
      										&\@advisor&\\ 
      										&\advisorname&\\
      										\@ifundefined{\@instorientador}{&Universidade Federal do Pampa&}{&\@instorientador&}\\
      										\@ifundefined{@bancaa}{}{& &\\ & &\\ & &\\ \hline &\@bancaa& \\ &\@insta& \\}%
      										\@ifundefined{@bancab}{}{& &\\ & &\\ & &\\ \hline &\@bancab& \\ &\@instb& \\}%
      										\@ifundefined{@bancac}{}{& &\\ & &\\ & &\\ \hline &\@bancac& \\ &\@instc& \\}%
      										\@ifundefined{@bancad}{}{& &\\ & &\\ & &\\ \hline &\@bancad& \\ &\@instd& \\}%
      										\@ifundefined{@bancae}{}{& &\\ & &\\ & &\\ \hline &\@bancae& \\ &\@inste& \\}%
      					\end{tabular}
   							\vspace*{20mm}
								\vfill
             \end{minipage}%
             \vspace*{10mm}
}

\def\@bancawinbox{%
        \parbox[b]{\titlepagewinwidth}{%
           \centering\vbox to \titlepagewinheight{%
                \centering
    					  \noindent Disserta\c{c}{\~a}o defendida e aprovada em: \@defday\ de \@defmonth\ de \@defyear.\\
    						\vspace{12pt}
    						\noindent Banca examinadora:
    						%\hspace*{\fill}
    						\makebox[\textwidth][c]{%
      							\fbox{\parbox[c]{\textwidth}{%\lefthyphenmin=64%
                          \setstretch{0.95}
     										  \vspace{24pt}\@advisor\\ \advisorname \\%
      										\@ifundefined{@bancaa}{}{\ \vspace{24pt}{\@bancaa}\\}%
      										\@ifundefined{@bancab}{}{\ \vspace{24pt}{\@bancab}\\}%
      										\@ifundefined{@bancac}{}{\ \vspace{24pt}{\@bancac}\\}%
      										\@ifundefined{@bancad}{}{\ \vspace{24pt}{\@bancad}\\}%
      										\@ifundefined{@bancae}{}{\ \vspace{24pt}{\@bancae}\\}%
   							 		      \vfill
   							 		}%
        				    \vspace{20mm}}
        				}%
          }%
     }
}


%==============================================================================
% Cataloga\c{c}{\~a}oo na fonte (CIP) 
%==============================================================================
\newcommand{\@makecippage}{%
        \clearpage%
        \vfill
        \begin{center}
           %\centering\vbox to \titlepagewinheight{\iiu@cipwindow}
           %\centering\vbox to .9\textheight{\iiu@cipwindow}
					 \centering\vbox to .6\textheight{\iiu@cipwindow}
        \end{center}
        %\nominata
}

\newcommand{\cutter}[1]{\gdef\@cutter{#1}}

%
% defini\c{c}{\~a}o do quadro de cataloga\c{c}{\~a}o bibliogr{\'a}fica
%
\def\iiu@cipwindow{%
        \vfill
		\begin{center}
				Ficha catalogr{\'a}fica elaborada automaticamente com os dados fornecidos pelo(a) autor(a) 
				atrav{\'e}s do M{\'o}dulo de Biblioteca do Sistema GURI (Gest{\~a}o Unificada de Recursos Institucionais).
		\end{center}

        \framebox[\textwidth]{%
        \begin{minipage}{.9\textwidth}%
				        \ttfamily
                \vspace*{0.2ex}
                \setlength{\parindent}{1.5em}%
                \setlength{\parskip}{1.3ex}%
                \hspace{-12mm}\parbox[t]{5mm}{\@cutter}
                \hspace{12mm}\parbox[t]{.9\textwidth}{
                        \setlength{\parindent}{1.5em}%
                        \setlength{\parskip}{1.3ex}%
                				\noindent\@authoralast, \@authorafirst\par
                				\@title\ / \@authora. \par%\ -- \@publmonth, \@publyear. \par
                				\pageref{LastPage}~f.: il. \par
								%\pageref{LastPage} p.\par
								\advisorname: \@advisorfirst\ \@advisorlast\\
								\@ifundefined{@coadvisor}{}{\hspace*{\parindent}\coadvisorname: \@coadvisorfirst\ \@coadvisorlast}\\
                				\hspace*{\parindent}\@cipspecificinfo\ -- Universidade Federal do Pampa, \@course,  \@publyear. \par
                				%``Orienta\c{c}{\~a}o: \@advisorfirst\ \@advisorlast\@ifundefined{@coadvisor}{}{; Coorienta\c{c}{\~a}o: \@coadvisorfirst\ \@coadvisorlast}''.\par
               					 \@cipkw I.~T\'{\i}tulo.\\
                \vspace{0.2ex}}
        \end{minipage}
        }%
}

%==============================================================================
% Dedicat{\'o}ria
%==============================================================================

\newenvironment{dedicatoria}{\clearpage\begin{flushright}\ \vfill\begin{minipage}{.5\textwidth}}{\end{minipage}\end{flushright}}

%==============================================================================
% Ep\'{\i}grafe
%==============================================================================

\newenvironment{epigrafe}{\begin{dedicatoria}}{\end{dedicatoria}}

%==============================================================================
% Ajuste do sum{\'a}rio
%==============================================================================
\renewcommand{\@dotsep}{0}
\newlength{\dottedspace}
\newcommand{\pnbox}[1]{\settowidth{\dottedspace}{\bfseries#1}\hb@xt@\dottedspace{#1}}

\newcommand\samepagechapter{
                    %\thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\setcounter{tocdepth}{3}
\newif\if@aftertoc
\@aftertocfalse
\renewcommand{\tableofcontents}{%
  \chapter*{\contentsname}
  \vspace{0.4\baselineskip}
  \setstretch{0.95}
  \@starttoc{toc}\@aftertoctrue%
  % retorna o espa{\~a}§amento ao seu valor original
  \setlinespacing
}
\renewcommand{\listoffigures}{%
  \chapter*{\listfigurename}
  \setstretch{0.95}
  \@starttoc{lof}%
  % retorna o espa{\~a}§amento ao seu valor original
  \setlinespacing
}
\renewcommand{\listoftables}{%
  \chapter*{\listtablename}
  \setstretch{0.95}
  \@starttoc{lot}%
  % retorna o espa{\~a}§amento ao seu valor original
  \setlinespacing
}

%==============================================================================
% Defini{\~a}§{\~a}£o das listas de abreviaturas e siglas e de s{\~a}­mbolos
%==============================================================================
\newenvironment{listofabbrv}[1]{
        \chapter*{\listabbrvname}
        \begin{list}{\textbf{??}}{
                \settowidth{\labelwidth}{#1}
                \setlength{\labelsep}{1em}
                \setlength{\itemindent}{0mm}
                \setlength{\leftmargin}{\labelwidth}
                \addtolength{\leftmargin}{\labelsep}
                \setlength{\rightmargin}{0mm}
                \setlength{\itemsep}{.1\baselineskip}
                \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
        }
}{
        \end{list}
}
\newenvironment{listofsymbols}[1]{
        \chapter*{\listsymbolname}
        \begin{list}{\textbf{??}}{
                \settowidth{\labelwidth}{#1}
                \setlength{\labelsep}{1em}
                \setlength{\itemindent}{0mm}
                \setlength{\leftmargin}{\labelwidth}
                \addtolength{\leftmargin}{\labelsep}
                \setlength{\rightmargin}{0mm}
                \setlength{\itemsep}{.1\baselineskip}
                \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
        }
}{
        \end{list}
}

%==============================================================================
% Resumo (abstract) e Abstract (englishabstract)
%==============================================================================
\renewenvironment{abstract}{%
        \chapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
    %\par\vfill
    %\\
    \\

    \vspace{\parskip}\noindent\textbf{\keywordsname:} \@abstractkw.
}

\newenvironment{englishabstract}[1]{%
        \if@openright\cleardoublepage\else\clearpage\fi%
        \gdef\@englishkeywords{#1}%
        \iflanguage{english}{
                \begin{otherlanguage}{brazilian}
        }{
                \begin{otherlanguage}{english}
        }
        %\begin{center}%
        %    \textbf{#1}%
        %    \vspace{12pt}
        %\end{center}
        \samepagechapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
  \vspace{12pt}

  \noindent\textbf{\keywordsname:} \@englishkeywords.
\end{otherlanguage}
}

\newenvironment{oldenglishabstract}[2]{%
        \if@openright\cleardoublepage\else\clearpage\fi%
        \gdef\@englishkeywords{#2}%
        \iflanguage{english}{
                \begin{otherlanguage}{brazilian}
        }{
                \begin{otherlanguage}{english}
        }
        \begin{center}%
            \textbf{#1}%
            \vspace{12pt}
        \end{center}
        \samepagechapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
  \vspace{12pt}

  \noindent\textbf{\keywordsname:} \@englishkeywords.
\end{otherlanguage}
}


%==============================================================================
% Formata\c{c}{\~a}o dos cap\'{\i}tulos.
% Os comandos \@chapter e \@schapter s{\~a}o redefinidos para que a
% numera\c{c}{\~a}o de p{\'a}ginas seja correta (deve aparecer somente a partir do
% primeiro cap\'{\i}tulo do texto, mas n{\~a}o nas p{\'a}ginas iniciais de
% cap\'{\i}tulos).
% Os comandos \@makechapterhead e \@makeschapterhead fazem a
% formata\c{c}{\~a}o dos t\'{\i}tulos propriamente ditos.
%==============================================================================
\newcounter{schapter}
\newcommand{\ii@chapterfont}{\@setfontsize\Large{12}{18}}
\def\@chapapp{}
\def\@chapappextra{}
\def\@chappositioning{\noindent}
\def\@chapter[#1]#2{%
        \xdef\Hy@chapapp{CHAPTER}%
        \gdef\theHchapter{\thechapter}%
        \refstepcounter{chapter}%
        \addcontentsline{toc}{chapter}{\@chapapp\thechapter~\@chapappextra#1}%
        %\addtocontents{lof}{\protect\addvspace{10\p@}}%
        %\addtocontents{lot}{\protect\addvspace{10\p@}}%
        %\addtocontents{lol}{\protect\addvspace{10\p@}}%
        \pagestyle{iiufrgs}\let\ps@plain\ps@iiufrgs%
        \@makechapterhead{#2}{\@chappositioning}\@afterheading

}

\def\@makechapterhead#1#2{%
        %\vspace*{90pt}
        %\vspace{12pt}
        \reset@font{#2{\ii@chapterfont\textbf{\@chapapp\thechapter\hphantom{~}\@chapappextra\MakeUppercase{#1}}\par}}
        \addvspace{\baselineskip}
        \noindent
        %\par
}
\def\@schapter#1{%
        \xdef\Hy@chapapp{SCHAPTER}%
        \refstepcounter{schapter}%
        \if@aftertoc%
            \hyperdef{SCHAPTER}{\theschapter}{}%
            \@makeschapterhead{#1}\@afterheading%
            \addcontentsline{toc}{chapter}{\@chapapp\xspace{}\@chapappextra#1}%
        \else%
            \pdfbookmark[0]{#1}{MUTESCHAPTER.\theschapter}%
            \@makeschapterhead{#1}\@afterheading%
        \fi%
        \addtocontents{lof}{\protect\addvspace{10\p@}}%
        \addtocontents{lot}{\protect\addvspace{10\p@}}%
}
\def\@makeschapterhead#1{%
        %\vspace*{90pt}
        \reset@font\centerline{\ii@chapterfont\textbf{\MakeUppercase{\@chapapp\xspace{}\@chapappextra#1}}}
        \addvspace{18pt}
}
\renewcommand{\appendix}[1][\appendixname]{
    \setcounter{chapter}{0}%
    \renewcommand{\thechapter}{\Alph{chapter}}%
    \gdef\@chapapp{\texorpdfstring{\MakeUppercase{#1}}{#1}\space}%
    \gdef\@chapappextra{--\space}%
    \gdef\@chappositioning{\centering}
}
\newcommand{\annex}{\appendix[\annexname]}

%==============================================================================
% Formata{\~a}§{\~a}£o das se{\~a}§{\~a}µes
%==============================================================================
\setcounter{secnumdepth}{5}
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\ }

% \renewcommand{\section}{%
%         \@startsection{section}{2}{0pt}{18pt}{18pt}{\reset@font\normalsize\bfseries}
% }
%\titleformat*{\section}{\reset@font\normalsize\bfseries}
\titleformat{\section}[hang]{\bfseries}{\thesection~}{0pt}{}
\titlespacing\section{0pt}{1.5\baselineskip}{\baselineskip}
\titleformat*{\subsection}{\reset@font\normalsize\bfseries}
\titlespacing\subsection{0pt}{1.5\baselineskip}{\baselineskip}
\titleformat*{\subsubsection}{\reset@font\normalsize\itshape}
\titlespacing\subsubsection{0pt}{1\baselineskip}{0.5\baselineskip}
\titleformat*{\paragraph}{\reset@font\normalsize}
\titlespacing\paragraph{0pt}{1\baselineskip}{0.5\baselineskip}
% \renewcommand{\subsection}{%
%         \@startsection{subsection}{3}{0pt}{18pt}{18pt}{\reset@font\bfseries}
% }
% \renewcommand{\subsubsection}{%
%         \@startsection{subsubsection}{4}{0pt}{18pt}{18pt}{\reset@font\itshape}
% }
% \renewcommand{\paragraph}{%
%         \@startsection{paragraph}{5}{0pt}{18pt}{18pt}{\reset@font}
% }

%==============================================================================
% Redefini{\~a}§{\~a}£o do formato de cita{\~a}§{\~a}µes longas
%==============================================================================
\renewenvironment{quote}{%
        \setstretch{1}%
        \small%
        \begin{list}{}{\setlength{\leftmargin}{40mm}\item\relax}
        \fontsize{10bp}{12bp}\selectfont%
}{%
        \end{list}
}


%==============================================================================
% Ajuste do espa\c{c}amento entre itens em 'enumerate', 'itemize' e 'description'
%==============================================================================
\renewenvironment{enumerate}{%
  \begin{list}{\arabic{enumi}.}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt\usecounter{enumi}}%
}{\end{list}}

\renewenvironment{itemize}{%
  \begin{list}{\bfseries\upshape $\bullet$}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt}%
}{\end{list}}

\renewenvironment{description}{
  \begin{list}{}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt \labelwidth\z@ \itemindent-\leftmargin \let\makelabel\descriptionlabel}
}{\end{list}}

%==============================================================================
% Ajuste das legendas das figuras e tabelas
%==============================================================================
%\RequirePackage{float}
%\floatstyle{plaintop}
%\restylefloat{figure}
%\restylefloat{table}

%\captiondelim{ -- }																												% separador entre no nome Figura e o seu nome
\captionsetup[figure]{justification=raggedright,singlelinecheck=false}    % t\'{\i}tulo das figuras alinhado à esquerda
\captionsetup[table]{justification=centering,singlelinecheck=false}       % t\'{\i}tulo das tabelas centralizado
%\setlength{\abovecaptionskip}{0pt}
%\setlength{\belowcaptionskip}{0pt}
%\setlength{\belowlegendskip}{0pt}



%\captiontitlefont{\small}
\newcommand{\fonte}[1]{\legend{{\small\raggedright Fonte: #1}}}                       % defini\c{c}{\~a}o da fonte de figuras e tabelas com fonte menor

%==============================================================
% ajustes manual de normaliza\c{c}{\~a}o (César Huegel - 12/2016)
% separador caption label 
% numera\c{c}{\~a}o cont\'{\i}nua para figuras, tabelas e equa\c{c}ões
%==============================================================
\DeclareCaptionLabelSeparator{traco}{ -- }
\captionsetup[figure]{labelformat=simple, labelsep=traco}
\captionsetup[table]{labelformat=simple, labelsep=traco}
\usepackage{chngcntr}
\counterwithout{figure}{chapter}
\renewcommand{\thefigure}{\arabic{figure}}
\counterwithout{table}{chapter}
\renewcommand{\thechapter}{\arabic{chapter}}
\counterwithout{equation}{chapter}
\renewcommand{\theequation}{\arabic{equation}}


\usepackage[hang,flushmargin]{footmisc} % remove indenta\c{c}{\~a}o nas notas de rodapé (César Huegel - 12/2016)



