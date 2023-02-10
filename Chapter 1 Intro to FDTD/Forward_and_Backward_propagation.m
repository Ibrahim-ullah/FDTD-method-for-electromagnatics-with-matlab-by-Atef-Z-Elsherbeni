




% create exact function and its derivative
N_exact = 301; % number of sample points for exact function

x_exact = linspace(0,6* pi, N_exact);

f_exact = sin(x_exact).* exp(-0.3*x_exact);

f_derivative_exact = cos(x_exact).*exp(-0.3*x_exact) - 0.3*sin (x_exact).* exp(-0.3*x_exact);

% plot exact function
figure (1);

plot (x_exact , f_exact ,'k-', 'linewidth',1.5);
set (gca,'FontSize',12,'fontweight', 'demi');
axis([0 6*pi-1 1]); grid on;

xlabel(x,'FontSize',16);
ylabel(y, 'FontSize',16);

% create exact function for pi/5 sampling period

% and its finite difference derivatives

N_a = 31; % number of points for pi/5 sampling period

x_a = linspace(0,6*pi, N_a);

f_a = sin(x_a).* exp(-0.3*x_a);

f_derivative.a = cos(x_a).* exp(-0.3*x_a) - 0.3+sin(x_a).* exp(-0.3*x_a);

dx_a = pi/5;
f_derivative_forward_a = zeros(1,N_a);
f_derivative_backward_a = zeros(1,N_a);
f_derivative_central_a = zeros(1,N_a);

f_derivative_forward_a(1:N_a-1) = (f_a (2: N_a)- f_a(1:N_a-1))/dx_a;
f_derivative_backward_a(2:N_a) = (f_a (2: N_a)- f_a(1:N_a-1))/dx_a;
f_derivative_central_a(2:N_a-1) =(f_a (3: N_a)- f_a (1:N_a-2))/(2*(dx_a));

