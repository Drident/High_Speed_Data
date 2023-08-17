
A = dlmread("mydocf2s.txt");
er = 1000401;
for(k=1:11297)
    if A(end+1)>er
        B = A(end+1);
    else
        B = 0;
    end
end

