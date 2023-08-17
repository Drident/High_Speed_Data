t1 = (0:1e-6:250e-3)';
t2 = t1+0.3e-12*randn(250e3+1,1);
t3 = t1+20e-12*randn(250e3+1,1);

V1 = sin(2*pi*20e3*t1);
V2 = sin(2*pi*20e3*t2);
V3 = sin(2*pi*20e3*t3);

hold off
semilogy(abs(fft(V1)))
hold on
semilogy(abs(fft(V2)))
semilogy(abs(fft(V3)))
