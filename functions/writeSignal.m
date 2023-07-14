function ret = writeSignal(signal, path, type)
    ret = 0;
    
    fout = fopen(path, 'wb');
    for i = 1:length(signal)
        fwrite(fout, signal(i), type);
    end
    fclose(fout);
end