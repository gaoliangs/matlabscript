if c1_v~=1&&c2_v~=1&&c3_v~=1
	l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v==1&&c2_v~=1&&c3_v~=1
	l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v~=1&&c2_v==1&&c3_v~=1
	l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v~=1&&c2_v~=1&&c3_v==1
	l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v==1&&c2_v==1&&c3_v~=1
	l0 = subs(l_c12,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v~=1&&c2_v==1&&c3_v==1
	l0 = subs(l_c23,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
elseif c1_v==1&&c2_v~=1&&c3_v==1
	l0 = subs(l_c13,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
end
FF = vpa(exp(kl * log(l0 / sum(l0))));
dFt = diff(FF,x);
dF = limit(dFt,x,0);
coefficients=coeffs(dF+y^2,'All');
