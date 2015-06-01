print "Field 2.2.197.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 49);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK);
Append(~Plist,(-w + 7)*OK);
Append(~Plist,(-w - 6)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(w + 5)*OK);
Append(~Plist,(w - 6)*OK);
Append(~Plist,(w + 8)*OK);
Append(~Plist,(w - 9)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(w + 4)*OK);
Append(~Plist,(w - 5)*OK);
Append(~Plist,(w + 3)*OK);
Append(~Plist,(w - 4)*OK);
Append(~Plist,(w + 9)*OK);
Append(~Plist,(w - 10)*OK);
Append(~Plist,(w + 2)*OK);
Append(~Plist,(w - 3)*OK);
Append(~Plist,(w + 1)*OK);
Append(~Plist,(w - 2)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(w + 10)*OK);
Append(~Plist,(w - 11)*OK);
Append(~Plist,(w + 11)*OK);
Append(~Plist,(w - 12)*OK);
Append(~Plist,(-2*w + 11)*OK);
Append(~Plist,(2*w + 9)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(3*w + 17)*OK);
Append(~Plist,(w + 12)*OK);
Append(~Plist,(w - 13)*OK);
Append(~Plist,(3*w - 25)*OK);
Append(~Plist,(3*w + 22)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(-3*w - 16)*OK);
Append(~Plist,(3*w - 19)*OK);
Append(~Plist,(-3*w - 23)*OK);
Append(~Plist,(3*w - 26)*OK);
Append(~Plist,(-4*w + 27)*OK);
Append(~Plist,(4*w + 23)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(4*w - 33)*OK);
Append(~Plist,(4*w + 29)*OK);
Append(~Plist,(-2*w + 5)*OK);
Append(~Plist,(2*w + 3)*OK);
Append(~Plist,(w + 15)*OK);
Append(~Plist,(w - 16)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 1)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(w + 16)*OK);
Append(~Plist,(w - 17)*OK);
Append(~Plist,(-3*w - 13)*OK);
Append(~Plist,(3*w - 16)*OK);
Append(~Plist,(-5*w + 34)*OK);
Append(~Plist,(5*w + 29)*OK);
Append(~Plist,(5*w - 41)*OK);
Append(~Plist,(5*w + 36)*OK);
Append(~Plist,(w + 17)*OK);
Append(~Plist,(w - 18)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(w + 18)*OK);
Append(~Plist,(w - 19)*OK);
Append(~Plist,(-3*w - 10)*OK);
Append(~Plist,(3*w - 13)*OK);
Append(~Plist,(-3*w - 26)*OK);
Append(~Plist,(3*w - 29)*OK);
Append(~Plist,(w + 19)*OK);
Append(~Plist,(w - 20)*OK);
Append(~Plist,(-4*w + 23)*OK);
Append(~Plist,(4*w + 19)*OK);
Append(~Plist,(-3*w + 11)*OK);
Append(~Plist,(3*w + 8)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(-3*w + 8)*OK);
Append(~Plist,(3*w + 5)*OK);
Append(~Plist,(-5*w + 43)*OK);
Append(~Plist,(-5*w - 38)*OK);
Append(~Plist,(-5*w - 26)*OK);
Append(~Plist,(5*w - 31)*OK);
Append(~Plist,(-3*w + 5)*OK);
Append(~Plist,(3*w + 2)*OK);
Append(~Plist,(-7*w + 48)*OK);
Append(~Plist,(7*w + 41)*OK);
Append(~Plist,(-3*w + 2)*OK);
Append(~Plist,(3*w - 1)*OK);
Append(~Plist,(7*w - 57)*OK);
Append(~Plist,(7*w + 50)*OK);
Append(~Plist,(w + 22)*OK);
Append(~Plist,(w - 23)*OK);
Append(~Plist,(-2*w + 27)*OK);
Append(~Plist,(2*w + 25)*OK);
Append(~Plist,(-3*w - 29)*OK);
Append(~Plist,(3*w - 32)*OK);
Append(~Plist,(-5*w - 39)*OK);
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

