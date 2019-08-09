%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\terry\OneDrive\PhD\Xe Model 2019-1-03\run_10_SA\New_Xe_Model\ORNL_TM_0378_p42_fuel.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2019/06/26 20:45:04

%% Initialize variables.
filename = 'C:\Users\terry\OneDrive\PhD\Xe Model 2019-1-03\run_10_SA\New_Xe_Model\ORNL_TM_0378_p42_fuel.csv';
delimiter = ',';
startRow = 2;

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Allocate imported array to column variable names
R_fs_m = dataArray{:, 1}*2.54E-2;
T_fs_K = (dataArray{:, 2}+458.67)*5/9;


%% Clear temporary variables
clearvars filename delimiter startRow formatSpec fileID dataArray ans;