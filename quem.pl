% --------------------------------
% --------------------------------
% ------ QUEM MATOU JOÃO? --------
% --------------------------------
% --------------------------------

% --- Fatos ---

% Andre:
depoimento(a, amigo(b)).			% Bruno era amigo João
depoimento(a, inimigo(c)).			% Carlos era inimigo de João

% Bruno:
depoimento(b, fora_da_cidade(b)).	% Eu estava fora da cidade
depoimento(b, desconhecido(b)).		% Eu não conhecia João

% Carlos:
depoimento(c, na_cidade(c)). 		% Eu estava na cidade
depoimento(c, na_cidade(a)). 		% Andre estava na cidade
depoimento(c, na_cidade(b)). 		% Bruno estava na cidade

% --- Regras ---

% Definindo as inconcistencias
inconsistente(amigo(X), inimigo(X)).
inconsistente(amigo(X), desconhecido(X)).
inconsistente(inimigo(X), desconhecido(X)).
inconsistente(fora_da_cidade(X), na_cidade(X)).

% define o assassino aquele que tem depoimento inconcistente
assassino(A) :-
	member(A, [a, b, c]),
	select(A, [a, b, c], Testemunhas),
	consistente(Testemunhas).

% as testemunhas são consistentes se o depoimento entre elas 
% não são inconsistentes
consistente(T) :-
	\+ depoimento_inconsistente(T).

% as testemunhas são inconsistentes se 
% ao menos parte do depoimento é inconsistente
depoimento_inconsistente(T) :-
	member(X, T),
	member(Y, T),
	X \= Y,
	depoimento(X, XT),
	depoimento(Y, YT),
	inconsistente(XT, YT).

% --- regras de exebĩção na tela ---

% escreve os depoimentos das testemunhas
depoimento(a) :-
	write('André: '), nl,
	write('- Não acho que foi o Bruno. João e ele eram muito amigos.'), nl,
	write('- Suspeito que tenha sido o Carlos. Pois João e Carlos eram inimigos mortais.'), nl, nl.
depoimento(b) :-
	write('Bruno: '), nl,
	write('- Eu sou inocente. Eu estava fora da cidade quando isso aconteceu.'), nl,
	write('- Aliás, eu nem conhecia esse tal de João.'), nl, nl.
depoimento(c) :-
	write('Carlos: '), nl,
	write('- Não sei o que houve. Mas eu achei uma coisa muito estranha quando cheguei na cidade naquele dia: '), nl,
	write('- Vi André e Bruno juntos num carro perto a cena do crime.'), nl, nl.

% palpite de assassino
o_assassino_e(Certo) :-
	assassino(A),
	Certo = A,
	write('Acertou, miseravi!').
o_assassino_e(Errado) :-
	assassino(A),
	\+ Errado = A,
	write('ERROU RUDE').

% troca a variável pelo nome da pessoa na hora de escrever
print(a) :-	write('Andre').
print(b) :- write('Bruno').
print(c) :-	write('Carlos').

% resposta do enigma
quem_matou_joao :-
	assassino(A),
	write('quem matou jogao foi '),
	print(A).
	