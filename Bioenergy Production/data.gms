table a(j,f,t)   Energy generated (GWh per millha)
                     2007     2008       2009        2010        2011        2012        2013        2014        2015        2016
maize    .biodiesel  1702.8   1702.8     1702.8      1702.8      1702.8      1702.8      1702.8      1702.8      1702.8      1702.8
maize    .ethanol    20630.5  21455.72   22313.9488  23206.50675 24134.76702 25100.1577  26104.16401 27148.33057 28234.26379 29363.63435
soybean  .biodiesel  4415.4   4592.016   4775.69664  4966.724506 5165.393486 5372.009225 5586.889594 5810.365178 6042.779785 6284.490977
soybean  .ethanol
sugarcane.biodiesel
sugarcane.ethanol    35590.5  37014.12   38494.6848  40034.47219 41635.85108 43301.28512 45033.33653 46834.66999 48708.05679 50656.37906
rapeseed .biodiesel  9900     10296      10707.84    11136.1536  11581.59974 12044.86373 12526.65828 13027.72461 13548.8336  14090.78694
rapeseed .ethanol
oilpalm  .biodiesel  49500    51480      53539.2     55680.768   57907.99872 60224.31867 62633.29142 65138.62307 67744.168   70453.93471;


table m(i,j,t)    Maximum land cultivated for each period (millha)
                 2007        2008         2009        2010         2011
land.maize       13.7674     14.444582    13.654715   12.678875    13.218892
land.soybean     20.565279   21.246302    21.750468   23.327296    23.968663
land.sugarcane   7.08092     8.140089     8.617555    9.076706     9.601316
land.rapeseed    0.032       0.033        0.031       0.046        0.042
land.oilpalm     0.102042    0.103158     0.103904    0.10642      0.10908

      +          2012        2013        2014        2015        2016
land.maize       14.198496   15.279652   15.432909   15.407143   14.958862
land.soybean     24.975258   27.906675   30.273763   32.181243   33.183119
land.sugarcane   9.705388    10.195166   10.419678   10.111376   10.222915
land.rapeseed    0.046       0.045       0.044       0.048       0.048
land.oilpalm     0.113135    0.108635    0.126559    0.140082    0.142246;

table d(s,t)      energy demand (GWh)
                 2007        2008        2009        2010        2011        2012        2013        2014        2015        2016
industry         192616      197219      186279      203350      209390      209621      210160      205932      196612      195347
transport        1575        1607        1591        1662        2548        2782        2596        2794        2768        2584
residential      90881       95585       101779      108457      111971      117646      124896      132049      131315      132916
commercial       92253       97048       101022      106697      112227      119615      125729      133266      134084      132497
agriculture      17536       18397       16600       17696       21460       23268       23786       26735       26871       27771;

table hh(c,t) emission limit (tonnes). This is based on the assumption of 9% annual decrease in emission from energy sector
         2007        2008        2009        2010        2011        2012          2013             2014        2015           2016
co2      216000000   205200000   194940000   185193000   175933350   167136682.5   158779848.4      150840856   143298813.2    136133872.5;


table gg(c,f,j,t) Emission in ton C02 per millha. Emission per litre (f) * litre per millha
                          2007       2008         2009         2010         2011         2012         2013         2014         2015        2016
co2.biodiesel.maize       410040     426441.6     443499.264   461239.2346  479688.8039  498876.3561  518831.4103  539584.6668  561168.0534 583614.7756
co2.ethanol  .maize       5716524    5945184.96   6182992.358  6430312.053  6687524.535  6955025.516  7233226.537  7522555.598  7823457.822 8136396.135
co2.biodiesel.soybean     1075752    1118782.08   1163533.363  1210074.698  1258477.686  1308816.793  1361169.465  1415616.243  1472240.893 1531130.529
co2.ethanol  .soybean
co2.biodiesel.sugarcane
co2.ethanol  .sugarcane   9861804    10256276.16  10666527.21  11093188.29  11536915.83  11998392.46  12478328.16  12977461.28  13496559.74 14036422.12
co2.biodiesel.rapeseed    2412000    2508480      2608819.2    2713171.968  2821698.847  2934566.801  3051949.473  3174027.452  3300988.55  3433028.092
co2.ethanol  .rapeseed
co2.biodiesel.oilpalm     12060000   12542400     13044096     13565859.84  14108494.23  14672834     15259747.36  15870137.26  16504942.75 17165140.46
co2.ethanol  .oilpalm                                                                                                                                  ;
