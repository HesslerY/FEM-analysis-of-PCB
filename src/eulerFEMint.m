function a = eulerFEMint(C, K, f, T0, tstart, tend, N)
%
%   N is the number of steps
%   tstart is the initial time
%   tend is finish time of the recursion
%
%   a is the computed nodal temperatures for t=tstart+deltat:tend

%Matrix containing the nodal temperatures at time t in column t:
a = zeros(length(K),N); 

%Sets the initial nodal temperatures to T_0:
anew = T0*ones(length(K),1); 
%Determines step size from time interval and number of steps:
deltat = (tend-tstart)/N; 

for i=1:N %Loop over steps
    %Recursion for nodal temperatures:
    anew = eulerFEMstep(C, K, f, deltat, anew); 
    a(:,i) = anew;
end

end