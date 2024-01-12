%x=0:0.1:20;
x=linspace(0,20,1000);
y=cos(x);
subplot(2,1,1);
plot(x,y,'r');
axis([0 10 -1 1]);
xlabel('Tiempo');
ylabel('Voltaje');
title('Grafica');

%hold on;
subplot(2,1,2);
z=sin(x);
plot(x,z, 'b');
%hold on;
%a=log(x);
%plot(x,a,'c');
