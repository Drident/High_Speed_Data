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

for(k=1:10)
%while(1)

    ch1 = 0;
    ch2 = 0;
    ch3 = 0;
    ch4 = 0;

    Navg = 1;


    [ch1tmp, time] = RSscopeReadData(vsdev,1);
    ch1=ch1+ch1tmp;
    %ch2 = ch2+RSscopeReadData(vsdev,2);
    ch3 = ch3+RSscopeReadData(vsdev,3);
    %ch4 = ch4+RSscopeReadData(vsdev,4);

    pause(0.1)
    % vsdev.writeread('ACQ:STAT?')

    %ch1 = ch1/Navg;
    % ch2 = ch2/Navg;
    % ch3 = ch3/Navg;
    % ch4 = ch4/Navg;
    ch1 = ch1(1:2e3)';
    ch3 = ch3(1:2e3)';

    %plot([(0.14-ch1(1:end-1)).*diff(ch3)],'-x')


    posedge = (((0.14-ch1(1:end-1)).*diff(ch3))>0).*((0.14-ch1(1:end-1)).*diff(ch3));
    %plot(posedge, '-x' )






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


