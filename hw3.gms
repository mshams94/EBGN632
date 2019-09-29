sets
i 'Production in tons per day' /Methanol, MTBE/
f 'feed in tons per day' /NaturalGas, Butane/

parameters
    p(i) 'selling Prices in market in USD' / Methanol 342, MTBE 600/
    q(f) 'cost Prices of feed in USD'  / NaturalGas 497, Butane 375/;

integer variables
    x(i) production in tons per day 
    y(f) feed used in tons per day ;
    
Free variables
 z Total Profit
 E revenue
 c Cost of feed ;
