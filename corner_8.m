if dF1b<0||dF2b<0||dF3b<0
	t1_0_0_0=0;t2_0_0_0=0;t3_0_0_0=0;F_0_0_0=0;
else
	c1_v=0;c2_v=0;c3_v=0;
	l_e = subs(l_c,[c1,c2,c3],[0,0,0]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_0_0_0=t1_v;
	t2_0_0_0=t2_v;
	t3_0_0_0=t3_v;
	F_0_0_0=F;
end

if dF1b<0||dF2a<0||dF3b<0
	t1_0_1_0=0;
	t2_0_1_0=0;
	t3_0_1_0=0;
	F_0_1_0=0;
else
	c1_v=0;c2_v=1;c3_v=0;
	l_e = subs(l_c2,[c1,c2,c3],[0,1,0]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_0_1_0 =t1_v;
	t2_0_1_0 =t2_v;
	t3_0_1_0 =t3_v;
	F_0_1_0=F;
end

if dF1a<0||dF2a<0||dF3b<0
	t1_1_1_0=0;
	t2_1_1_0=0;
	t3_1_1_0=0;
	F_1_1_0=0;
else
	c1_v=1;c2_v=1;c3_v=0;
	l_e = subs(l_c12,[c1,c2,c3],[1,1,0]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_1_1_0=t1_v;
	t2_1_1_0=t2_v;
	t3_1_1_0=t3_v;
	F_1_1_0=F;
end


if dF1a<0||dF2b<0||dF3b<0
	t1_1_0_0=0;
	t2_1_0_0=0;
	t3_1_0_0=0;
	F_1_0_0=0;
else
	c1_v=1;c2_v=0;c3_v=0;
	l_e = subs(l_c1,[c1,c2,c3],[1,0,0]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_1_0_0=t1_v;
	t2_1_0_0=t2_v;
	t3_1_0_0=t3_v;
	F_1_0_0=F;
end


if dF1b<0||dF2b<0||dF3a<0
	t1_0_0_1=0;
	t2_0_0_1=0;
	t3_0_0_1=0;
	F_0_0_1=0;
else
	c1_v=0;c2_v=0;c3_v=1;
	l_e = subs(l_c3,[c1,c2,c3],[0,0,1]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_0_0_1=t1_v;
	t2_0_0_1=t2_v;
	t3_0_0_1=t3_v;
	F_0_0_1=F;
end


if dF1b<0||dF2a<0||dF3a<0
	t1_0_1_1=0;
	t2_0_1_1=0;
	t3_0_1_1=0;
	F_0_1_1=0;
else
	c1_v=0;c2_v=1;c3_v=1;
	l_e = subs(l_c23,[c1,c2,c3],[0,1,1]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_0_1_1 =t1_v;
	t2_0_1_1 =t2_v;
	t3_0_1_1 =t3_v;
	F_0_1_1=F;
end


if dF1a<0||dF2a<0||dF3a<0
	t1_1_1_1=0;
	t2_1_1_1=0;
	t3_1_1_1=0;
	F_1_1_1=0;
else
	c1_v=1;c2_v=1;c3_v=1;
	l_e = subs(l_c123,[c1,c2,c3],[1,1,1]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_1_1_1=t1_v;
	t2_1_1_1=t2_v;
	t3_1_1_1=t3_v;
	F_1_1_1=F;
end


if dF1a<0||dF2b<0||dF3a<0
	t1_1_0_1=0;
	t2_1_0_1=0;
	t3_1_0_1=0;
	F_1_0_1=0;
else
	c1_v=1;c2_v=0;c3_v=1;
	l_e = subs(l_c13,[c1,c2,c3],[1,0,1]);
	l1 = diff(l_e,t1);
	left1 = kl*(l1./l_e)*sum(l_e);
	right1 = sum(kl)*sum(l1);
	l2 = diff(l_e,t2);
	left2 = kl*(l2./l_e)*sum(l_e);
	right2 = sum(kl)*sum(l2);
	l3 = diff(l_e,t3);
	left3 = kl*(l3./l_e)*sum(l_e);
	right3 = sum(kl)*sum(l3);
	eqns = [left1 == right1,left2 == right2,left3 == right3];
	vars = [t1 t2 t3];
	[t1_v,t2_v,t3_v] = vpasolve(eqns, vars,[0,0,0]);
	Fvalue
	t1_1_0_1=t1_v;
	t2_1_0_1=t2_v;
	t3_1_0_1=t3_v;
	F_1_0_1=F;
end


if max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])==0
    F = 0;
    bestT = [0,0,0,-2,-2,-2];
elseif F_0_0_0 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_0_0_0,t2_0_0_0,t3_0_0_0,0,0,0];
	F =F_0_0_0;
elseif F_0_1_0 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_0_1_0,t2_0_1_0,t3_0_1_0,0,1,0];
	F =F_0_1_0;
elseif F_1_1_0 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_1_1_0,t2_1_1_0,t3_1_1_0,1,1,0];
	F =F_1_1_0;
elseif F_1_0_0 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_1_0_0,t2_1_0_0,t3_1_0_0,1,0,0];
	F =F_1_0_0;
elseif F_0_0_1 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_0_0_1,t2_0_0_1,t3_0_0_1,0,0,1];
	F =F_0_0_1;
elseif F_0_1_1 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_0_1_1,t2_0_1_1,t3_0_1_1,0,1,1];
	F =F_0_1_1;
elseif F_1_1_1 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_1_1_1,t2_1_1_1,t3_1_1_1,1,1,1];
	F =F_1_1_1;
elseif F_1_0_1 == max([F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])
	bestT=[t1_1_0_1,t2_1_0_1,t3_1_0_1,1,0,1];
	F =F_1_0_1;
end
