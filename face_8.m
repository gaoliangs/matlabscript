F_c1_c2_0 =0;
F_c1_c2_1 =0;
F_0_c2_c3 =0;
F_1_c2_c3 =0;
F_c1_0_c3 =0;
F_c1_1_c3 =0;
%%%%c1,c2
dFcx=0;dFc_x=0;
if F_c1_0_0>max([0,F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0])&& F_c1_0_0== max([F_c1_0_0,F_0_c2_0,F_c1_1_0,F_1_c2_0])
	t1_v = t1_c1_0_0;
	t2_v = t2_c1_0_0;
	t3_v = t3_c1_0_0;
	c1_v = c1_c1_0_0;
	c3_v = 0;
	c2_v = x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c2_v =0;
elseif F_c1_1_0>max([0,F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0])&&F_c1_1_0 == max([F_c1_0_0,F_0_c2_0,F_c1_1_0,F_1_c2_0])
	t1_v = t1_c1_1_0;
	t2_v = x;
	t3_v = t3_c1_1_0;
	c1_v = c1_c1_1_0;
	c3_v = 0;
	c2_v = t2_c1_1_0/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t2_v = t2_c1_1_0;
		c2_v = t2_c1_1_0/t2;
        l_e = subs(l_c,[c2,c3],[c2_v,c3_v]);
		solve_t123_c1
		c2_v = t2_c1_1_0/t2_v;
        Fvalue
		if c2_v <1
			dFc_x=-1;
        end
        c2_v=0.9*c2_v;
	end
elseif F_0_c2_0>max([0,F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0])&&F_0_c2_0 == max([F_c1_0_0,F_0_c2_0,F_c1_1_0,F_1_c2_0])
	t1_v = t1_0_c2_0;
	t2_v = t2_0_c2_0;
	t3_v = t3_0_c2_0;
	c2_v = c2_0_c2_0;
	c1_v = x;
	c3_v = 0;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c1_v =0;
elseif F_1_c2_0>max([0,F_0_0_0,F_0_1_0,F_1_0_0,F_1_1_0])&&F_1_c2_0 == max([F_c1_0_0,F_0_c2_0,F_c1_1_0,F_1_c2_0])
	t1_v = x;
	t2_v = t2_1_c2_0;
	t3_v = t3_1_c2_0;
	c2_v = c2_1_c2_0;
	c3_v = 0;
	c1_v = t1_1_c2_0/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0 
		t1_v = t1_1_c2_0;
		c1_v = t1_1_c2_0/t1;
        l_e = subs(l_c,[c1,c3],[c1_v,c3_v]);
		solve_t123_c2
		c1_v = t1_1_c2_0/t1_v;
        Fvalue
		if c1_v <1
			dFc_x=-1;
        end
        c1_v=0.9*c1_v;
	end
end


if dFcx>0 || dFc_x>0
	if c1_v<100&&c2_v<100
        l_e = subs(l_c,[c3],[0]);
		solve_t123_c12
	end
	Fvalue
	t1_c1_c2_0 =t1_v;
	t2_c1_c2_0 =t2_v;
	t3_c1_c2_0 =t3_v;
	c1_c1_c2_0 =c1_v;
	c2_c1_c2_0 =c2_v;
	F_c1_c2_0=F;
end


dFcx=0;dFc_x=0;
if F_c1_0_1>max([0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])&&F_c1_0_1 == max([F_c1_0_1,F_0_c2_1,F_c1_1_1,F_1_c2_1])
	t1_v = t1_c1_0_1;
	t2_v = t2_c1_0_1;
	t3_v = t3_c1_0_1;
	c1_v = c1_c1_0_1;
	c3_v = 1;
	c2_v = x;
    l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c2_v = 0;
elseif F_c1_1_1>max([0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])&&F_c1_1_1 == max([F_c1_0_1,F_0_c2_1,F_c1_1_1,F_1_c2_1])
	t1_v = t1_c1_1_1;
	t2_v = x;
	t3_v = t3_c1_1_1;
	c1_v = c1_c1_1_1;
	c3_v = 1;
	c2_v = t2_c1_1_1/x;
    l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t2_v = t2_c1_1_1;
		c2_v = t2_c1_1_1/t2;
        l_e = subs(l_c3,[c2,c3],[c2_v,c3_v]);
		solve_t123_c1
		c2_v = t2_c1_1_1/t2_v;
        Fvalue
		if c2_v <1
			dFc_x=-1;
        end
        c2_v=0.9*c2_v;
	end
