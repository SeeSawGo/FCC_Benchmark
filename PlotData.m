clc;clear;close all

opts = delimitedTextImportOptions("NumVariables", 6);

opts.DataLines = [2, Inf];
opts.Delimiter = ",";


opts.VariableNames = ["TimeStep", "SigmaXX", "SigmaYY", "SigmaZZ", "StrainZZ", "CoordinationNumber"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double"];


opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";


FCCdata = readtable("./Result/FCC_data_f0.1.csv", opts);


clear opts


% plot
f = 0.1;
coeff = 2. * (1. + f) / (1. - f);
figure; hold on
plot(FCCdata.StrainZZ, coeff*FCCdata.SigmaXX, '--', 'LineWidth', 1.5)
plot(FCCdata.StrainZZ, FCCdata.SigmaZZ, '-', 'LineWidth',1.5)
