%checkderivative c=inf

FF = vpa(exp(kl * log(l0 / sum(l0))));
dF = subs(FF,x,-log(1-x+x^2/2));
dFc = diff(dF,x);
dFcinf=limit(dFc,x,0);
dFc_x=double(dFcinf*10^300*10^300*10^300*10^300);
if dFc_x ==0
	dFc_x=-1;
end
