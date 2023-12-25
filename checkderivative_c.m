dFc1=-1;dFc2=-1;dFc3=-1;dFc1_x=-1;dFc2_x=-1;dFc3_x=-1;

t1_v= bestT(1);t2_v= bestT(2);t3_v= bestT(3);c1_v= bestT(4);c2_v=bestT(5);c3_v=bestT(6);


if c1_v==0
    c1_v=x;
    if c2_v ==1&&c3_v==1
        l0 = subs(l_c23,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ==1&&c3_v~=1
        l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ~=1&&c3_v==1
        l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ~=1&&c3_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_c0
	if dFcx>0&&dFcx*10^10<F
		dFcx=-1;
	end
	dFc1=dFcx;
    c1_v=0;
end

if c1_v==1
	c1_v=t1_v/x;
	t1_v=x;
    if c2_v ==1&&c3_v==1
        l0 = subs(l_c23,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ==1&&c3_v~=1
        l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ~=1&&c3_v==1
        l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c2_v ~=1&&c3_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_cinf
	if dFc_x>0&&dFc_x*10^10<F
		dFc_x=-1;
	end
	dFc1_x=dFc_x;
    c1_v=1;
    t1_v=bestT(1);
end


if c2_v==0
	c2_v=x;
    if c1_v ==1&&c3_v==1
        l0 = subs(l_c13,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ==1&&c3_v~=1
        l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c3_v==1
        l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c3_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_c0
	if dFcx>0&&dFcx*10^10<F
		dFcx=-1;
	end
	dFc2=dFcx;
    c2_v=0;
end




if c2_v==1
	c2_v=t2_v/x;
	t2_v=x;
    if c1_v ==1&&c3_v==1
        l0 = subs(l_c13,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ==1&&c3_v~=1
        l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c3_v==1
        l0 = subs(l_c3,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c3_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_cinf
	if dFc_x>0&&dFc_x*10^10<F
		dFc_x=-1;
	end
	dFc2_x=dFc_x;
    t2_v=bestT(2);
    c2_v=1;
end




if c3_v==0
	c3_v=x;
    if c1_v ==1&&c2_v==1
        l0 = subs(l_c12,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ==1&&c2_v~=1
        l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c2_v==1
        l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c2_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_c0
	if dFcx>0&&dFcx*10^10<F
		dFcx=-1;
	end
	dFc3=dFcx;
    c3_v=0;
end


if c3_v==1
	c3_v=t3_v/x;
	t3_v=x;
    if c1_v ==1&&c2_v==1
        l0 = subs(l_c12,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ==1&&c2_v~=1
        l0 = subs(l_c1,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c2_v==1
        l0 = subs(l_c2,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    elseif c1_v ~=1&&c2_v~=1
        l0 = subs(l_c,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
    end
	check_cinf
	if dFc_x>0&&dFc_x*10^10<F
		dFc_x=-1;
	end
	dFc3_x=dFc_x;
    c3_v=1;
    t3_v=bestT(3);
end
