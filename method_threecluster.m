tic
syms t1 t2 t3 c1 c2 c3 x y
%求方程组的数值解t1,t2,t3,c1,c2,c3>=0 

%1000组数据
simulation1000k_1


l = sym(zeros(25,1));
M = sym(zeros(3,1));
N = sym(zeros(3,1));
N2= sym(zeros(3,1));


%T1_3x = zeros(1000,105);
%C1_3x = zeros(1000,105);
%T2_3x = zeros(1000,105);
%C2_3x = zeros(1000,105);
%T3_3x =zeros(1000,105);
%C3_3x =zeros(1000,105);
%F3x = zeros(1000,105);


for n = 1:105
    n
    %读取公式
    eval(['blocks_c',num2str(n)])
    eval(['newlambda_c',num2str(n)]);
    l_c=l;

    eval(['blocks_inf1c',num2str(n)])
    eval(['newlambda_inf1c',num2str(n)]);
    l_c1=l;

    eval(['blocks_inf2c',num2str(n)])
    eval(['newlambda_inf2c',num2str(n)]);
    l_c2=l;

    eval(['blocks_inf3c',num2str(n)])
    eval(['newlambda_inf3c',num2str(n)]);
    l_c3=l;

    eval(['blocks_inf12c',num2str(n)])
    eval(['newlambda_inf12c',num2str(n)]);
    l_c12=l;

    eval(['blocks_inf13c',num2str(n)])
    eval(['newlambda_inf13c',num2str(n)]);
    l_c13=l;

    eval(['blocks_inf23c',num2str(n)])
    eval(['newlambda_inf23c',num2str(n)]);
    l_c23=l;

    eval(['blocks_inf123c',num2str(n)])
    eval(['newlambda_inf123c',num2str(n)]);
    l_c123=l;

    
    tic
    for i = 1:1000
        %判断F3(:,1)是否仍是最大
        if F3x(i,1) > max(F3x(i,2:end))

            dFc1=-1;dFc2=-1;dFc3=-1;
            dFc1_x=-1;dFc2_x=-1;dFc3_x=-1;
            
            kl = k(i,:);
            %读取在二维中对应的位置坐标
            a = three2two(n,1);
            b = three2two(n,2);
            c = three2two(n,3);
            d = three2two(n,4);
        
            %比较两条边时的F
            F_a = F2(i,a);
            F_b = F2(i,b);
            F_c = F2(i,c);

            %判断是否需要添加第三条边
            if F_a >= max(F_b,F_c)
                t1_v = TT1(i,a);c1_v=CC1(i,a);
                t2_v = TT2(i,a);c2_v=CC2(i,a);
                dF1a=1;dF1b=1;dF2a=1;dF2b=1;
                t3_v=x;c3_v=y;
                check_t
                dF3a = coefficients(2);
                dF3b = coefficients(3);
            elseif F_b >= max(F_a,F_c)
                t1_v = TT1(i,b);c1_v=CC1(i,b);
                t3_v = TT2(i,b);c3_v=CC2(i,b);
                dF1a=1;dF1b=1;dF3a=1;dF3b=1;
                t2_v=x;c2_v=y;
                check_t
                dF2a = coefficients(2);
                dF2b = coefficients(3);
            elseif F_c >= max(F_a,F_b)
                if d==0
                    t2_v = TT1(i,c);c2_v=CC1(i,c);
                    t3_v = TT2(i,c);c3_v=CC2(i,c);
                else
                    t3_v = TT1(i,c);c3_v=CC1(i,c);
                    t2_v = TT2(i,c);c2_v=CC2(i,c);
                end
                dF2a=1;dF2b=1;dF3a=1;dF3b=1;
                t1_v=x;c1_v=y;
                check_t
                dF1a = coefficients(2);
                dF1b = coefficients(3);
            end
    
    
            %不需要添加第三条边，直接保存二维的解
            if dF3a <=0 &&dF3b<=0 || (dF3a*dF3b<0 && 10^10*max(dF3a,dF3b)+min(dF3a,dF3b)<0 )
                t3_v=0;c3_v=-1;
                bestT=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
                F_t= F_a;
            elseif (dF2a<=0&&dF2b<=0) || (dF2a*dF2b<0 && 10^10*max(dF2a,dF2b)+min(dF2a,dF2b)<0 )
                t2_v=0;c2_v=-1;
                bestT=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
                F_t= F_b;
            elseif dF1a <=0 &&dF1b<=0 || (dF1a*dF1b<0 && 10^10*max(dF1a,dF1b)+min(dF1a,dF1b)<0 )
                t1_v=0;c1_v=-1;
                bestT=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
                F_t= F_c;
            else
            %需要添加第三条边
                %固定三个参数c=0或inf（8个顶点）
                corner_8
                best_c8 = bestT;F_c8=F;
                checkderivative_c
                %至少有一个c是finite
                if dFc1>0 || dFc1_x>0 ||dFc2>0 ||dFc2_x>0||dFc3>0||dFc3_x>0
                    %固定两个参数c（12条边）
                    edge_8
                    checkderivative_c
                    best_e8 = bestT;F_e8=F;
                end
                if dFc1>0 || dFc1_x>0 ||dFc2>0 ||dFc2_x>0||dFc3>0||dFc3_x>0
                    %固定一个参数c（6个面）
                    face_8
                    checkderivative_c
                    best_face=bestT;F_face =F;
                end
                %三个c都是finite
                if dFc1>0 || dFc2>0 ||dFc3>0
                    sst1 = bestT(1);sst2=bestT(2);sst3=bestT(3);ssc1=bestT(4);ssc2=bestT(5);ssc3=bestT(6);
                    solve_t123_c123
                    Fvalue
                    bestT=[t1_v,t2_v,t3_v,c1_v,c2_v,c3_v];
                    checkderivative_c
                elseif dFc1_x>0
                    add_c1     
                    checkderivative_c
                elseif dFc2_x>0
                    add_c2
                    checkderivative_c
                elseif dFc3_x>0
                    add_c3
                    checkderivative_c
                end
                F_t = F;
            end

            
            if dFc1>=0||dFc2>=0||dFc1_x>=0||dFc2_x>=0||dFc3>0||dFc3_x>0
                i,'dFc'
                F
                dFc1
                dFc2
                dFc3
                dFc1_x
                dFc2_x
                dFc3_x
            end
        else
        %F3(:,1)不是最大时，无需计算
            bestT = [-3,-3,-3,-3,-3,-3];
            F_t = -3;
        end
        
    
        T1_3x(i,n)= bestT(1);
        T2_3x(i,n)= bestT(2);
        T3_3x(i,n)= bestT(3);
        C1_3x(i,n)= bestT(4);
        C2_3x(i,n)= bestT(5);
        C3_3x(i,n)= bestT(6);
        F3x(i,n)= F_t;

            
    end
    writematrix(F3x)
    writematrix(T1_3x)
    writematrix(T2_3x)
    writematrix(T3_3x)
    writematrix(C1_3x)
    writematrix(C2_3x)
    writematrix(C3_3x)

    toc

end








    
 
    
