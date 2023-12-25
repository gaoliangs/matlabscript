if c1_v~=1
	l_e = subs(l_c,[c1],[c1_v]);
elseif c1_v==1
	l_e = subs(l_c1,[c1],[c1_v]);
end
l1 = diff(l_e,t1);
left1 = kl*(l1./l_e)*sum(l_e);
right1 = sum(kl)*sum(l1);
l2 = diff(l_e,t2);
left2 = kl*(l2./l_e)*sum(l_e);
right2 = sum(kl)*sum(l2);
l3 = diff(l_e,t3);
left3 = kl*(l3./l_e)*sum(l_e);
right3 = sum(kl)*sum(l3);
lc1 = diff(l_e,c2);
leftc1 = kl*(lc1./l_e)*sum(l_e);
rightc1 = sum(kl)*sum(lc1);
lc2 = diff(l_e,c3);
leftc2 = kl*(lc2./l_e)*sum(l_e);
rightc2 = sum(kl)*sum(lc2);
eqns = [left1 == right1, left2 == right2,left3 == right3, leftc1 == rightc1,leftc2 == rightc2];
vars = [t1 t2 t3 c2 c3];
[t1_v,t2_v,t3_v,c2_v,c3_v] = vpasolve(eqns, vars,[t1_v,t2_v,t3_v,c2_v,c3_v]);
