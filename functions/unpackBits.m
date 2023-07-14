function [unpackedBits] = unpackBits(packedBits, packType)
    rowLen = sizeof(packType)*8;
    rowCount = length(packedBits);
    row = zeros(1, rowLen);
    
    unpackedBits = [];
    
    for i = 1:rowCount
        rawBits = fliplr(de2bi(packedBits(i)));
        
        row(rowLen-length(rawBits)+1:end) = rawBits;
        unpackedBits = [unpackedBits row];
    end
end