%% plotting wavelets

% how many frequencies
n = 50;

% define wavelet parameters
frex = linspace(1,8,n); % frequency spread
time = -2:.001:2; % time vector

% initialize wavelet matrix
wave = zeros(n,length(time));

% loop over frequencies
for fi=1:n
    
    % width parameter for Gaussian
    s = 5/(2*pi*frex(fi));
    
    % create the wavelet
    wave(fi,:) = cos(2*pi*frex(fi)*time) .* exp(-time.^2 / (2*s^2));
end

figure(2), clf

% make a surface plot
h = surf(time,frex,wave, repmat(frex',1,size(wave,2)));
shading interp
rotate3d on, axis square
xlabel('Time (sec.)'), ylabel('Frequency (Hz)'), zlabel('Amplitude')

%%
