function anew = eulerFEMstep(C, K, f, deltat, aold)
%eulerFEM Computes the new nodal temperatures using implicit Euler
%   C is the transient matrix
%   K is the stiffness matrix (including convection)
%   deltat is the time between aold and anew
%   f is the RHS vector (from boundary conditions, flux and convection)

 anew = (C+deltat*K)\(C*aold+deltat*f);
end