elseif F_0_c2_1>max([0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])&&F_0_c2_1 == max([F_c1_0_1,F_0_c2_1,F_c1_1_1,F_1_c2_1])
	t1_v = t1_0_c2_1;
	t2_v = t2_0_c2_1;
	t3_v = t3_0_c2_1;
	c2_v = c2_0_c2_1;
	c3_v = 1;
	c1_v = x;
    l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c1_v = 0;
elseif F_1_c2_1>max([0,F_0_0_1,F_0_1_1,F_1_0_1,F_1_1_1])&&F_1_c2_1 == max([F_c1_0_1,F_0_c2_1,F_c1_1_1,F_1_c2_1])
	t1_v = x;
	t2_v = t2_1_c2_1;
	t3_v = t3_1_c2_1;
	c2_v = c2_1_c2_1;
	c3_v = 1;
	c1_v = t1_1_c2_1/x;
    l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t1_v = t1_1_c2_1;
		c1_v = t1_1_c2_1/t1;
        l_e = subs(l_c3,[c1,c3],[c1_v,c3_v]);
		solve_t123_c2
		c1_v = t1_1_c2_1/t1_v;
        Fvalue
		if c1_v <1
			dFc_x=-1;
        end
        c1_v=0.9*c1_v;
	end
end


if dFcx>0 || dFc_x>0
	if c1_v<100&&c2_v<100
        l_e = subs(l_c3,[c3],[1]);
		solve_t123_c12
	end 
	Fvalue
	t1_c1_c2_1 =t1_v;
	t2_c1_c2_1 =t2_v;
	t3_c1_c2_1 =t3_v;
	c1_c1_c2_1 =c1_v;
	c2_c1_c2_1 =c2_v;
	F_c1_c2_1=F;
end



%%%%%%%%%%%c1,c3
dFcx=0;dFc_x=0;
if F_c1_0_0>max([0,F_0_0_0,F_0_0_1,F_1_0_0,F_1_0_1])&&F_c1_0_0 == max([F_c1_0_0,F_0_0_c3,F_c1_0_1,F_1_0_c3])
	t1_v = t1_c1_0_0;
	t2_v = t2_c1_0_0;
	t3_v = t3_c1_0_0;
	c1_v = c1_c1_0_0;
	c2_v = 0;
	c3_v = x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c3_v = 0;
elseif F_c1_0_1>max([0,F_0_0_0,F_0_0_1,F_1_0_0,F_1_0_1])&&F_c1_0_1 == max([F_c1_0_0,F_0_0_c3,F_c1_0_1,F_1_0_c3])
	t1_v = t1_c1_0_1;
	t2_v = t2_c1_0_1;
	t3_v = x;
	c1_v = c1_c1_0_1;
	c2_v = 0;
	c3_v = t3_c1_0_1/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t3_v = t3_c1_0_1;
		c3_v = t3_c1_0_1/t3;
        l_e = subs(l_c,[c2,c3],[c2_v,c3_v]);
		solve_t123_c1
		c3_v = t3_c1_0_1/t3_v;
        Fvalue
		if c3_v <1
			dFc_x=-1;
        end
        c3_v=0.9*c3_v;
	end
elseif F_0_0_c3>max([0,F_0_0_0,F_0_0_1,F_1_0_0,F_1_0_1])&&F_0_0_c3 == max([F_c1_0_0,F_0_0_c3,F_c1_0_1,F_1_0_c3])
	t1_v = t1_0_0_c3;
	t2_v = t2_0_0_c3;
	t3_v = t3_0_0_c3;
	c3_v = c3_0_0_c3;
	c2_v = 0;
	c1_v = x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c1_v = 0;
