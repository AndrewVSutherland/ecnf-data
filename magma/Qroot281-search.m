print "Field 2.2.281.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 70);
OK := Integers(K);
Plist := [];
Append(~Plist,(w + 8)*OK);
Append(~Plist,(-w + 9)*OK);
Append(~Plist,(76*w - 675)*OK);
Append(~Plist,(-76*w - 599)*OK);
Append(~Plist,(-8*w - 63)*OK);
Append(~Plist,(-8*w + 71)*OK);
Append(~Plist,(3)*OK);
Append(~Plist,(42*w + 331)*OK);
Append(~Plist,(42*w - 373)*OK);
Append(~Plist,(6*w + 47)*OK);
Append(~Plist,(6*w - 53)*OK);
Append(~Plist,(10*w + 79)*OK);
Append(~Plist,(10*w - 89)*OK);
Append(~Plist,(-2*w + 19)*OK);
Append(~Plist,(-2*w - 17)*OK);
Append(~Plist,(194*w + 1529)*OK);
Append(~Plist,(-194*w + 1723)*OK);
Append(~Plist,(110*w + 867)*OK);
Append(~Plist,(110*w - 977)*OK);
Append(~Plist,(650*w - 5773)*OK);
Append(~Plist,(650*w + 5123)*OK);
Append(~Plist,(-4*w + 37)*OK);
Append(~Plist,(-4*w - 33)*OK);
Append(~Plist,(-60*w + 533)*OK);
Append(~Plist,(-60*w - 473)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(-2*w + 13)*OK);
Append(~Plist,(2*w + 11)*OK);
Append(~Plist,(-28*w + 249)*OK);
Append(~Plist,(-28*w - 221)*OK);
Append(~Plist,(44*w + 347)*OK);
Append(~Plist,(44*w - 391)*OK);
Append(~Plist,(-4*w - 29)*OK);
Append(~Plist,(4*w - 33)*OK);
Append(~Plist,(768*w - 6821)*OK);
Append(~Plist,(-768*w - 6053)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-2*w + 11)*OK);
Append(~Plist,(2*w + 9)*OK);
Append(~Plist,(312*w + 2459)*OK);
Append(~Plist,(-312*w + 2771)*OK);
Append(~Plist,(-20*w + 177)*OK);
Append(~Plist,(20*w + 157)*OK);
Append(~Plist,(464*w - 4121)*OK);
Append(~Plist,(-464*w - 3657)*OK);
Append(~Plist,(16*w + 127)*OK);
Append(~Plist,(16*w - 143)*OK);
Append(~Plist,(178*w + 1403)*OK);
Append(~Plist,(178*w - 1581)*OK);
Append(~Plist,(-8*w + 69)*OK);
Append(~Plist,(8*w + 61)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 1)*OK);
Append(~Plist,(-2*w + 1)*OK);
Append(~Plist,(-4*w + 31)*OK);
Append(~Plist,(4*w + 27)*OK);
Append(~Plist,(-14*w + 123)*OK);
Append(~Plist,(14*w + 109)*OK);
Append(~Plist,(-38*w - 299)*OK);
Append(~Plist,(-38*w + 337)*OK);
Append(~Plist,(-414*w - 3263)*OK);
Append(~Plist,(414*w - 3677)*OK);
Append(~Plist,(-296*w + 2629)*OK);
Append(~Plist,(296*w + 2333)*OK);
Append(~Plist,(-46*w + 409)*OK);
Append(~Plist,(-46*w - 363)*OK);
Append(~Plist,(1190*w - 10569)*OK);
Append(~Plist,(-1190*w - 9379)*OK);
Append(~Plist,(-128*w + 1137)*OK);
Append(~Plist,(-128*w - 1009)*OK);
Append(~Plist,(62*w + 489)*OK);
Append(~Plist,(62*w - 551)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(954*w - 8473)*OK);
Append(~Plist,(-954*w - 7519)*OK);
Append(~Plist,(-244*w + 2167)*OK);
Append(~Plist,(-244*w - 1923)*OK);
Append(~Plist,(-4*w + 41)*OK);
Append(~Plist,(4*w + 37)*OK);
Append(~Plist,(430*w + 3389)*OK);
Append(~Plist,(-430*w + 3819)*OK);
Append(~Plist,(-1798*w + 15969)*OK);
Append(~Plist,(-1798*w - 14171)*OK);
Append(~Plist,(-142*w - 1119)*OK);
Append(~Plist,(142*w - 1261)*OK);
Append(~Plist,(176*w + 1387)*OK);
Append(~Plist,(176*w - 1563)*OK);
Append(~Plist,(-36*w - 283)*OK);
Append(~Plist,(36*w - 319)*OK);
Append(~Plist,(20*w + 159)*OK);
Append(~Plist,(20*w - 179)*OK);
Append(~Plist,(-4*w + 27)*OK);
Append(~Plist,(4*w + 23)*OK);
Append(~Plist,(-2*w + 29)*OK);
Append(~Plist,(2*w + 27)*OK);
Append(~Plist,(-90*w + 799)*OK);
Append(~Plist,(-90*w - 709)*OK);
Append(~Plist,(-162*w + 1439)*OK);
Append(~Plist,(-162*w - 1277)*OK);
Append(~Plist,(23)*OK);
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

