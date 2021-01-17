$onsymxref
$title BIOENERGY IN BRAZIL

$onText
How much energy can be generated in each year (t) if all the feedstock crops
(corn, sugarcane, palm oil, soybean, and rapeseed) produced by Brazil are used
to produce Ethanol and Biodiesel which is used for energy (KWh) generation.
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

parameter b(i,j,t) land requirement for crop. Assumption that oilpalm is biennial;
          b(i,j,t) = 1 ;
          b(i,"oilpalm",t) = 0.5;

FREE VARIABLE E 'energy generated (GWh)';
NONNEGATIVE VARIABLE X(j,f,t)

Equations
Energy           'defined objective function'
Resource(i,j,t)  'land-use restriction for crop cultivation for each period'
;
Energy..  E  =E= SUM((j,f,t),a(j,f,t)*X(j,f,t));

Resource(i,j,t).. b(i,j,t)*SUM(f,X(j,f,t))=L= m(i,j,t);

Model bioenergy / all /
Solve bioenergy using LP maximizing E;
display X.l, X.m;
