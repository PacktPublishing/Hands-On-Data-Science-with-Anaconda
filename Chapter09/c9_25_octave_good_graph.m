#{
  Name     : c9_25_octave_good_graph.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com

 input data: http://canisius.edu/~yany/data/c9_input.csv
#}



a=csvread("c:/temp/c9_input.csv");
x=a(:,2);
y=a(:,3);
figure % open a new figure window
plot(x, y, 'o');
ylabel('Annual returns for S&P500')
xlabel('Annual returns for IBM')
#
m = length(y);
x = [ones(m, 1), x]; %add a column of ones to x
theta = zeros(size(x,2),1);
alpha = 0.07;
delta = ones(size(theta));
while abs(max(delta(:))) > 0.00001
  h = sum(x * theta,2);
  err = h - y;
  delta = x' * err / m;
  theta = theta - alpha * delta;
end
hold on % Plot new data without clearing old plot
plot(x(:,2), x*theta, '-') % remember that x is now a matrix with 2
                           % columns
                           % and the second column contains the
                           % time info
legend('Training data', 'Linear regression')
J_vals = zeros(100, 100);  % initialize 
theta0_vals = linspace(-3, 3, 100);
theta1_vals = linspace(-1, 1, 100);
for i = 1:length(theta0_vals)
  for j = 1:length(theta1_vals)
    t = [theta0_vals(i); theta1_vals(j)];
    h = sum(x * t);
    J_vals(i,j) = sum((h - y).^2) / (2*m);
  end
end
% Plot the surface plot
% Because of the way meshgrids work in the surf command, we need to 
% transpose J_vals before calling surf, or else the axes will be
% flipped
J_vals = J_vals';
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1')