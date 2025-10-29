function  [x,err,i]=NRSolver_F(Jh,Fh,x0,nitmax,epsil,delt)
% Jh, Fh s¹ uchwytami @ funkcji J(x), F(x)
% x0 – wektor wartoœci startowych niewiadomych x
% nitmax - maksymalna liczba iteracji NR
% epsil – wektor dok³adnoœci wzglêdnych rozwi¹zania x
% delt – wektor dok³adnoœci bezwzglêdnych rozwi¹zania x
% x – wektor rozwi¹zañ
% err – sygnalizuje brak zbie¿noœci gdy err==1 
% i – liczba wykonanych iteracji NR

err=1;
for i=1:nitmax
    dx=-Jh(x0)\Fh(x0); x=dx'+x0;
    if (max(abs(dx)-epsil.*abs(x)-delt)<=0)
         err=0; break
    end
    x0=x;
end
