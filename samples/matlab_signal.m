function result = signal_calc(input)
factor = 1.3;
if input > 40
    result = input * factor;
else
    result = input;
end
disp(result)
end