elseif F_1_0_c3>max([0,F_0_0_0,F_0_0_1,F_1_0_0,F_1_0_1])&&F_1_0_c3 == max([F_c1_0_0,F_0_0_c3,F_c1_0_1,F_1_0_c3])
	t1_v = x;
	t2_v = t2_1_0_c3;
	t3_v = t3_1_0_c3;
	c3_v = c3_1_0_c3;
	c2_v = 0;
	c1_v = t1_1_0_c3/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t1_v = t1_1_0_c3;
		c1_v = t1_1_0_c3/t1;
        l_e = subs(l_c,[c1,c2],[c1_v,c2_v]);
		solve_t123_c3
		c1_v = t1_1_0_c3/t1_v;
        Fvalue
		if c1_v <1
			dFc_x=-1;
        end
        c1_v=0.9*c1_v;
	end
end


if dFcx>0 || dFc_x>0
	if c1_v<100&&c3_v<100
        l_e = subs(l_c,[c2],[0]);
		solve_t123_c13
	end
	Fvalue
	t1_c1_0_c3 =t1_v;
	t2_c1_0_c3 =t2_v;
	t3_c1_0_c3 =t3_v;
	c1_c1_0_c3 =c1_v;
	c3_c1_0_c3 =c3_v;
	F_c1_0_c3=F;
end



dFcx=0;dFc_x=0;
if F_c1_1_0>max([0,F_0_1_0,F_0_1_1,F_1_1_0,F_1_1_1])&&F_c1_1_0 == max([F_c1_1_0,F_0_1_c3,F_c1_1_1,F_1_1_c3])
	t1_v = t1_c1_1_0;
	t2_v = t2_c1_1_0;
	t3_v = t3_c1_1_0;
	c1_v = c1_c1_1_0;
	c2_v = 1;
	c3_v = x;
    l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c3_v = 0;
elseif F_c1_1_1>max([0,F_0_1_0,F_0_1_1,F_1_1_0,F_1_1_1])&&F_c1_1_1 == max([F_c1_1_0,F_0_1_c3,F_c1_1_1,F_1_1_c3])
	t1_v = t1_c1_1_1;
	t2_v = t2_c1_1_1;
	t3_v = x;
	c1_v = c1_c1_1_1;
	c2_v = 1;
	c3_v = t3_c1_1_1/x;
    l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t3_v = t3_c1_1_1;
		c3_v = t3_c1_1_1/t3;
        l_e = subs(l_c2,[c2,c3],[c2_v,c3_v]);
		solve_t123_c1
		c3_v = t3_c1_1_1/t3_v;
        Fvalue
		if c3_v <1
			dFc_x=-1;
        end
        c3_v=0.9*c3_v;
	end
elseif F_0_1_c3>max([0,F_0_1_0,F_0_1_1,F_1_1_0,F_1_1_1])&&F_0_1_c3 == max([F_c1_1_0,F_0_1_c3,F_c1_1_1,F_1_1_c3])
	t1_v = t1_0_1_c3;
	t2_v = t2_0_1_c3;
	t3_v = t3_0_1_c3;
	c3_v = c3_0_1_c3;
	c2_v = 1;
	c1_v = x;
    l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c1_v = 0;
elseif F_1_1_c3>max([0,F_0_1_0,F_0_1_1,F_1_1_0,F_1_1_1])&&F_1_1_c3 == max([F_c1_1_0,F_0_1_c3,F_c1_1_1,F_1_1_c3])
	t1_v = x;
	t2_v = t2_1_1_c3;
	t3_v = t3_1_1_c3;
	c3_v = c3_1_1_c3;
	c2_v = 1;
	c1_v = t1_1_1_c3/x;
    l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t1_v = t1_1_1_c3;
		c1_v = t1_1_1_c3/t1;
        l_e = subs(l_c2,[c1,c2],[c1_v,c2_v]);
		solve_t123_c3
        c1_v = t1_1_1_c3/t1_v;
        Fvalue
		if c1_v <1
			dFc_x=-1;
        end
        c1_v=0.9*c1_v;
	end
end


if dFcx>0 || dFc_x>0
	if c1_v<100&&c3_v<100
        l_e = subs(l_c2,[c2],[1]);
		solve_t123_c13
	end
	Fvalue
	t1_c1_1_c3 =t1_v;
	t2_c1_1_c3 =t2_v;
	t3_c1_1_c3 =t3_v;
	c1_c1_1_c3 =c1_v;
	c3_c1_1_c3 =c3_v;
	F_c1_1_c3=F;
