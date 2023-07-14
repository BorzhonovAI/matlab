clc; 
clear; 
close all;
addpath('../functions');

%% sinus
fs = 48000;
t = 0:1/fs:10;

freqSin = 1000;

sig = complex(cos(2*pi*freqSin*t), sin(2*pi*freqSin)*t);

figure(1)
plot(t, real(sig));
title("sin");

% sound(real(sig), fs);

%% file

fileName = "bin/signalFM_fd_500000.iqf";
% fileName = "bin/testDataFM_fd44100.iqf";
unitType = "float";
fs = 500000;

sigFM = read_complex_vector(fileName, unitType);
t = 0:1/fs:(length(sigFM)-1)/fs;

figure(2)
plot(t, real(sigFM));
title("signal FM");

freq = freqDetection(sigFM);
freq = normVector(freq);

figure(3)
plot(t, freq)
title("freq from signal FM");

%% play freq from signalFM
fsSound = 48000;

resFreq = resample(freq, fsSound, fs);

sound(resFreq, fsSound);







