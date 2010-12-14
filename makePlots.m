%%%%%%%%%%%
% Acceptance Rate Plot
data=importdata('acceptRate.dat');
plot(data(:,1), data(:,3)/1000000.0, 'k');
xlabel('N_{boxing}');
ylabel('f_{accept}');
axis([0 10000 0 inf]);
print -deps 'acceptRate.eps'