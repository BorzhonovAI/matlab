function newVec = normVector(vector, coef)
    if(nargin < 2)
        coef = 1;
    end
    
    maxEl = max(abs(vector));
    newVec = (vector / maxEl) * coef;
    
end