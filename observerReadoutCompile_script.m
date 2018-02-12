% script to read in and compile observer readout
% make sure current directory is where the xlsx files are stored. Too lazy
% to code that in right now


fileNames = uigetfile('*.xlsx','multiselect','on');

len = length(fileNames);

for i = 1:len
    fileName = fileNames{i}; % current file name
    fileName_parts = strsplit(fileName,'-');
    vidName = fileName_parts{2};
    eval(['[BehaviorStruct_' vidName '] = readObserverData(fileName);']);
end    