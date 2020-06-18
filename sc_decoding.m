clc; clear
max = 5;
input = 1 : 2^max;
result = zeros(max + 1, 2^max);

result(1, :) = input;
for i = 2 : max + 1
%     num =  1 : 2^max;
%     num = reshape(num, 2^(i-1), 2^(max-i+1));
%     num = num';
%     num = reshape(num, 2^(max-1), 2);
    num = reshape((reshape(1 : 2^max, 2^(i-1), 2^(max-i+1)))', 2^(max-1), 2);
    for j = 1 : length(num(:, 1))
        result(i, num(j, 1)) = f(result(i-1, num(j, 1)), result(i-1, num(j, 2)));
        result(i, num(j, 2)) = g(result(i-1, num(j, 1)), result(i-1, num(j, 2)));
    end
end