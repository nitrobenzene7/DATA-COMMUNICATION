%analog frequency modulation
clc;
clear all;
close all;
t=0:0.001:1;
vm=5;
vc=5;
fm=10;
fc=100;
m=25;
msg= vm*sin(2*pi*fm*t);
subplot(3,1,1);
plot(t,msg,"RED");
xlabel("Time");
ylabel("Amplitude");
title("Message Signal/SUBRAT/074");
legend("Message signal m(t)");
grid on;
carrier=vc*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,carrier,"RED");
title("Carrier Signal/SUBRAT/074");
legend("Carrier c(t)");
grid on;
y=vc.*cos(2*pi*fc*t+m.*sin(2*pi*fm*t));
subplot(3,1,3);
plot(t,y,"RED");
xlabel("Time");
ylabel("Amplitude");
title("Frequency Modulated/SUBRAT/074");
legend("Frequency modulation");
grid on;
