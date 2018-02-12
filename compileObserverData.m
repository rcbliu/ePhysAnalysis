function Time_b = compileObserverData(Behaviors,Dur_s)

% this function takes in the output from readObserverData.m and compiles
% all the different behaviors and their total duration

B = unique(Behaviors);
Len_b = length(B);
Time_b = zeros(Len_b,1)*NaN;

for i = 1:Len_b
    
    bi = Behaviors == B(i);
    Time_b(i,1) = sum(Dur_s(bi));
end

