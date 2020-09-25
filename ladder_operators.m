%takes user input as a vector of the form [a b c d ....]
%the length of the matrix is how many operations you want to do
% an entry of 1 is the creation operator (a_+) and an entry of 
%0 is the annihilation operator (a_-).

%Enter the operators in the order you would write them down
%For example a+ a- a- a- a+ a+ = [1 0 0 0 1 1].

%The program will the run through the vector right to left,
%so the operators are done in the correct order.

syms 'p_i' 'prefix' n
operator_vector = input('What is the operator vector? ');
p_i = n;
prefix = 1;

for i=length(operator_vector):-1:1
        if operator_vector(i)==1
            [prefix, p_i] = aplus(prefix, p_i, n);
        elseif operator_vector(i)==0
            [prefix, p_i] = aminus(prefix, p_i, n);
        else
            fprintf('You entered something other than a 1 or 0! Try again');
            break;
        end
end

fprintf('\n%s * psi_(%s)\n\n', char(prefix), char(p_i));

n = 1;
subs(prefix)

fprintf('\n%s * psi_(%s)\n\n', char(prefix), char(p_i));


