function normalized_corr_vector = normalizeCorrVector(corr_vector, vector_1, vector_2)
    normalized_corr_vector = zeros(1, length(corr_vector));

    inputPowers = calc_powers(vector_1, length(vector_2));
    etalonPower = estimate_energy(vector_2, length(vector_2));
    
    for i = 1:(length(vector_1)-length(vector_2)+1)
        normalized_corr_vector(i) = corr_vector(i)/sqrt(inputPowers(i)*etalonPower);
        if(abs(normalized_corr_vector(i)) > 1)
            normalized_corr_vector(i) = nan;
        end
    end
    
end