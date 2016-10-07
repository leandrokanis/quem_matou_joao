# Quem Matou João?

## O problema

Você é um famoso detetive que foi contratado para solucionar o caso do assassinato do João. Há três testemunhas, que também são os três suspeitos do crime, são eles: André, Bruno e Carlos. Sabe-se também que apenas um deles é o autor do crime.

Experiente, você sabe que colhendo depoimento dos suspeitos, encontrará alguma contradição que indicará quem está mentindo, logo, encontrando o assassino.

São colhidos então os depoimentos dos suspeitos:

##### André: 
> -- Não acho que foi o Bruno. João e ele eram muito amigos.

> -- Suspeito que tenha sido o Carlos. Pois João e Carlos eram inimigos mortais.

##### Bruno: 
> -- Não sei o que houve, eu estava fora da cidade quando isso aconteceu.
> Aliás, eu nem conhecia esse tal de João. Aposto que foi o Carlos

##### Carlos: 
> -- Eu sou inocente. Só sei que eu achei uma coisa muito estranha quando cheguei na cidade naquele dia: 

> -- Vi André e Bruno passando num carro perto a cena do crime.

Descubra qual dos três está mentindo e pegue o assassino.


## Guia de uso

1. Instale o compilador de Prolog [Swipl](http://www.swi-prolog.org/build/unix.html) 
2. Baixe ou clone este repositório
3. No shell, execute o comando ```swipl```
4. Carrege a biblioteca quem.pl com o comando ```[quem].```

## Comandos

Substitua _x_ por _a_ para André, _b_ para Bruno, _c_ para Carlos
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
