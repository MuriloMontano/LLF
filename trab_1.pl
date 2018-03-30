resolve(Solucao) :-
              Solucao = boliche(
                        equipe(_,_,_,_,_,_),
                        equipe(_,_,_,_,_,_),
                        equipe(_,_,_,_,_,_),
                        equipe(_,_,_,_,_,_),
                        equipe(_,_,_,_,_,_)),

	      exat_esquerda(A,B,Solucao),
	      strikes(A,4),
	      pontos(B,380),

	      pertence(C,Solucao),
	      capitao(C,oscar),
	      pontos(C,400),

	      segunda_posicao(D,Solucao),
	      pontos(D,410),

	      pertence(E,Solucao),
	      idade(E,26),
	      pontos(E,390),

	      terceira_posicao(F,Solucao),
	      idade(F,25),

	      exat_direita(G,H,Solucao),
	      capitao(G,oscar),
	      idade(H,23),

	      entre(I,J,K,Solucao),
	      uniforme(I,vermelho),
	      idade(J,27),
	      strikes(K,4),

	      lado(L,M,Solucao),
	      nome(L,fenix),
	      strikes(M,3),

	      lado(N,O,Solucao),
	      strikes(N,1),
	      pontos(O,400),

	      exat_direita(P,Q,Solucao),
	      pontos(P,390),
	      strikes(Q,3),

	      pertence(R,Solucao),
	      nome(R,peraltas),
	      strikes(R,0),

	      exat_direita(S,T,Solucao),
	      capitao(S,juliano),
	      capitao(T,oscar),

	      pertence(U,Solucao),
	      capitao(U,marcio),
	      nome(U,fenix),

	      quinta_posicao(V,Solucao),
	      capitao(V,carlos),

	      lado(W,X,Solucao),
	      nome(W,tratores),
	      strikes(X,2),

	      exat_esquerda(Y,Z,Solucao),
	      strikes(Y,1),
	      nome(Z,quatorzebiz),

	      lado(A1,B1,Solucao),
	      uniforme(A1,verde),
	      uniforme(B1,azul),

	      pertence(C1,Solucao),
	      idade(C1,23),
	      uniforme(C1,vermelho),

	      exat_esquerda(D1,E1,Solucao),
	      uniforme(D1,branco),
	      uniforme(E1,verde),

	      exat_esquerda(F1,G1,Solucao),
	      pontos(F1,390),
	      uniforme(G1,azul),

              pertence(H1,Solucao),
              uniforme(H1,amarelo),

              pertence(I1,Solucao),
              nome(I1,supinos),

              pertence(J1,Solucao),
              capitao(J1,arthur),

              pertence(K1,Solucao),
              idade(K1,24),

              pertence(L1,Solucao),
              pontos(L1,420).

exat_esquerda(X,Y,boliche(X,Y,_,_,_)).
exat_esquerda(X,Y,boliche(_,X,Y,_,_)).
exat_esquerda(X,Y,boliche(_,_,X,Y,_)).
exat_esquerda(X,Y,boliche(_,_,_,X,Y)).

exat_direita(X,Y,boliche(Y,X,_,_,_)).
exat_direita(X,Y,boliche(_,Y,X,_,_)).
exat_direita(X,Y,boliche(_,_,Y,X,_)).
exat_direita(X,Y,boliche(_,_,_,Y,X)).

entre(X,Y,Z,boliche(Y,X,_,_,Z)).
entre(X,Y,Z,boliche(Y,_,X,_,Z)).
entre(X,Y,Z,boliche(Y,_,_,X,Z)).

entre(X,Y,Z,boliche(Y,X,_,Z,_)).
entre(X,Y,Z,boliche(Y,X,Z,_,_)).

entre(X,Y,Z,boliche(_,Y,_,X,Z)).
entre(X,Y,Z,boliche(_,_,Y,X,Z)).

entre(X,Y,Z,boliche(_,Y,X,_,Z)).
entre(X,Y,Z,boliche(_,Y,X,Z,_)).

lado(X,Y,Solucao) :- exat_direita(X,Y,Solucao); exat_esquerda(X,Y,Solucao).

segunda_posicao(X,boliche(_,X,_,_,_)).
terceira_posicao(X,boliche(_,_,X,_,_)).
quinta_posicao(X,boliche(_,_,_,_,X)).

pertence(X,boliche(X,_,_,_,_)).
pertence(X,boliche(_,X,_,_,_)).
pertence(X,boliche(_,_,X,_,_)).
pertence(X,boliche(_,_,_,X,_)).
pertence(X,boliche(_,_,_,_,X)).

uniforme(equipe(X,_,_,_,_,_),X).
nome(equipe(_,X,_,_,_,_),X).
capitao(equipe(_,_,X,_,_,_),X).
strikes(equipe(_,_,_,X,_,_),X).
idade(equipe(_,_,_,_,X,_),X).
pontos(equipe(_,_,_,_,_,X),X).






