% amplitude modulation(over modulation)
clc;
close all;
clear all;

t = 0:0.001:1;
am = 10;
fm = 10;
ac = 5;
fc = 100;

m = am * sin(2 * pi * fm * t);
c = ac * sin(2 * pi * fc * t);
x = m .* c;  
mod = x + ac .* c;

subplot(3,1,1);
plot(t, m, 'BLACK');
xlabel('time');
ylabel('amplitude');
title('over modulation/Subrat/074');
legend('over modulation m(t)');
grid on;

subplot(3,1,2);
plot(t, c, 'BLACK');
xlabel('time');
ylabel('amplitude');
title('Carrier Signal/SUBRAT/074');
legend('carrier signal c(t)');
grid on;

subplot(3,1,3);
plot(t, mod, 'BLACK');
xlabel('time');
ylabel('amplitude');
title('Modulated signal/subrat/074');
legend('Amplitude Modulation');
grid on;
