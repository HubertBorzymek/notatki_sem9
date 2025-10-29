function [ID,JD,GD,CD,DCD]=DIODE_1(UD,IS,UT,TT,CD0,N,U0,m)
ID=IS*(expo(UD/(N*UT))-1);
GD=IS*dxpo(UD/(N*UT))/(N*UT);
JD=ID-GD*UD;

A0=TT*IS/(N*UT);
B0=1/(N*UT);
[CD,DCD]=poj(UD,A0,B0,CD0,U0,m);