end



%%%%%%%c2,c3
dFcx=0;dFc_x=0;
if F_0_c2_0>max([0,F_0_0_0,F_0_0_1,F_0_1_0,F_0_1_1])&&F_0_c2_0 == max([F_0_c2_0,F_0_0_c3,F_0_c2_1,F_0_1_c3])
	t1_v = t1_0_c2_0;
	t2_v = t2_0_c2_0;
	t3_v = t3_0_c2_0;
	c2_v = c2_0_c2_0;
	c1_v = 0;
	c3_v = x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c3_v = 0;
elseif F_0_c2_1>max([0,F_0_0_0,F_0_0_1,F_0_1_0,F_0_1_1])&&F_0_c2_1 == max([F_0_c2_0,F_0_0_c3,F_0_c2_1,F_0_1_c3])
	t1_v = t1_0_c2_1;
	t2_v = t2_0_c2_1;
	t3_v = x;
	c2_v = c2_0_c2_1;
	c1_v = 0;
	c3_v = t3_0_c2_1/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t3_v = t3_0_c2_1;
		c3_v = t3_0_c2_1/t3;
        l_e = subs(l_c,[c1,c3],[c1_v,c3_v]);
		solve_t123_c2
		c3_v = t3_0_c2_1/t3_v;
        Fvalue
		if c3_v <1
			dFc_x=-1;
        end
        c3_v=0.9*c3_v;
	end
elseif F_0_0_c3>max([0,F_0_0_0,F_0_0_1,F_0_1_0,F_0_1_1])&&F_0_0_c3 == max([F_0_c2_0,F_0_0_c3,F_0_c2_1,F_0_1_c3])
	t1_v = t1_0_0_c3;
	t2_v = t2_0_0_c3;
	t3_v = t3_0_0_c3;
	c3_v = c3_0_0_c3;
	c1_v = 0;
	c2_v = x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c2_v = 0;
elseif F_0_1_c3>max([0,F_0_0_0,F_0_0_1,F_0_1_0,F_0_1_1])&&F_0_1_c3 == max([F_0_c2_0,F_0_0_c3,F_0_c2_1,F_0_1_c3])
	t1_v = t1_0_1_c3;
	t2_v = x;
	t3_v = t3_0_1_c3;
	c3_v = c3_0_1_c3;
	c1_v = 0;
	c2_v = t2_0_1_c3/x;
    l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t2_v = t2_0_1_c3;
		c2_v = t2_0_1_c3/t2;
        l_e = subs(l_c,[c1,c2],[c1_v,c2_v]);
		solve_t123_c3
		c2_v = t2_0_1_c3/t2_v;
        Fvalue
		if c2_v <1
			dFc_x=-1;
        end
        c2_v=0.9*c2_v;
	end
end


if dFcx>0 || dFc_x>0
	if c2_v<100&&c3_v<100
        l_e = subs(l_c,[c1],[0]);
		solve_t123_c23
	end
	Fvalue
	t1_0_c2_c3 =t1_v;
	t2_0_c2_c3 =t2_v;
	t3_0_c2_c3 =t3_v;
	c2_0_c2_c3 =c2_v;
	c3_0_c2_c3 =c3_v;
	F_0_c2_c3=F;
end



dFcx=0;dFc_x=0;
if F_1_c2_0>max([0,F_1_0_0,F_1_0_1,F_1_1_0,F_1_1_1])&&F_1_c2_0 == max([F_1_c2_0,F_1_0_c3,F_1_c2_1,F_1_1_c3])
	t1_v = t1_1_c2_0;
	t2_v = t2_1_c2_0;
	t3_v = t3_1_c2_0;
	c2_v = c2_1_c2_0;
	c1_v = 1;
	c3_v = x;
    l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c3_v = 0;
