connection(h1,h4).
connection(h4,h1).
connection(h2,h4).
connection(h4,h2).
connection(h4,h5).
connection(h5,h4).
connection(h3,h5).
connection(h5,h3).
connection(h4,h6).
connection(h6,h4).
connection(h5,h7).
connection(h7,h5).
connection(h6,h7).
connection(h7,h6).
connection(h1,public).
connection(public,h1).
connection(h2,public).
connection(public,h2).
connection(h3,public).
connection(public,h3).

vulnerability(h1,v1).
vulnerability(h2,v1).
vulnerability(h3,v1).
vulnerability(h4,v2).
vulnerability(h5,v1).
vulnerability(h6,v1).
vulnerability(h7,v2).

vulnerable(A,B) :- vulnerability(A,B).

compromisable(A) :- walk(A,public,[]).
walk(A,B,V) :- vulnerable(A,v1) , connection(A,X) , not(member(X,V)) , (B = X ; walk(X,B,[A|V])).
walk(A,B,V) :- vulnerable(A,v2) , connection(A,X) , connection(A,Y) , not(X = Y) , not(member(X,V)) , not(member(Y,V)) , walk(X,B,[A|V]) , walk(Y,B,[A|V]).

