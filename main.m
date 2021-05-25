% Project 1, Dynamic Macroeconomics with Numerics
% Part 2
% Samuel Hashem Zehi, Student ID 12012285
% Roza 
% Julian

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% (c) General Setup %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Specification of the function which is used to maximize the
% discounted, two-period utility of the agent

% Load parameters:
parameters;
disp(P)



% Create anonymus function:
fun = @(x) P.beta.*(P.alpha.*(P.alpha.*(P.deltaSS.*P.phi).^(-1).*x.^(P.alpha-1)).^(P.alpha./(P.phi-P.alpha)).*x.^(P.alpha-1)+1-P.deltaSS.*(P.alpha.*(P.deltaSS.*P.phi).^(-1).*x.^(P.alpha-1)).^(P.phi./(P.phi-P.alpha)))-1



% Define vector of consumption values for the plot
c = 1:0.1:100;

% Plot the function defined above:
plot(c,fun(c));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Root Finding Procedure %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set starting value for iterative method
x0 = 50;


% Call root-finder and print three results
    % 1. x value at which the root is
    % 2. value of the derivative at the root
    % 3. Check for reason of convergence (ideal: 1)
[x,fval,exitflag] = fzero(fun,x0)


x

fun2 = @(q) P.delta.*((P.alpha.*(P.deltaSS.*P.phi).^(-1).*q.^(P.alpha-1)).^(1./(P.phi-P.alpha))).^(P.phi)-P.deltaSS

[x,fval,exitflag] = fzero(fun2,x0)


