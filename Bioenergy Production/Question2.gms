$onText
How much land will be required meet the energy demand from each
sector using bioenergy crop under a specific CO2 emission limit.
$offText

Sets
allitem
 /maize,sugarcane,oilpalm,soybean,rapeseed,
  land,
  co2,
  biodiesel,ethanol,
  industry,transport,residential,commercial,agriculture,
  2007*2016/
j(allitem)  Crop
 /maize,sugarcane,oilpalm,soybean,rapeseed/
i(allitem)  Resources
 /land/
s(allitem)  Energy Demand
 /industry,transport,residential,commercial,agriculture/
f(allitem)  Biofuel type
 /biodiesel,ethanol/
t(allitem)  Period
 /2007*2016/
c(allitem)  Emission
 /co2/
;

$include data.gms

parameter b(i,j,t) land requirement for crop;
          b(i,j,t) = 1 ;
          b(i,"oilpalm",t) = 0.5;
parameter h(c,t) emission in Megatonne;
          h(c,t) = hh(c,t)/1000000;
parameter g(c,f,j,t) Emission in Mtoe C02 per millha;
          g(c,f,j,t) = gg(c,f,j,t)/1000000          ;

FREE VARIABLE L;
NONNEGATIVE VARIABLE X(j,f,t);

Equations
Objective_Equ
Energy_demand_Equ(t)
Emission_Equ(c,t) co2 emission limit
;
Objective_Equ..
 L=E=SUM((j,f,t),b("land",j,t)*X(j,f,t));

Energy_demand_Equ(t)..
 SUM((j,f),a(j,f,t)*X(j,f,t))=G= SUM(s,d(s,t));

Emission_Equ(c,t)..
 SUM((f,j),g(c,f,j,t)*X(j,f,t))=L= h(c,t)

Model energy / all /
Solve energy using LP minimizing L;
Display x.l, x.m;
