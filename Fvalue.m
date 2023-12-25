
if isempty(t1_v)||isempty(t2_v)||isempty(t3_v)
    [i,n]
    F=0;
    t1_v=0;t2_v=0;t3_v=0;c1_v=-2;c2_v=-2;c3_v=-2;
else
    t1_v = double(t1_v);
    t2_v = double(t2_v);
    t3_v = double(t3_v);
    c1_v = double(c1_v);
    c2_v = double(c2_v);
    c3_v = double(c3_v);
    if length(t1_v)>1||length(t2_v)>1||length(t3_v)>1
        max_length = max([length(t1_v), length(t2_v), length(t3_v)]);
        t1_v = [t1_v; zeros(1, max_length - length(t1_v));0];
        t2_v = [t2_v; zeros(1, max_length - length(t2_v));0];
        t3_v = [t3_v; zeros(1, max_length - length(t3_v));0];
        t_v = [t1_v,t2_v,t3_v]';
        t_v = t_v(:,all(t_v>=0,1));
        t1_v=t_v(1);
        t2_v=t_v(2);
        t3_v=t_v(3);
    end
    if t1_v<-10^-30||t2_v<-10^-30||t3_v<-10^-30||(c1_v<-10^-30&&c1_v~=-1&&c1_v~=-2)||(c2_v<-10^-30&&c2_v~=-1&&c2_v~=-2)||(c3_v<-10^-30&&c3_v~=-1&&c3_v~=-2)
        F=0;
        t1_v=0;t2_v=0;t3_v=0;c1_v=-2;c2_v=-2;c3_v=-2;
    else
        l0 = subs(l_e,[t1,t2,t3,c1,c2,c3],[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v]);
        F_s=  exp(vpa(kl * log(l0 / sum(l0))));
        F=double(F_s*10^300*10^300*10^300*10^300);
    end


end




