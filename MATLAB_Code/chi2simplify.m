syms a b c d
n = a + b + c + d;

term1_numerator = (a - (a + c) * (a + b) / n)^2;
term1_denominator = (a + c) * (a + b) / n;

term2_numerator = (c - (a + c) * (c + d) / n)^2;
term2_denominator = (a + c) * (c + d) / n;

term3_numerator = (b - (b + d) * (a + b) / n)^2;
term3_denominator = (b + d) * (a + b) / n;

term4_numerator = (d - (b + d) * (c + d) / n)^2;
term4_denominator = (b + d) * (c + d) / n;

term1 = term1_numerator / term1_denominator;
term2 = term2_numerator / term2_denominator;
term3 = term3_numerator / term3_denominator;
term4 = term4_numerator / term4_denominator;

result = term1 + term2 + term3 + term4;
result=result*(a+b)*(c+d)*(a+c)*(b+d)
simplify(result)