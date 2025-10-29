function [c,dc]=poj(u,a0,b0,c0,u0,m)
c=a0*expo(b0*u)+cpx1am(u,c0,u0,m);
dc=a0*b0*dxpo(b0*u)+dpx1am(u,c0,u0,m);