ECSearch("2.1-a",(w + 8)*OK,[0, 0, 3, -4, 2, -2, 0, -6, 3, -6, -10, -10, -4, -4, -9, 6, 9, 12, 5, 11, 12, -18, 2, 11, -10, -6, 0, 3, 6]);
ECSearch("2.2-a",(-w + 9)*OK,[0, 3, 0, 2, -4, -2, -6, 0, -6, 3, -10, -10, -4, -4, 6, -9, 12, 9, 11, 5, -18, 12, 11, 2, -10, 0, -6, 6, 3]);
ECSearch("8.1-a",(2*w + 16)*OK,[2, -1, -1, -4, -5, 6, 0, 2, 2, 6, 3, -2, 10, 6, -12, 2, -10, 10, -11, -7, -10, 11, 14, 13, -12, 6, 14, -19]);
ECSearch("8.1-b",(2*w + 16)*OK,[0, 3, -1, 2, -1, -4, 2, -4, 2, 6, -9, 6, -12, -2, -2, 6, 0, -14, -11, 17, -10, -9, -6, 13, 8, 20, -6, -15]);
ECSearch("8.1-c",(2*w + 16)*OK,[-1, -4, -4, 2, -2, -6, 6, 8, -1, -6, 0, -8, 4, 0, -9, 14, 11, -11, -5, -10, -4, 11, -4, 4, 18, 18, 8, 11]);
ECSearch("8.1-d",(2*w + 16)*OK,[-2, 1, -3, 0, 1, 8, -4, 0, 6, 4, 1, -8, 4, 2, -4, 14, 2, 0, 9, 5, 14, 11, 20, -13, -20, -2, -4, 17]);
ECSearch("8.1-e",(2*w + 16)*OK,[-3, 0, 2, -4, 2, 2, 8, 2, -1, -6, 6, -12, -12, 10, 1, 12, -3, -5, 7, 14, -4, -9, -6, -14, 8, 2, -18, -9]);
ECSearch("8.2-a",(-2*w + 18)*OK,[-1, 2, -4, -1, -5, 0, 6, 2, 2, 3, 6, 10, -2, -12, 6, -10, 2, -11, 10, -10, -7, 14, 11, 13, 6, -12, -19, 14]);
ECSearch("8.2-b",(-2*w + 18)*OK,[3, 0, 2, -1, -1, 2, -4, 2, -4, -9, 6, -12, 6, -2, -2, 0, 6, -11, -14, -10, 17, -6, -9, 13, 20, 8, -15, -6]);
ECSearch("8.2-c",(-2*w + 18)*OK,[-4, -1, 2, -4, -2, 6, -6, -1, 8, 0, -6, 4, -8, -9, 0, 11, 14, -5, -11, -4, -10, -4, 11, 4, 18, 18, 11, 8]);
ECSearch("8.2-d",(-2*w + 18)*OK,[1, -2, 0, -3, 1, -4, 8, 6, 0, 1, 4, 4, -8, -4, 2, 2, 14, 9, 0, 14, 5, 20, 11, -13, -2, -20, 17, -4]);
ECSearch("8.2-e",(-2*w + 18)*OK,[0, -3, -4, 2, 2, 8, 2, -1, 2, 6, -6, -12, -12, 1, 10, -3, 12, 7, -5, -4, 14, -6, -9, -14, 2, 8, -9, -18]);
ECSearch("10.1-a",(9*w - 80)*OK,[0, 3, 2, -4, 4, 6, 6, -9, 6, -10, -4, -4, 2, 9, -6, -9, 6, -1, 17, 6, -6, 14, -7, 2, 12, -6, 15, 0]);
ECSearch("10.1-b",(9*w - 80)*OK,[1, 0, 2, 4, 2, 0, 6, 2, -2, 0, 2, 8, 4, 6, -2, -6, 8, 0, -10, 4, 10, -4, -2, 10, 10, 12, 10, -18]);
ECSearch("10.1-c",(9*w - 80)*OK,[1, -2, -4, 0, 6, 6, -6, -2, -2, -8, 4, 12, -4, 2, 2, 0, 4, -8, -4, -6, -18, 2, 14, -18, -6, -10, 6, 6]);
ECSearch("10.4-a",(-9*w - 71)*OK,[0, 3, -4, 2, 4, 6, 6, 6, -9, -4, -10, 2, -4, -6, 9, 6, -9, 17, -1, -6, 6, -7, 14, 2, -6, 12, 0, 15]);
ECSearch("10.4-b",(-9*w - 71)*OK,[1, 0, 4, 2, 2, 6, 0, -2, 2, 2, 0, 4, 8, -2, 6, 8, -6, -10, 0, 10, 4, -2, -4, 10, 12, 10, -18, 10]);
ECSearch("10.4-c",(-9*w - 71)*OK,[1, -2, 0, -4, 6, -6, 6, -2, -2, 4, -8, -4, 12, 2, 2, 4, 0, -4, -8, -18, -6, 14, 2, -18, -10, -6, 6, 6]);
ECSearch("14.1-a",(-135*w - 1064)*OK,[-1, 0, 2, 4, 4, -6, 8, -6, 8, 0, -4, 2, -8, 14, 0, 6, 12, -14, 6, -6, 6, 10, -14, 14, -6, 6, -18, -14]);
ECSearch("14.2-a",(-w + 8)*OK,[0, 0, -2, 1, 3, -5, -6, 8, -6, 5, 10, 6, -4, -4, 1, -1, 7, 0, 16, -3, 7, -8, -14, -10, -6, 20, -7, 6]);
ECSearch("14.4-a",(-135*w + 1199)*OK,[-1, 2, 0, 4, 4, 8, -6, 8, -6, -4, 0, -8, 2, 0, 14, 12, 6, 6, -14, 6, -6, -14, 10, 14, 6, -6, -14, -18]);
ECSearch("14.3-a",(-w - 7)*OK,[0, -2, 0, 1, 3, -6, -5, -6, 8, 10, 5, -4, 6, 1, -4, 7, -1, 16, 0, 7, -3, -14, -8, -10, 20, -6, 6, -7]);
ECSearch("16.2-a",(-34*w + 302)*OK,[1, 4, 2, 3, 1, -2, 0, 2, 8, -5, 2, 0, -6, -2, -6, -12, 10, 7, -6, -10, -3, 10, -13, -13, 0, 0, -3, 10]);
ECSearch("16.2-b",(-34*w + 302)*OK,[1, 0, -2, -1, 1, 2, 0, 2, 8, 7, -10, 8, -10, -14, 10, 0, -14, -5, 6, 6, -11, -10, -5, -5, 4, -8, 21, 6]);
ECSearch("16.4-a",(25*w - 222)*OK,[0, 0, -3, -4, -2, 2, 0, -6, 3, -6, 10, -10, 4, -4, 9, -6, -9, 12, 5, -11, 12, -18, 2, 11, 10, -6, 0, 3, 6]);
ECSearch("16.3-a",(34*w + 268)*OK,[4, 1, 3, 2, 1, 0, -2, 8, 2, 2, -5, -6, 0, -6, -2, 10, -12, -6, 7, -3, -10, -13, 10, -13, 0, 0, 10, -3]);
ECSearch("16.3-b",(34*w + 268)*OK,[0, 1, -1, -2, 1, 0, 2, 8, 2, -10, 7, -10, 8, 10, -14, -14, 0, 6, -5, -11, 6, -5, -10, -5, -8, 4, 6, 21]);
ECSearch("16.5-a",(25*w + 197)*OK,[0, -3, 0, -2, -4, 2, -6, 0, -6, 3, -10, 10, -4, 4, -6, 9, 12, -9, -11, 5, -18, 12, 11, 2, 10, 0, -6, 6, 3]);
