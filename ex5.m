load rpdata y z;
%% PDF analysis
figure;
histogram(z, 'Normalization', 'pdf');
hold on;
histogram(y, 'Normalization', 'pdf');
grid on;
L = legend('PDF histogram of $z$', ...
'PDF histogram of $x$');
L.Interpreter = 'latex';
L.Box = 'off';

%% 
plot(y,z,'bo')

%%
%% Scatter plot
figure; scatter( y, z, 1, 'b' );
grid on;
xlabel('$y$', 'Interpreter', 'latex');
ylabel('$z$', 'Interpreter', 'latex');
%% Bivariate Histogram
figure;
histogram2(y, z, 'Normalization', 'pdf', ...
'FaceColor', 'flat');
view(-12,40);
xlabel('$y$', 'Interpreter', 'latex');
ylabel('$z$', 'Interpreter', 'latex');
colorbar;