a = 0.1091;b = 0;P = [1-a a; b 1-b];T = 0:14;pp = zeros(2,length(T));for i=1:length(T)  pp(:,i) = dtmc(P,T(i),[1 0]);
endfor
ss = dtmc(P); # compute steady state probabilitiesplot(T, pp(1,:), "b+;p 0(t);", "linewidth", 2, ...T, ss(1)*ones(size(T)), "b;Steady State;", ...T, pp(2,:), "r+;p 1(t);", "linewidth", 2, ...T, ss(2)*ones(size(T)), "r; Steady State;");xlabel("Time Step");