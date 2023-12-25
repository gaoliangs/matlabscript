t1_v = bestT(1);t2_v=bestT(2);t3_v=bestT(3);c1_v=bestT(4);c2_v=bestT(5);c3_v=bestT(6);
c3_v = t3_v/t3;
l_e = subs(l_c,[c3],[c3_v]);
solve_t123_c12
c3_v = bestT(3)/t3_v;
Fvalue
best_c=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
F_cc = F;


sst1 = t1_v;ssc1 = c1_v;
sst2 = t2_v;ssc2 = c2_v;
sst3 = t3_v;ssc3 = c3_v*0.9;
solve_t123_c123
if isempty(t1)
	i
	best_c
	t1_v=best_c(1);t2_v=best_c(2);t3_v=best_c(3);c1_v=best_c(4);c2_v=best_c(5);c3_v=best_c(6);
	F=F_cc;
else
	Fvalue
end
bestT=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
