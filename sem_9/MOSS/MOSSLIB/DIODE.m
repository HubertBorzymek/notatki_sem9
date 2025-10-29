function [ID,JD,GD,CD]=DIODE(UD,IS,UT,TT,CD0,N,U0,m)
ID=IS*(expo(UD/(N*UT))-1);
GD=IS*dxpo(UD/(N*UT))/(N*UT);
JD=ID-GD*UD;
CD=(TT*IS/(N*UT))*dxpo(UD/(N*UT))+cpx1am(UD,CD0,U0,m);