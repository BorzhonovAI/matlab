function newVec = normComplexVector(vector, coef)
    if(nargin < 2)
        coef = 1;
    end
    
    newVec = complex(normVector(real(vector, coef)), normVector(imag(vector, coef)));
    
end