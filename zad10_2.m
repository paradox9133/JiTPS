clear all;
close all;
clc;
clearvars;

sign_wsp = 1; 
prec_i_wsp = 1; 
prec_f_wsp = 16; 
word_wsp = sign_wsp + prec_i_wsp + prec_f_wsp;

sign = 1;
prec_i = 8; 
prec_f = 0; 
word = sign + prec_i + prec_f;

img = double(imread('reka.ppm'));

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

fiR = fi(R,sign,word,prec_f);
fiG = fi(G,sign,word,prec_f);
fiB = fi(B,sign,word,prec_f);

fiY = fi(0,sign_wsp,word_wsp,prec_f_wsp);
fiCb = fi(0,sign_wsp,word_wsp,prec_f_wsp);
fiCr = fi(0,sign_wsp,word_wsp,prec_f_wsp);

fiY = quantize(fi(0.299,sign_wsp,word_wsp,prec_f_wsp)*fiR,sign,word,prec_f) + quantize(fi(0.587,sign_wsp,word_wsp,prec_f_wsp)*fiG,sign,word,prec_f) + quantize(fi(0.114,sign_wsp,word_wsp,prec_f_wsp)*fiB,sign,word,prec_f);
fiCb = quantize(fi(-0.168736,sign_wsp,word_wsp,prec_f_wsp)*fiR,sign,word,prec_f) + quantize(fi(-0.331264,sign_wsp,word_wsp,prec_f_wsp)*fiG,sign,word,prec_f) + quantize(fi(0.5,sign_wsp,word_wsp,prec_f_wsp)* fiB,sign,word,prec_f) + fi(128,sign,word,prec_f);
fiCr = quantize(fi(0.5,sign_wsp,word_wsp,prec_f_wsp)*fiR,sign,word,prec_f) + quantize(fi(-0.418688,sign_wsp,word_wsp,prec_f_wsp)*fiG,sign,word,prec_f) + quantize(fi(-0.081312,sign_wsp,word_wsp,prec_f_wsp)*fiB,sign,word,prec_f) + fi(128,sign,word,prec_f);

out = img;
out(:,:,1) = fiY;
out(:,:,2) = fiCb;
out(:,:,3) = fiCr;

figure,
imshow(uint8(out));

figure 
img2 = double(imread('out_01.ppm'));
imshow(uint8(img2));

figure
imDiff = imabsdiff(out, img2);
imshow(uint8(imDiff));