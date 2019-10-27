sets
    i 'Production in tons per day' /Methanol, MTBE/
    f 'feed in tons per day' /NaturalGas, Butane/

parameters
    p(i) 'selling Prices in market in USD' / Methanol 342, MTBE 600/
    q(f) 'cost Prices of feed in USD'  / NaturalGas 497, Butane 375/;

integer variables
    x(i) production in tons per day 
    y(f) feed used in tons per day ;
    
Free variable
 z Total Profit
 E revenue
 c Cost of feed ;

equations
    revenue 'selling prices'
    cost 'feed prices'
    profit 'To be maximixed';
    
revenue.. E =e= sum(i, x(i) * p(i)) ;
cost.. c =e= ((x('methanol')/2) * q('NaturalGas')) + (y('Butane') * q('Butane')) ;
profit.. z =e= E - c ;

x.lo ('Methanol') = 1250 ;
x.lo ('MTBE') = 800 ;

x.up ('Methanol') = 2500 ;
x.up ('MTBE') = 1800 ;


model petrochemical /all/;

solve petrochemical using mip maximizing z ;

display x.l ;