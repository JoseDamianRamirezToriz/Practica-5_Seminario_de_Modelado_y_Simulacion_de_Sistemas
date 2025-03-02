function dx = CDCD(t, x)
    %--- Definición de los parámetros ---%
    L = 0.002;     % Inductancia (H)
    R = 10;       % Resistencia (Ohm)
    C = 0.00001;    % Capacitancia (F)
    Uin = 32;     % Voltaje de entrada (V)
    dt=0.4;    %PWM del 40%


    %--- Estados del sistema ---%
    dx = zeros(2, 1);


    %--- Definición de la dinámica del sistema ---%
    dx(1)=-((1/L)*x(2))+((Uin/L)*dt); 
    dx(2)=((1/C)*x(1))-((1/(R*C))*x(2));
end
