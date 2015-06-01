print "Field 2.2.229.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 57);
OK := Integers(K);
Plist := [];
Append(~Plist,(3)*OK+(w)*OK);
Append(~Plist,(3)*OK+(w + 2)*OK);
Append(~Plist,(2)*OK);
Append(~Plist,(5)*OK+(w + 1)*OK);
Append(~Plist,(5)*OK+(w + 3)*OK);
Append(~Plist,(11)*OK+(w + 1)*OK);
Append(~Plist,(11)*OK+(w + 9)*OK);
Append(~Plist,(17)*OK+(w + 2)*OK);
Append(~Plist,(17)*OK+(w + 14)*OK);
Append(~Plist,(19)*OK+(w)*OK);
Append(~Plist,(19)*OK+(w + 18)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(43)*OK+(w + 16)*OK);
Append(~Plist,(43)*OK+(w + 26)*OK);
Append(~Plist,(7)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(61)*OK+(w + 15)*OK);
Append(~Plist,(61)*OK+(w + 45)*OK);
Append(~Plist,(71)*OK+(w + 33)*OK);
Append(~Plist,(71)*OK+(w + 37)*OK);
Append(~Plist,(83)*OK+(w + 17)*OK);
Append(~Plist,(83)*OK+(w + 65)*OK);
Append(~Plist,(97)*OK+(w + 30)*OK);
Append(~Plist,(97)*OK+(w + 66)*OK);
Append(~Plist,(103)*OK+(w + 34)*OK);
Append(~Plist,(103)*OK+(w + 68)*OK);
Append(~Plist,(149)*OK+(w + 61)*OK);
Append(~Plist,(149)*OK+(w + 87)*OK);
Append(~Plist,(151)*OK+(w + 28)*OK);
Append(~Plist,(151)*OK+(w + 122)*OK);
Append(~Plist,(167)*OK+(w + 39)*OK);
Append(~Plist,(167)*OK+(w + 127)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(3*w + 17)*OK);
Append(~Plist,(181)*OK+(w + 24)*OK);
Append(~Plist,(181)*OK+(w + 156)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(233)*OK+(w + 27)*OK);
Append(~Plist,(233)*OK+(w + 205)*OK);
Append(~Plist,(-3*w - 26)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(271)*OK+(w + 29)*OK);
Append(~Plist,(271)*OK+(w + 241)*OK);
Append(~Plist,(277)*OK+(w + 50)*OK);
Append(~Plist,(277)*OK+(w + 226)*OK);
Append(~Plist,(293)*OK+(w + 112)*OK);
Append(~Plist,(293)*OK+(w + 180)*OK);
Append(~Plist,(307)*OK+(w + 132)*OK);
Append(~Plist,(307)*OK+(w + 174)*OK);
Append(~Plist,(311)*OK+(w + 88)*OK);
Append(~Plist,(311)*OK+(w + 222)*OK);
Append(~Plist,(337)*OK+(w + 71)*OK);
Append(~Plist,(337)*OK+(w + 265)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-3*w + 14)*OK);
Append(~Plist,(3*w + 11)*OK);
Append(~Plist,(367)*OK+(w + 43)*OK);
Append(~Plist,(367)*OK+(w + 323)*OK);
Append(~Plist,(373)*OK+(w + 64)*OK);
Append(~Plist,(373)*OK+(w + 308)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 13)*OK);
Append(~Plist,(397)*OK+(w + 82)*OK);
Append(~Plist,(397)*OK+(w + 314)*OK);
Append(~Plist,(401)*OK+(w + 35)*OK);
Append(~Plist,(401)*OK+(w + 365)*OK);
Append(~Plist,(409)*OK+(w + 67)*OK);
Append(~Plist,(409)*OK+(w + 341)*OK);
Append(~Plist,(421)*OK+(w + 46)*OK);
Append(~Plist,(421)*OK+(w + 374)*OK);
Append(~Plist,(431)*OK+(w + 119)*OK);
Append(~Plist,(431)*OK+(w + 311)*OK);
Append(~Plist,(433)*OK+(w + 175)*OK);
Append(~Plist,(433)*OK+(w + 257)*OK);
Append(~Plist,(-5*w + 34)*OK);
Append(~Plist,(5*w + 29)*OK);
Append(~Plist,(-3*w - 7)*OK);
Append(~Plist,(3*w - 10)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(457)*OK+(w + 208)*OK);
Append(~Plist,(457)*OK+(w + 248)*OK);
Append(~Plist,(-5*w + 46)*OK);
Append(~Plist,(5*w + 41)*OK);
Append(~Plist,(463)*OK+(w + 186)*OK);
Append(~Plist,(463)*OK+(w + 276)*OK);
Append(~Plist,(467)*OK+(w + 94)*OK);
Append(~Plist,(467)*OK+(w + 372)*OK);
Append(~Plist,(491)*OK+(w + 145)*OK);
Append(~Plist,(491)*OK+(w + 345)*OK);
Append(~Plist,(-3*w + 5)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(-3*w - 1)*OK);
Append(~Plist,(3*w - 4)*OK);
effort := 400;
ECSearch := procedure(class_label, N, aplist);
print "Isogeny class ", class_label;
goodP := [P: P in Plist | Valuation(N,P) eq 0];
goodP := [goodP[i]: i in [1..#(aplist)]];
curves := EllipticCurveSearch(N,effort : Primes:=goodP, Traces:=aplist);
curves := [E: E in curves | &and[TraceOfFrobenius(E,goodP[i]) eq aplist[i] : i in [1..#(aplist)]]];
if #curves eq 0 then print "No curve found"; end if;
for E in curves do;
 a1,a2,a3,a4,a6:=Explode(aInvariants(E));
 printf "Curve [%o,%o,%o,%o,%o]\n",a1,a2,a3,a4,a6;
 end for;
end procedure;
SetColumns(0);

ECSearch("1.1-a",(1)*OK,[1, 1, -1, 3, 3, 3, 3, -3, -3, -1, -1, 2, 2, -1, -1, 14, 6, 6, 5, 5, -15, -15, -9, -9, -7, -7, 11, 11, -21, -21]);
ECSearch("4.1-a",(2)*OK,[3, -1, -3, 1, -3, 1, -3, -3, -3, 1, -2, -10, 1, -3, -2, -10, 6, -13, 15, 1, -7, 1, -11, -11, -3, 15, 7, 17, 5]);
ECSearch("4.1-b",(2)*OK,[1, 1, 3, 3, -5, -5, 5, 5, 7, 7, 10, 10, -9, -9, -2, -2, -2, 5, 5, 9, 9, -1, -1, 1, 1, -13, -13, -13, -13]);
ECSearch("4.1-c",(2)*OK,[-1, 3, 1, -3, 1, -3, -3, -3, 1, -3, -10, -2, -3, 1, -2, 6, -10, 15, -13, -7, 1, -11, 1, -3, -11, 7, 15, 5, 17]);
ECSearch("4.1-d",(2)*OK,[-1, -1, 1, 1, -3, -3, -7, -7, 5, 5, -2, -2, 9, 9, 10, -6, -6, -13, -13, -3, -3, -11, -11, 13, 13, -1, -1, -15, -15]);
ECSearch("5.1-a",(5)*OK+(w + 1)*OK,[1, -2, -1, 0, 6, 0, 3, 6, -4, 5, -4, 5, -7, 2, -4, 9, 0, 2, 2, 3, 15, 6, -9, 2, 2, -19, -10, 12, -18]);
ECSearch("5.2-a",(5)*OK+(w + 3)*OK,[-2, 1, -1, 0, 0, 6, 6, 3, 5, -4, 5, -4, 2, -7, -4, 0, 9, 2, 2, 15, 3, -9, 6, 2, 2, -10, -19, -18, 12]);
ECSearch("9.2-a",(9)*OK+(w + 3)*OK,[-1, 1, -3, 3, -3, 3, -3, 3, -1, -1, 2, 2, 1, 1, 14, 6, -6, -5, -5, 15, -15, -9, 9, -7, -7, -11, -11, -21, 21]);
ECSearch("9.3-a",(9)*OK+(w + 5)*OK,[-1, 1, 3, -3, 3, -3, 3, -3, -1, -1, 2, 2, 1, 1, 14, -6, 6, -5, -5, -15, 15, 9, -9, -7, -7, -11, -11, 21, -21]);
