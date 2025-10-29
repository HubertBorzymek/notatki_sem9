function [ID,JD,GG,GD,GB,CGS,CGD,CGB]=MOSFET(UGS,UDS,USB,Vt0,gamma,fif,Kn,lambda,W,L,CGS0,CGD0,CGB0,Ujs0,ms,Ujd0,md,Ujb0,mb,typ)
%model tranzystora polowego MOS bez diod do podloza
%parametry: typ = 1 (NMOS), typ = -1 (PMOS)
%           UDS, UGS, USB napiêcia:dren-zrodlo,bramka-zrodlo,zrodlo-podloze
%           Vt0 napiecie progowe przy USB=0
%           gamma wspolczynnik polaryzacji podloza
%           fif potencjal Fermiego
%           Kn wspó³czynnik transkonduktancji
%           lambda wspolczynnik modlulacji dlugosci kanalu
%           W, L - szerokosc i dlugosc kanalu
%           CGS0, CGD0, CGB0 - pojemnoœæ bramka-zrodlo, bramka-dren na metr
%           szerokosci kanalu i bramka-podloze na metr dlugosci kanalu
%funklcja zwraca parametry modelu iteracyjnego N-R: ID,JD,GG,GD,GB oraz stale
%           pojemnoœci CGS, CGD, CGB
CGS=cpx1am(UGS,CGS0*W,Ujs0,ms);
CGD=cpx1am(UGS-UDS,CGD0*W,Ujd0,md);
CGB=cpx1am(UGS+USB,CGB0*L,Ujb0,mb);
UDS=typ*UDS; UGS=typ*UGS; USB=typ*USB; Kn=typ*Kn; lambda=typ*lambda; Vt0=typ*Vt0;
Vt=Vt0+gamma*USB/(sqrt(2*fif+USB)+sqrt(2*fif));
dvtb=(gamma*(sqrt(2*fif+USB)+sqrt(2*fif))+gamma*USB/2/sqrt(2*fif+USB))/(sqrt(2*fif+USB)+sqrt(2*fif));
vgst=UGS-Vt;
if(vgst<=0)
    ID=0;
    GG=0;
    GD=0;
    GB=0;
elseif(UDS<=vgst)
    ID=0.5*Kn*W*UDS*(2*vgst-UDS)*(1+lambda*UDS)/L;
    GG=Kn*W*UDS*(1+lambda*UDS)/L;
    GD=Kn*W*(vgst-UDS+lambda*UDS*(vgst-UDS/2))/L;
    GB=-Kn*W*UDS*(1+lambda*UDS)*dvtb/L;
else
    ID=0.5*Kn*W*vgst*vgst*(1+lambda*UDS)/L;    
    GG=Kn*W*vgst*(1+lambda*UDS)/L;
    GD=0.5*Kn*W*vgst*vgst*lambda/L;
    GB=-Kn*W*vgst*(1+lambda*UDS)*dvtb/L;
end
JD=typ*(ID-GG*UGS-GD*UDS-GB*USB);
ID=typ*ID;
end