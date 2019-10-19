
Prob = UFget (706) ;

A = Prob.A' ;
q = colamd (A) ;
A = A (:,q) ;
A = sprandn (A) ;
[m n] = size (A) ;

[vnz, rnz, parent, c, leftmost, p] = cs_sqr(A)

m2 = length (p) ;
B = [A ; sparse(m2-m,n)] ;
B = B (p,q) ;

R1 = gqr3 (B) ;

clf
subplot (2,2,1) ; spy(A)
subplot (2,2,3) ; spy (chol (A'*A + 100*speye(n))) ;
subplot (2,2,4) ; spy (R1) ;
