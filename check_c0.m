
FF = vpa(exp(kl * log(l0 / sum(l0))));
dFc = diff(FF,x);
dFc0= limit(dFc,x,0);
dFcx=double(dFc0*10^300*10^300*10^300*10^300);