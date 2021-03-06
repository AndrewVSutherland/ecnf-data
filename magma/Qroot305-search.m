print "Field 2.2.305.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 76);
OK := Integers(K);
Plist := [];
Append(~Plist,(2)*OK+(w)*OK);
Append(~Plist,(2)*OK+(w + 1)*OK);
Append(~Plist,(4*w - 37)*OK);
Append(~Plist,(7)*OK+(w + 2)*OK);
Append(~Plist,(7)*OK+(w + 4)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(17)*OK+(w + 6)*OK);
Append(~Plist,(17)*OK+(w + 10)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(2*w + 17)*OK);
Append(~Plist,(23)*OK+(w + 5)*OK);
Append(~Plist,(23)*OK+(w + 17)*OK);
Append(~Plist,(37)*OK+(w + 1)*OK);
Append(~Plist,(37)*OK+(w + 35)*OK);
Append(~Plist,(6*w + 49)*OK);
Append(~Plist,(-6*w + 55)*OK);
Append(~Plist,(43)*OK+(w + 20)*OK);
Append(~Plist,(43)*OK+(w + 22)*OK);
Append(~Plist,(53)*OK+(w + 13)*OK);
Append(~Plist,(53)*OK+(w + 39)*OK);
Append(~Plist,(14*w + 115)*OK);
Append(~Plist,(67)*OK+(w + 14)*OK);
Append(~Plist,(67)*OK+(w + 52)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(4*w - 35)*OK);
Append(~Plist,(-4*w - 31)*OK);
Append(~Plist,(-4*w - 35)*OK);
Append(~Plist,(-4*w + 39)*OK);
Append(~Plist,(157)*OK+(w + 36)*OK);
Append(~Plist,(157)*OK+(w + 120)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(173)*OK+(w + 42)*OK);
Append(~Plist,(173)*OK+(w + 130)*OK);
Append(~Plist,(-2*w + 23)*OK);
Append(~Plist,(2*w + 21)*OK);
Append(~Plist,(193)*OK+(w + 21)*OK);
Append(~Plist,(193)*OK+(w + 171)*OK);
Append(~Plist,(16*w - 147)*OK);
Append(~Plist,(-16*w - 131)*OK);
Append(~Plist,(223)*OK+(w + 79)*OK);
Append(~Plist,(223)*OK+(w + 143)*OK);
Append(~Plist,(227)*OK+(w + 43)*OK);
Append(~Plist,(227)*OK+(w + 183)*OK);
Append(~Plist,(10*w + 81)*OK);
Append(~Plist,(-10*w + 91)*OK);
Append(~Plist,(233)*OK+(w + 94)*OK);
Append(~Plist,(233)*OK+(w + 138)*OK);
Append(~Plist,(24*w + 197)*OK);
Append(~Plist,(-24*w + 221)*OK);
Append(~Plist,(-2*w + 9)*OK);
Append(~Plist,(2*w + 7)*OK);
Append(~Plist,(-2*w + 7)*OK);
Append(~Plist,(2*w + 5)*OK);
Append(~Plist,(-2*w + 25)*OK);
Append(~Plist,(2*w + 23)*OK);
Append(~Plist,(277)*OK+(w + 88)*OK);
Append(~Plist,(277)*OK+(w + 188)*OK);
Append(~Plist,(307)*OK+(w + 99)*OK);
Append(~Plist,(307)*OK+(w + 207)*OK);
Append(~Plist,(313)*OK+(w + 26)*OK);
Append(~Plist,(313)*OK+(w + 286)*OK);
Append(~Plist,(337)*OK+(w + 113)*OK);
Append(~Plist,(337)*OK+(w + 223)*OK);
Append(~Plist,(373)*OK+(w + 159)*OK);
Append(~Plist,(373)*OK+(w + 213)*OK);
Append(~Plist,(-4*w + 31)*OK);
Append(~Plist,(4*w + 27)*OK);
Append(~Plist,(383)*OK+(w + 62)*OK);
Append(~Plist,(383)*OK+(w + 320)*OK);
Append(~Plist,(397)*OK+(w + 29)*OK);
Append(~Plist,(397)*OK+(w + 367)*OK);
Append(~Plist,(14*w - 131)*OK);
Append(~Plist,(14*w + 117)*OK);
Append(~Plist,(433)*OK+(w + 59)*OK);
Append(~Plist,(433)*OK+(w + 373)*OK);
Append(~Plist,(-26*w - 215)*OK);
Append(~Plist,(26*w - 241)*OK);
Append(~Plist,(-8*w - 69)*OK);
Append(~Plist,(8*w - 77)*OK);
Append(~Plist,(457)*OK+(w + 176)*OK);
Append(~Plist,(457)*OK+(w + 280)*OK);
Append(~Plist,(-4*w - 39)*OK);
Append(~Plist,(4*w - 43)*OK);
Append(~Plist,(467)*OK+(w + 133)*OK);
Append(~Plist,(467)*OK+(w + 333)*OK);
Append(~Plist,(-2*w + 29)*OK);
Append(~Plist,(2*w + 27)*OK);
Append(~Plist,(-4*w - 25)*OK);
Append(~Plist,(4*w - 29)*OK);
Append(~Plist,(523)*OK+(w + 33)*OK);
Append(~Plist,(523)*OK+(w + 489)*OK);
Append(~Plist,(547)*OK+(w + 224)*OK);
Append(~Plist,(547)*OK+(w + 322)*OK);
Append(~Plist,(557)*OK+(w + 34)*OK);
Append(~Plist,(557)*OK+(w + 522)*OK);
Append(~Plist,(10*w - 89)*OK);
Append(~Plist,(-10*w - 79)*OK);
Append(~Plist,(-20*w - 163)*OK);
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

