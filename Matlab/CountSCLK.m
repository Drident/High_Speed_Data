visaresource = 'USB0::2733::470::203458::0::INSTR';   %define visa
%resource name UNCOMMENT when name has been found

if(~exist('vsdev'))
    if(~exist('visaresource')||~any(visaresource))
        visadevlist
        return
    else
        vsdev = visadev(visaresource);
    end

end

Nedges = [];
f2s = [];

%for(k=1:10)
while(1)

    ch1 = 0;
    ch2 = 0;
    ch3 = 0;
    ch4 = 0;

    Navg = 1;


    [ch1tmp, time] = RSscopeReadData(vsdev,1);
    ch1=ch1+ch1tmp;

    ch3 = ch3+RSscopeReadData(vsdev,3);

    pause(0.1)


    ch1 = ch1(1:5e3)';
    ch3 = ch3(1:5e3)';
    time = time(1:5e3)';
    edgeCh1 = diff(ch1);
    [x,ind1] = min(edgeCh1);
    edgeCh1(ind1-veroff:ind1+veroff) = 0;
    [x,ind2] = min(edgeCh1);
    f2 = 1/abs(time(ind2)-time(ind1));
    f2s(end+1) = f2;



    %count SCLK edges

    ch1 = ch1(1:2e3)';
    ch3 = ch3(1:2e3)';
    posedge = (((0.14-ch1(1:end-1)).*diff(ch3))>0).*((0.14-ch1(1:end-1)).*diff(ch3));

    lim = 4e-3;
    horOff = 10;
    inds = find(posedge>lim);
    Nedge = 0;
    while(inds)
        Nedge = Nedge+1;
        posedge = posedge(inds(1)+horOff:end);
        inds = find(posedge>lim);
    end

    Nedges(end+1) = Nedge;
end

Nedges
f2s
