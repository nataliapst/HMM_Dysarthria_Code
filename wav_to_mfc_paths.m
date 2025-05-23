% Root directory where the folders will be searched
rootDir = 'C:\Users\root\Desktop\htk-3.2.1';

% Root directory for .mfc files
mfcRootDir = 'C:\Users\root\Desktop\htk-3.2.1\mfccs';

% Full path for the output file
outputFile = fullfile('C:\Users\root\Desktop', 'wav_to_mfc_paths.txt');

% Get all wav_headMic and wav_arrayMic folders within the root directory
folders = {'wav_headMic', 'wav_arrayMic'};
filePaths = [];

% Define paths or ranges to exclude
excludePaths = {
    'C:\Users\root\Desktop\htk-3.2.1\F\F01\Session1\wav_headMic\0066.wav',...
    'C:\Users\root\Desktop\htk-3.2.1\F\F01\Session1\wav_headMic\0067.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\F\F01\Session1\wav_headMic\0068.wav',...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\300.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\301.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\302.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\303.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0329.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0330.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0331.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0332.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0333.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0334.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0335.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0336.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0337.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0338.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0339.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0340.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0341.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0342.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0343.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0344.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0345.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0346.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0347.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0348.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0349.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0350.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0351.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0352.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0353.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0354.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0355.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0356.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0357.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0358.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0359.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0360.wav', ...
    'C:\Users\root\Desktop\htk-3.2.1\M\M05\Session2\wav_headMic\0361.wav'
};

for i = 1:length(folders)
    folderPath = fullfile(rootDir, '**', folders{i}); % Recursively search
    files = dir(fullfile(folderPath, '*.wav')); % Get all .wav files
    
    for j = 1:length(files)
        wavPath = fullfile(files(j).folder, files(j).name); % Full path to the .wav file
        
        % Check if the file should be excluded
        if ismember(wavPath, excludePaths)
            continue; % Skip excluded paths
        end
        
       
        
        % Create the corresponding path for .mfc
        relativePath = strrep(wavPath, rootDir, ''); % Get the relative path from rootDir
        mfcPath = fullfile(mfcRootDir, relativePath); % Combine with the new root directory
        mfcPath = strrep(mfcPath, '.wav', '.mfc'); % Change extension to .mfc
        
        % Create necessary directories for the .mfc path
        mfcDir = fileparts(mfcPath); % Extract the directory from the .mfc path
        if ~exist(mfcDir, 'dir')
            mkdir(mfcDir); % Create directories if they don't exist
        end
        
        % Add the paths to the array
        filePaths = [filePaths; {wavPath, mfcPath}];
    end
end

% Save the paths to a text file
fileID = fopen(outputFile, 'w');
for i = 1:size(filePaths, 1)
    fprintf(fileID, '%s\t%s\n', filePaths{i, 1}, filePaths{i, 2});
end
fclose(fileID);

% Display where the file was saved
fprintf('File generated at: %s\n', outputFile);
fprintf('.mfc files will be generated with structure at: %s\n', mfcRootDir);

% This MATLAB script scans directories for .wav audio files and generates corresponding .mfc file paths, maintaining the original folder structure.
%It excludes specific files from processing and ensures that the necessary directories exist. The generated paths are saved in a text file for further use 
%in speech processing with HTK. This script does not convert .wav files to .mfc, but prepares the required structure for later feature extraction.
%
