function  [x,err,i]=NRSolver_F(Jh,Fh,x0,nitmax,epsil,delt)
% Jh, Fh s� uchwytami @ funkcji J(x), F(x)
% x0 � wektor warto�ci startowych niewiadomych x
% nitmax - maksymalna liczba iteracji NR
% epsil � wektor dok�adno�ci wzgl�dnych rozwi�zania x
% delt � wektor dok�adno�ci bezwzgl�dnych rozwi�zania x
% x � wektor rozwi�za�
% err � sygnalizuje brak zbie�no�ci gdy err==1 
% i � liczba wykonanych iteracji NR

err=1;
for i=1:nitmax
    dx=-Jh(x0)\Fh(x0); x=dx'+x0;
    if (max(abs(dx)-epsil.*abs(x)-delt)<=0)
         err=0; break
    end
    x0=x;
end
