%funcion ode45 que resuelve el sistema de movimiento traslacional
[t,x]=ode45(@P3_MovTras,[0 20],[0 0 0 0]);
%Se crea la figura donde se va a graficar el x con respecto a t
%x y t son parametros que retorna la funcion ode45
figure(1);
plot(t,x(:,1));
grid on
title("Movimiento Traslacional de M1");
hold on
figure(2); 
plot(t,x(:,2)); 
grid on
title("Movimiento Traslacional de M2");