ECSearch("9.1-a",(3)*OK,[0, -1, -1, -5, 3, 3, -1, -2, 9, 5, -1, -9, -7, 5, 3, -13, 9, 13, 2, -6, -8, 0, 1, -7, -11, 1, 14, -10, 3]);
ECSearch("9.1-b",(3)*OK,[0, -1, -1, 3, -5, -1, 3, -2, 5, 9, -9, -1, 5, -7, -13, 3, 13, 9, -6, 2, 0, -8, -7, 1, 1, -11, -10, 14, 15]);
ECSearch("23.1-a",(w + 8)*OK,[1, 0, 2, 4, -3, -4, -4, -8, 3, -1, -6, -3, -2, 3, 2, 10, 8, 3, -10, -13, 8, -9, 0, -6, -11, 9, -14, 16, -6]);
ECSearch("23.2-a",(w - 9)*OK,[1, 2, 0, 4, -4, -3, -4, -8, -1, 3, -3, -6, 3, -2, 10, 2, 3, 8, -13, -10, -9, 8, -6, 0, 9, -11, 16, -14, 1]);
ECSearch("28.1-a",(-2*w + 14)*OK,[2, -1, 8, -6, -3, 4, 8, -2, -3, -2, -10, -2, 12, -2, -1, 2, -6, 0, -10, -3, 0, 8, -7, -12, 10, -7, -16, -2]);
ECSearch("28.1-b",(-2*w + 14)*OK,[2, 5, -2, -8, -7, 6, -4, 6, -9, -2, -4, 6, -8, -2, 1, -8, 6, -4, -10, -9, -12, -8, 13, 2, 4, 17, -18, 14]);
ECSearch("28.1-c",(-2*w + 14)*OK,[-1, 4, 2, 5, -3, 0, 2, 3, -9, -4, 8, -3, -12, -1, -4, 6, 3, 9, -6, 15, 6, 14, -4, -12, -12, -19, -10, 9]);
ECSearch("28.2-a",(-2*w - 12)*OK,[2, -1, -6, 8, 4, -3, 8, -3, -2, -10, -2, 12, -2, -1, -2, -6, 2, -10, 0, 0, -3, -7, 8, 10, -12, -16, -7, -19]);
ECSearch("28.2-b",(-2*w - 12)*OK,[2, 5, -8, -2, 6, -7, -4, -9, 6, -4, -2, -8, 6, 1, -2, 6, -8, -10, -4, -12, -9, 13, -8, 4, 2, -18, 17, -3]);
ECSearch("28.2-c",(-2*w - 12)*OK,[-1, 4, 5, 2, 0, -3, 2, -9, 3, 8, -4, -12, -3, -4, -1, 3, 6, -6, 9, 6, 15, -4, 14, -12, -12, -10, -19, 6]);
ECSearch("41.1-a",(w + 9)*OK,[-1, 4, -4, -4, 4, 0, 4, 0, -6, 6, 6, -10, 10, -2, 0, -10, -12, -12, -6, -12, -6, -12, 14, 10, -4, 12, 2, 14, 8]);
ECSearch("41.2-a",(w - 10)*OK,[-1, -4, 4, -4, 0, 4, 0, 4, -6, 6, 6, 10, -10, -2, -10, 0, -12, -12, -12, -6, -12, -6, 10, 14, 12, -4, 14, 2, 10]);
ECSearch("49.1-a",(7)*OK,[4, -1, -6, -6, 3, 3, 3, -6, -6, 1, 1, -2, -2, 1, 1, 8, 8, -5, -5, 4, 4, 14, 14, -12, -12, 16, 16, -4]);
ECSearch("49.2-a",(w)*OK,[3, 0, 2, -8, -2, 0, 0, 4, 0, 4, -2, -10, 6, -4, -10, -4, -8, 0, 6, 10, -8, -12, -14, 14, -4, -10, -10, 8, -14]);
ECSearch("49.2-b",(w)*OK,[2, 3, 1, -7, -5, -3, 7, 3, 7, 3, 2, 3, 3, 7, -4, 8, -5, 8, 10, 13, -3, 0, 9, -10, 0, -12, -1, 15, -11]);
ECSearch("49.2-c",(w)*OK,[2, 3, -1, -7, 5, -3, 7, -3, -7, -3, 2, 3, 3, -7, 4, -8, 5, 8, -10, -13, 3, 0, -9, -10, 0, 12, -1, -15, 11]);
ECSearch("49.2-d",(w)*OK,[3, 0, -2, -8, 2, 0, 0, -4, 0, -4, -2, -10, 6, 4, 10, 4, 8, 0, -6, -10, 8, -12, 14, 14, -4, 10, -10, -8, 14]);
ECSearch("49.3-a",(w - 1)*OK,[3, 0, 2, -2, -8, 0, 0, 4, 4, 0, -10, -2, -4, 6, -4, -10, 0, -8, 10, 6, -12, -8, 14, -14, -10, -4, 8, -10, 6]);
ECSearch("49.3-b",(w - 1)*OK,[2, 3, 1, -5, -7, 7, -3, 3, 3, 7, 3, 2, 7, 3, 8, -4, 8, -5, 13, 10, 0, -3, -10, 9, -12, 0, 15, -1, -10]);
ECSearch("49.3-c",(w - 1)*OK,[2, 3, -1, 5, -7, 7, -3, -3, -3, -7, 3, 2, -7, 3, -8, 4, 8, 5, -13, -10, 0, 3, -10, -9, 12, 0, -15, -1, -10]);
ECSearch("49.3-d",(w - 1)*OK,[3, 0, -2, 2, -8, 0, 0, -4, -4, 0, -10, -2, 4, 6, 4, 10, 0, 8, -10, -6, -12, 8, 14, 14, 10, -4, -8, -10, 6]);
ECSearch("53.1-a",(-2*w + 13)*OK,[-4, -1, -1, -2, -7, -1, 3, 9, 2, -3, -3, 5, -7, 3, -3, 11, -1, 3, -9, 6, -12, 12, 5, -13, 3, 9, 2, 14, 9]);
ECSearch("53.2-a",(2*w + 11)*OK,[-4, -1, -1, -2, -1, -7, 9, 3, 2, -3, -3, -7, 5, -3, 3, -1, 11, -9, 3, 6, 12, -12, -13, 5, 9, 3, 14, 2, 3]);
ECSearch("59.1-a",(-2*w + 17)*OK,[0, -1, -1, 2, -1, -1, 5, -5, 6, -5, -1, -7, 3, -3, 5, 11, 1, 3, 9, 2, -6, 0, 13, -5, 15, 13, -10, -6, 15]);
ECSearch("59.2-a",(2*w + 15)*OK,[0, -1, -1, 2, -1, -1, -5, 5, 6, -1, -5, 3, -7, 5, -3, 1, 11, 9, 3, -6, 2, 0, -5, 13, 13, 15, -6, -10, -19]);
ECSearch("63.1-a",(-3*w + 21)*OK,[-1, 0, -4, 4, 6, 4, 6, 4, 0, -10, -6, 6, -8, 8, -4, -8, -4, -2, -14, -12, 0, 6, 2, 6, 6, 14, 6, 10]);
ECSearch("63.2-a",(-3*w - 18)*OK,[-1, 0, 4, -4, 4, 6, 6, 0, 4, -6, -10, -8, 6, -4, 8, -4, -8, -14, -2, 0, -12, 2, 6, 6, 6, 6, 14, -4]);
ECSearch("81.1-a",(9)*OK,[0, -1, -1, -5, 3, -3, 1, -2, -9, -5, -1, -9, 7, -5, 3, -13, -9, -13, -2, 6, 8, 0, 1, -7, 11, -1, 14, -10, -3]);
ECSearch("81.1-b",(9)*OK,[0, -1, -1, 3, -5, 1, -3, -2, -5, -9, -9, -1, -5, 7, -13, 3, -13, -9, 6, -2, 0, 8, -7, 1, -1, 11, -10, 14, -15]);
