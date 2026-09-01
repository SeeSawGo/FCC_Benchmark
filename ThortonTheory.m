%FCC
clc;clear;close all

a = 0.5;
b = 0.5;
f = 0.1;
C = sqrt(3/2*(a*a+b*b)+a*b);
sigmaxx_coeff = -1+2*f*a/C;
sigmazz_coeff = -2-2*(a+b)*f/C;

sigmaxx = 100*1e3;
sigmazz = sigmaxx/sigmaxx_coeff*sigmazz_coeff

