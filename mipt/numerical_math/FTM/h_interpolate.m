function y_h = h_interpolate (x)
h = [10.4,9.95,9.5,9.1,8.6,8.0,6.4,6.4,6.4,6.4,6.3,6.3,6.35,6.4,6.5,...
6.5,6.5,6.9,7.3,8.3,8.4,8.1,8.2,7.5,6.8,6.0,5.4,5.2,5.4];
po_0 = 1.225*10^(-3); 
po_po_0 = [1,0.822,0.669,0.539,0.429,0,338,0.255,0.186,0.136,0.993*10^(-1),...
0.725*10^(-1),0.530*10^(-1),0.388*10^(-1),0.28*10^(-1),0.202*10^(-1),0.146*10^(-1),...
 0.676*10^(-2), 0.327*10^(-2),0.164*10^(-2), 0.878*10^(-3), 0.481*10^(-3),0.271*10^(-3),...
 0.146*10^(-3),0.757*10^(-4),0.371*10^(-4),0.171*10^(-4),0.696*10^(-5), 0.284*10^(-5)];
po = po_po_0.*po_0;
h = h*1e5;
y_h = spline(po, h, x);
end