function  [x,err,i]=NRSolver(Jh,Bh,x0,nitmax,epsil,delt)
% Jh, Bh s¹ uchwytami @ funkcji J(x), B(x)
% x0 – wektor wartoœci startowych niewiadomych x
% nitmax - maksymalna liczba iteracji NR
% epsil – wektor dok³adnoœci wzglêdnych rozwi¹zania x
% delt – wektor dok³adnoœci bezwzglêdnych rozwi¹zania x
% x – wektor rozwi¹zañ
% err – sygnalizuje brak zbie¿noœci gdy err==1 
% i – liczba wykonanych iteracji NR

err=1;
for i=1:nitmax
    x=Jh(x0)\Bh(x0);
    if (max(abs(x-x0)-epsil.*abs(x)-delt)<=0)
         err=0; break
    end
    x0=x;
end
