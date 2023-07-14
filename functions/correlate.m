%%%%%%%%%%%%%%%%%%%%%%%%
% Рассчитывает корреляционную 
% функцию двух комлексных сигналов
% вектор 1 должен быть больше чем вектор 2
%%%%%%%%%%%%%%%%%%%%%%%%
function corr_vector = correlate(vector_1, vector_2, doNorm)
    if(nargin < 3)
        doNorm = 0;
    end
    corrSize = length(vector_1)-length(vector_2)+1;
    corr_vector = zeros(1, corrSize);
    
    for j = 1:corrSize
        currRes = complex(0,0);
        for i = length(vector_2):-1:1
            if ((i+j) < length(vector_1))
                tmp = vector_1(i+j);
            else
                tmp = complex(0,0);
            end
            
            currRes = currRes + tmp*conj(vector_2(i));
        end
        corr_vector(j) = currRes;
    end
    
    if(doNorm)
        corr_vector = normalize_vector(corr_vector, vector_1, vector_2);
    end
    
end