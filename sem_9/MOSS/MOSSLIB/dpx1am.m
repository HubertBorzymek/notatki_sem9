function dC=dpx1am(U,C0,U0,m)
if (U<=0.9*U0)
    dC=(C0*m/U0)/(1-U/U0)^(m+1);
else
    dC=(C0*m/U0)*10^(m+1);
end
end

