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

connection(h9,h8).
connection(h8,h9).

vulnerability(h1,v1).
vulnerability(h2,v1).
vulnerability(h3,v1).
vulnerability(h4,v2).
vulnerability(h5,v1).
vulnerability(h6,v1).
vulnerability(h7,v2).

vulnerable(X,Y) :- vulnerability(X,Y).
connects(X,Y) :- connection(X,Y).
connects(X,Y) :- connection(Z,Y) , connection(X,Z).
