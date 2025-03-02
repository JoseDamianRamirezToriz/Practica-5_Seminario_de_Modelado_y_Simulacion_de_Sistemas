%--- Condiciones iniciales ---%
x0 = [0, 0]; % [iL(0), Vc(0)]

%--- Tiempo de simulación ---%
tspan = [0, 0.01]; % Simulación de 0.01ms

%--- Resolver el sistema con ODE45 ---%
[t, x] = ode45(@CDCD, tspan, x0);

%--- Graficar los resultados ---%
figure(1);
plot(t, x(:, 1), 'b', 'LineWidth', 1.5); % Corriente iL en azul
hold on;
plot(t, x(:, 2), 'y', 'LineWidth', 1.5); % Voltaje Vc en amarillo
hold off;

% Configurar fondo negro y colores
set(gca, 'Color', 'k', 'XColor', 'b', 'YColor', 'b', 'GridColor', 'b');

title('Respuesta del Convertidor CD-CD', 'Color', 'b');
xlabel('Tiempo (s)', 'Color', 'b');
ylabel('Estados del Sistema', 'Color', 'b');
legend({'i_L (A)', 'V_C (V)'}, 'TextColor', 'b', 'EdgeColor', 'b');

grid on;