elseif F_1_c2_1>max([0,F_1_0_0,F_1_0_1,F_1_1_0,F_1_1_1])&&F_1_c2_1 == max([F_1_c2_0,F_1_0_c3,F_1_c2_1,F_1_1_c3])
	t1_v = t1_1_c2_1;
	t2_v = t2_1_c2_1;
	t3_v = x;
	c2_v = c2_1_c2_1;
	c1_v = 1;
	c3_v = t3_1_c2_1/x;
    l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t3_v = t3_1_c2_1;
		c3_v = t3_1_c2_1/t3;
        l_e = subs(l_c1,[c1,c3],[c1_v,c3_v]);
		solve_t123_c2
		c3_v = t3_1_c2_1/t3_v;
        Fvalue
		if c3_v <1
			dFc_x=-1;
        end
        c3_v=0.9*c3_v;
	end
elseif F_1_0_c3>max([0,F_1_0_0,F_1_0_1,F_1_1_0,F_1_1_1])&&F_1_0_c3 == max([F_1_c2_0,F_1_0_c3,F_1_c2_1,F_1_1_c3])
	t1_v = t1_1_0_c3;
	t2_v = t2_1_0_c3;
	t3_v = t3_1_0_c3;
	c3_v = c3_1_0_c3;
	c1_v = 1;
	c2_v = x;
    l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_c0
	c2_v = 0;
elseif F_1_1_c3>max([0,F_1_0_0,F_1_0_1,F_1_1_0,F_1_1_1])&& F_1_1_c3== max([F_1_c2_0,F_1_0_c3,F_1_c2_1,F_1_1_c3])
	t1_v = t1_1_1_c3;
	t2_v = x;
	t3_v = t3_1_1_c3;
	c3_v = c3_1_1_c3;
	c1_v = 1;
	c2_v = t2_1_1_c3/x;
    l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
	check_cinf
	if dFc_x >0
		t2_v = t2_1_1_c3;
		c2_v = t2_1_1_c3/t2;
        l_e = subs(l_c1,[c1,c2],[c1_v,c2_v]);
		solve_t123_c3
		c2_v = t2_1_1_c3/t2_v;
        Fvalue
		if c2_v <1
			dFc_x=-1;
        end
        c2_v=0.9*c2_v;
	end
end


if dFcx>0 || dFc_x>0
	if c2_v<100&&c3_v<100
        l_e = subs(l_c1,[c1],[1]);
		solve_t123_c23
	end
	Fvalue
	t1_1_c2_c3 =t1_v;
	t2_1_c2_c3 =t2_v;
	t3_1_c2_c3 =t3_v;
	c2_1_c2_c3 =c2_v;
	c3_1_c2_c3 =c3_v;
	F_1_c2_c3=F;
end


if max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3]) ==0
    F = 0;
    bestT = [0,0,0,-2,-2,-2];
elseif F_c1_c2_0 == max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F= F_c1_c2_0;
	bestT = [t1_c1_c2_0,t2_c1_c2_0,t3_c1_c2_0,c1_c1_c2_0,c2_c1_c2_0,0];
elseif F_c1_c2_1 == max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F= F_c1_c2_1;
	bestT = [t1_c1_c2_1,t2_c1_c2_1,t3_c1_c2_1,c1_c1_c2_1,c2_c1_c2_1,1];
elseif F_0_c2_c3== max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F= F_0_c2_c3;
	bestT= [t1_0_c2_c3,t2_0_c2_c3,t3_0_c2_c3,0,c2_0_c2_c3,c3_0_c2_c3];
elseif F_1_c2_c3== max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F= F_1_c2_c3;
	bestT= [t1_1_c2_c3,t2_1_c2_c3,t3_1_c2_c3,1,c2_1_c2_c3,c3_1_c2_c3];
elseif F_c1_0_c3 == max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F = F_c1_0_c3;
	bestT = [t1_c1_0_c3,t2_c1_0_c3,t3_c1_0_c3,c1_c1_0_c3,0,c3_c1_0_c3];
elseif F_c1_1_c3 == max([F_c1_c2_0,F_c1_c2_1,F_0_c2_c3,F_1_c2_c3,F_c1_0_c3,F_c1_1_c3])
	F = F_c1_1_c3;
	bestT = [t1_c1_1_c3,t2_c1_1_c3,t3_c1_1_c3,c1_c1_1_c3,1,c3_c1_1_c3];
end



