% 验证：88％的正整数有一个小于100的素因子，92％的正整数有一个小于1000的素因子
% 大数因子分解算法综述.刘新星(https://www.docin.com/p-1037060136.html)
clc

p100=primes(100);
p1000=primes(1000);

1-prod(1-1./p100)
1-prod(1-1./p1000)