ECSearch("4.1-a",(2)*OK,[-3, 3, -3, -2, -6, 6, -2, -2, -9, 9, -6, 6, 9, 9, 0, 0, 0, 0, 10, -3, 3, -11, -11, 13, -18, -18, -21, -21]);
ECSearch("4.1-b",(2)*OK,[-3, -3, 3, -2, 6, -6, -2, -2, 9, -9, 6, -6, 9, 9, 0, 0, 0, 0, 10, 3, -3, -11, -11, 13, -18, -18, -21, -21]);
ECSearch("5.1-a",(4*w - 37)*OK,[-1, 1, 0, 0, -2, -2, 2, 0, 0, -8, 8, 6, -6, 6, 6, -12, 12, 10, -10, -10, 12, -12, 2, 2, 6, 0, 0, -6, -6]);
ECSearch("5.1-b",(4*w - 37)*OK,[1, -1, 0, 0, -2, 2, -2, 0, 0, 8, -8, -6, 6, 6, 6, 12, -12, -10, 10, -10, -12, 12, 2, 2, 6, 0, 0, -6, -6]);
ECSearch("8.1-a",(4)*OK+(2*w)*OK,[3, 1, -5, -2, 0, 6, -4, 2, -3, 3, 4, 10, -3, -3, 4, 4, 12, -12, -10, 13, -5, 11, 11, 5, 18, -12, 9, -3]);
ECSearch("8.1-b",(4)*OK+(2*w)*OK,[3, -1, 5, -2, 0, -6, -4, 2, 3, -3, -4, -10, -3, -3, -4, -4, -12, 12, -10, -13, 5, 11, 11, 5, 18, -12, 9, -3]);
ECSearch("8.2-a",(4)*OK+(2*w + 2)*OK,[3, -5, 1, -2, 6, 0, 2, -4, 3, -3, 10, 4, -3, -3, 4, 4, -12, 12, -10, -5, 13, 11, 11, 5, -12, 18, -3, 9]);
ECSearch("8.2-b",(4)*OK+(2*w + 2)*OK,[3, 5, -1, -2, -6, 0, 2, -4, -3, 3, -10, -4, -3, -3, -4, -4, 12, -12, -10, 5, -13, 11, 11, 5, -12, 18, -3, 9]);
ECSearch("9.1-a",(3)*OK,[1, -1, -3, 3, -3, -4, 4, 6, 6, 5, -5, -6, 6, -9, -9, -12, 12, 2, -2, -10, -9, 9, 11, 11, -3, 0, 0, -9, -9]);
ECSearch("9.1-b",(3)*OK,[-1, 1, 2, 2, -2, -6, 6, -4, -4, 0, 0, -4, 4, 6, 6, 2, -2, -2, 2, 10, 14, -14, -14, -14, 22, 0, 0, 6, 6]);
ECSearch("9.1-c",(3)*OK,[1, -1, 2, -2, 2, 6, -6, -4, -4, 0, 0, 4, -4, 6, 6, -2, 2, 2, -2, 10, -14, 14, -14, -14, 22, 0, 0, 6, 6]);
ECSearch("9.1-d",(3)*OK,[-1, 1, -3, -3, 3, 4, -4, 6, 6, -5, 5, 6, -6, -9, -9, 12, -12, -2, 2, -10, 9, -9, 11, 11, -3, 0, 0, -9, -9]);
