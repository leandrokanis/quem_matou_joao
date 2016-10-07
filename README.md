# Quem Matou João?

## O problema

Você é um famoso detetive que foi contratado para solucionar o caso do assassinato do João. Há três testemunhas do crime, que também são os três suspeitos do crime, são eles: André, Bruno e Carlos. Sabe-se também que apenas um deles é o autor do crime.

Experiente, você sabe que colhendo depoimento dos suspeitos, encontrará alguma contradição que indicará quem está mentindo, logo, encontrando o assassino.

São colhidos então os depoimentos dos suspeitos:

##### André: 
> -- Não acho que foi o Bruno. João e ele eram muito amigos.

> -- Suspeito que tenha sido o Carlos. Pois João e Carlos eram inimigos mortais.

##### Bruno: 
> -- Eu sou inocente. Eu estava fora da cidade quando isso aconteceu.
> Aliás, eu nem conhecia esse tal de João.

##### Carlos: 
> -- Não sei o que houve. Mas eu achei uma coisa muito estranha quando cheguei na cidade naquele dia: 

> -- Vi André e Bruno juntos num carro perto a cena do crime.

Descubra qual dos três está mentindo e pegue o assassino.

This text you see here is *actually* written in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

## Guia de uso

1. Instale interpretador de Prolog [Swipl](http://www.swi-prolog.org/build/unix.html) 
2. Baixe ou clone este repositório
3. No shell, execute o comando ```swipl```
4. Carrege a biblioteca quem.pl com o comando ```[quem].```

## Comandos

Troque _x_ pro _a_ para André, _b_ para Bruno, _c_ para Carlos
- Para ver um depoimento:
```pl
?- depoimento(x).
```

- Para acusar um suspeito:
```pl
?- o_assassino_e(x).
```

- Para ver a resposta:
```pl
?- quem_matou_joao.
```

Licença
----

MIT


**Free Software, Hell Yeah!**
