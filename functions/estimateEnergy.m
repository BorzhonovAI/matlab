function power = estimateEnergy(vector, size)
    power = 0;
    
    for i = 1:size
        power = power + abs(vector(i))^2;
    end
end