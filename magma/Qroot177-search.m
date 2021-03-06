print "Field 2.2.177.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - x - 44);
OK := Integers(K);
Plist := [];
Append(~Plist,(w + 6)*OK);
Append(~Plist,(w - 7)*OK);
Append(~Plist,(-46*w - 283)*OK);
Append(~Plist,(6*w - 43)*OK);
Append(~Plist,(6*w + 37)*OK);
Append(~Plist,(20*w - 143)*OK);
Append(~Plist,(20*w + 123)*OK);
Append(~Plist,(-2*w + 15)*OK);
Append(~Plist,(2*w + 13)*OK);
Append(~Plist,(8*w + 49)*OK);
Append(~Plist,(-8*w + 57)*OK);
Append(~Plist,(5)*OK);
Append(~Plist,(112*w + 689)*OK);
Append(~Plist,(-112*w + 801)*OK);
Append(~Plist,(204*w - 1459)*OK);
Append(~Plist,(-2*w + 17)*OK);
Append(~Plist,(2*w + 15)*OK);
Append(~Plist,(4*w - 27)*OK);
Append(~Plist,(-4*w - 23)*OK);
Append(~Plist,(-86*w + 615)*OK);
Append(~Plist,(86*w + 529)*OK);
Append(~Plist,(-22*w + 157)*OK);
Append(~Plist,(-22*w - 135)*OK);
Append(~Plist,(-2*w + 9)*OK);
Append(~Plist,(2*w + 7)*OK);
Append(~Plist,(98*w + 603)*OK);
Append(~Plist,(98*w - 701)*OK);
Append(~Plist,(12*w + 73)*OK);
Append(~Plist,(-12*w + 85)*OK);
Append(~Plist,(-58*w + 415)*OK);
Append(~Plist,(-58*w - 357)*OK);
Append(~Plist,(6*w - 41)*OK);
Append(~Plist,(-6*w - 35)*OK);
Append(~Plist,(14*w - 101)*OK);
Append(~Plist,(14*w + 87)*OK);
Append(~Plist,(13)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 1)*OK);
Append(~Plist,(4*w + 21)*OK);
Append(~Plist,(4*w - 25)*OK);
Append(~Plist,(-44*w + 315)*OK);
Append(~Plist,(44*w + 271)*OK);
Append(~Plist,(-48*w - 295)*OK);
Append(~Plist,(48*w - 343)*OK);
Append(~Plist,(8*w - 59)*OK);
Append(~Plist,(8*w + 51)*OK);
Append(~Plist,(-10*w - 63)*OK);
Append(~Plist,(-10*w + 73)*OK);
Append(~Plist,(-2*w + 21)*OK);
Append(~Plist,(2*w + 19)*OK);
Append(~Plist,(-36*w + 257)*OK);
Append(~Plist,(36*w + 221)*OK);
Append(~Plist,(454*w - 3247)*OK);
Append(~Plist,(-362*w + 2589)*OK);
Append(~Plist,(-256*w - 1575)*OK);
Append(~Plist,(256*w - 1831)*OK);
Append(~Plist,(-126*w + 901)*OK);
Append(~Plist,(-126*w - 775)*OK);
Append(~Plist,(-190*w + 1359)*OK);
Append(~Plist,(190*w + 1169)*OK);
Append(~Plist,(28*w + 173)*OK);
Append(~Plist,(-28*w + 201)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-2*w + 23)*OK);
Append(~Plist,(2*w + 21)*OK);
Append(~Plist,(70*w + 431)*OK);
Append(~Plist,(-70*w + 501)*OK);
Append(~Plist,(-4*w - 17)*OK);
Append(~Plist,(4*w - 21)*OK);
Append(~Plist,(-62*w - 381)*OK);
Append(~Plist,(62*w - 443)*OK);
Append(~Plist,(-348*w - 2141)*OK);
Append(~Plist,(348*w - 2489)*OK);
Append(~Plist,(150*w + 923)*OK);
Append(~Plist,(150*w - 1073)*OK);
Append(~Plist,(-50*w + 357)*OK);
Append(~Plist,(50*w + 307)*OK);
Append(~Plist,(-4*w + 19)*OK);
Append(~Plist,(4*w + 15)*OK);
Append(~Plist,(-8*w + 53)*OK);
Append(~Plist,(-8*w - 45)*OK);
Append(~Plist,(24*w - 173)*OK);
Append(~Plist,(24*w + 149)*OK);
Append(~Plist,(-282*w - 1735)*OK);
Append(~Plist,(282*w - 2017)*OK);
Append(~Plist,(12*w - 83)*OK);
Append(~Plist,(-12*w - 71)*OK);
Append(~Plist,(28*w - 199)*OK);
Append(~Plist,(28*w + 171)*OK);
Append(~Plist,(22*w - 159)*OK);
Append(~Plist,(-22*w - 137)*OK);
Append(~Plist,(-2*w + 27)*OK);
Append(~Plist,(2*w + 25)*OK);
Append(~Plist,(192*w + 1181)*OK);
Append(~Plist,(192*w - 1373)*OK);
Append(~Plist,(114*w + 701)*OK);
Append(~Plist,(114*w - 815)*OK);
Append(~Plist,(6*w - 49)*OK);
Append(~Plist,(6*w + 43)*OK);
Append(~Plist,(18*w + 113)*OK);
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

ECSearch("2.1-a",(w + 6)*OK,[1, 1, -5, 3, 2, 2, 1, 1, 6, 6, -1, 2, 10, 8, 11, 3, 6, -2, -10, 14, -16, 0, -12, -20, 7, -1, 14, 6, -20]);
ECSearch("2.1-b",(w + 6)*OK,[-1, 1, -5, 3, -2, -2, 1, 1, -6, -6, -1, -2, -10, -8, 11, 3, -6, 2, 10, -14, 16, 0, 12, 20, 7, -1, -14, -6, -20]);
ECSearch("2.2-a",(w - 7)*OK,[1, 1, 3, -5, 2, 2, 1, 1, 6, 6, -1, 10, 2, 8, 3, 11, -2, 6, 14, -10, 0, -16, -20, -12, -1, 7, 6, 14, -4]);
ECSearch("2.2-b",(w - 7)*OK,[-1, 1, 3, -5, -2, -2, 1, 1, -6, -6, -1, -10, -2, -8, 3, 11, 2, -6, -14, 10, 0, 16, 20, 12, -1, 7, -6, -14, -4]);
ECSearch("4.1-a",(2)*OK,[1, -1, -1, 6, -6, -7, -7, 6, -6, -1, 6, -6, 0, -1, -1, -6, 6, -6, 6, -12, 12, 12, -12, 11, 11, 18, -18, -4]);
ECSearch("4.1-b",(2)*OK,[-2, -1, -1, 3, -3, 2, 2, -6, 6, -10, 12, -12, 0, -1, -1, 15, -15, -12, 12, 3, -3, 6, -6, -16, -16, 0, 0, -4]);
ECSearch("4.1-c",(2)*OK,[-2, -1, -1, -3, 3, 2, 2, 6, -6, -10, -12, 12, 0, -1, -1, -15, 15, 12, -12, -3, 3, -6, 6, -16, -16, 0, 0, -4]);
ECSearch("4.1-d",(2)*OK,[1, -1, -1, -6, 6, -7, -7, -6, 6, -1, -6, 6, 0, -1, -1, 6, -6, 6, -6, 12, -12, -12, 12, 11, 11, -18, 18, -4]);
ECSearch("6.1-a",(-7*w - 43)*OK,[1, -2, 0, 2, 2, -4, 6, -4, 6, 4, 0, -8, 8, -12, 16, -12, -4, -6, 0, 10, 14, 10, 18, -6, -8, 16, -16, 16]);
ECSearch("6.1-b",(-7*w - 43)*OK,[-1, -2, 0, -2, -2, -4, 6, 4, -6, 4, 0, 8, -8, -12, 16, 12, 4, 6, 0, -10, -14, -10, -18, -6, -8, -16, 16, 16]);
ECSearch("6.1-c",(-7*w - 43)*OK,[2, 3, -2, 4, 1, -8, 7, 3, -3, -4, 2, -2, -5, 6, 11, -16, -9, 13, -8, 6, 19, 14, -9, -4, -14, 0, 10, -10]);
ECSearch("6.1-d",(-7*w - 43)*OK,[-2, 3, -2, -4, -1, -8, 7, -3, 3, -4, -2, 2, 5, 6, 11, 16, 9, -13, 8, -6, -19, -14, 9, -4, -14, 0, -10, -10]);
ECSearch("6.1-e",(-7*w - 43)*OK,[1, 4, 0, -4, -4, -4, 0, -4, 0, -2, 0, -8, 8, 0, -8, 0, -16, -6, -6, -14, -10, -2, -6, 12, 16, 4, -4, -20]);
ECSearch("6.1-f",(-7*w - 43)*OK,[-1, 4, 0, 4, 4, -4, 0, 4, 0, -2, 0, 8, -8, 0, -8, 0, 16, 6, 6, 14, 10, 2, 6, 12, 16, -4, 4, -20]);
ECSearch("6.2-a",(-7*w + 50)*OK,[1, 0, -2, 2, 2, 6, -4, 6, -4, 4, -8, 0, 8, 16, -12, -4, -12, 0, -6, 14, 10, 18, 10, -8, -6, -16, 16, 10]);
ECSearch("6.2-b",(-7*w + 50)*OK,[-1, 0, -2, -2, -2, 6, -4, -6, 4, 4, 8, 0, -8, 16, -12, 4, 12, 0, 6, -14, -10, -18, -10, -8, -6, 16, -16, 10]);
ECSearch("6.2-c",(-7*w + 50)*OK,[2, -2, 3, 1, 4, 7, -8, -3, 3, -4, -2, 2, -5, 11, 6, -9, -16, -8, 13, 19, 6, -9, 14, -14, -4, 10, 0, -5]);
ECSearch("6.2-d",(-7*w + 50)*OK,[-2, -2, 3, -1, -4, 7, -8, 3, -3, -4, 2, -2, 5, 11, 6, 9, 16, 8, -13, -19, -6, 9, -14, -14, -4, -10, 0, -5]);
ECSearch("6.2-e",(-7*w + 50)*OK,[1, 0, 4, -4, -4, 0, -4, 0, -4, -2, -8, 0, 8, -8, 0, -16, 0, -6, -6, -10, -14, -6, -2, 16, 12, -4, 4, 16]);
ECSearch("6.2-f",(-7*w + 50)*OK,[-1, 0, 4, 4, 4, 0, -4, 0, 4, -2, 8, 0, -8, -8, 0, 16, 0, 6, 6, 10, 14, 6, 2, 16, 12, 4, -4, 16]);
ECSearch("12.2-a",(w - 8)*OK,[1, 4, 0, 2, 2, 4, 4, 6, -6, 2, -4, 4, -10, 8, 0, -6, 10, 2, -4, -4, -18, -12, 10, -8, 8, 8, -12, -20]);
ECSearch("12.2-b",(w - 8)*OK,[-1, 4, 0, -2, -2, 4, 4, -6, 6, 2, 4, -4, 10, 8, 0, 6, -10, -2, 4, 4, 18, 12, -10, -8, 8, -8, 12, -20]);
ECSearch("12.3-a",(-w - 7)*OK,[1, 0, 4, 2, 2, 4, 4, -6, 6, 2, 4, -4, -10, 0, 8, 10, -6, -4, 2, -18, -4, 10, -12, 8, -8, -12, 8, 20]);
ECSearch("12.3-b",(-w - 7)*OK,[-1, 0, 4, -2, -2, 4, 4, 6, -6, 2, -4, 4, 10, 0, 8, -10, 6, 4, -2, 18, 4, -10, 12, 8, -8, 12, -8, 20]);
ECSearch("14.1-a",(-79*w + 565)*OK,[0, -2, -1, 3, 0, 2, 2, 0, 6, 8, 3, 9, 3, -1, 8, 18, -6, -6, -3, -15, 0, 6, -9, -7, 2, 12, -15, -4]);
ECSearch("14.1-b",(-79*w + 565)*OK,[0, -2, -1, -3, 0, 2, 2, 0, -6, 8, -3, -9, -3, -1, 8, -18, 6, 6, 3, 15, 0, -6, 9, -7, 2, -12, 15, -4]);
ECSearch("14.2-a",(w + 5)*OK,[1, 0, 4, 4, 2, -6, 6, 0, -2, 4, 8, -6, 4, 2, -16, 4, 12, -16, 18, -18, -8, -6, 18, -6, -8, 6, -2, -4]);
ECSearch("14.2-b",(w + 5)*OK,[0, 1, -1, 6, 0, 2, 2, -9, 3, -1, 6, -9, -12, -10, -10, -9, -12, -12, -6, 6, 0, -15, 9, 2, 20, -12, 15, -13]);
ECSearch("14.2-c",(w + 5)*OK,[-1, 0, 4, -4, -2, -6, 6, 0, 2, 4, -8, 6, -4, 2, -16, -4, -12, 16, -18, 18, 8, 6, -18, -6, -8, -6, 2, -4]);
ECSearch("14.2-d",(w + 5)*OK,[-2, 1, -3, 2, -4, -2, 4, 3, 9, -7, -2, 5, 8, 0, -4, -17, 0, -4, -10, 0, -10, 13, 9, 20, 4, 0, -7, -19]);
ECSearch("14.2-e",(w + 5)*OK,[2, 1, -3, -2, 4, -2, 4, -3, -9, -7, 2, -5, -8, 0, -4, 17, 0, 4, 10, 0, 10, -13, -9, 20, 4, 0, 7, -19]);
ECSearch("14.2-f",(w + 5)*OK,[0, 1, -1, -6, 0, 2, 2, 9, -3, -1, -6, 9, 12, -10, -10, 9, 12, 12, 6, -6, 0, 15, -9, 2, 20, 12, -15, -13]);
ECSearch("14.4-a",(79*w + 486)*OK,[0, -2, -1, 0, 3, 2, 2, 6, 0, 8, 9, 3, 3, 8, -1, -6, 18, -3, -6, 0, -15, -9, 6, 2, -7, -15, 12, -4]);
ECSearch("14.4-b",(79*w + 486)*OK,[0, -2, -1, 0, -3, 2, 2, -6, 0, 8, -9, -3, -3, 8, -1, 6, -18, 3, 6, 0, 15, 9, -6, 2, -7, 15, -12, -4]);
ECSearch("14.3-a",(-w + 6)*OK,[1, 0, 4, 2, 4, 6, -6, -2, 0, 4, -6, 8, 4, -16, 2, 12, 4, 18, -16, -8, -18, 18, -6, -8, -6, -2, 6, 0]);
ECSearch("14.3-b",(-w + 6)*OK,[0, 1, -1, 0, 6, 2, 2, 3, -9, -1, -9, 6, -12, -10, -10, -12, -9, -6, -12, 0, 6, 9, -15, 20, 2, 15, -12, 5]);
ECSearch("14.3-c",(-w + 6)*OK,[-1, 0, 4, -2, -4, 6, -6, 2, 0, 4, 6, -8, -4, -16, 2, -12, -4, -18, 16, 8, 18, -18, 6, -8, -6, 2, -6, 0]);
ECSearch("14.3-d",(-w + 6)*OK,[-2, 1, -3, -4, 2, 4, -2, 9, 3, -7, 5, -2, 8, -4, 0, 0, -17, -10, -4, -10, 0, 9, 13, 4, 20, -7, 0, 7]);
ECSearch("14.3-e",(-w + 6)*OK,[2, 1, -3, 4, -2, 4, -2, -9, -3, -7, -5, 2, -8, -4, 0, 0, 17, 10, 4, 10, 0, -9, -13, 4, 20, 7, 0, 7]);
ECSearch("14.3-f",(-w + 6)*OK,[0, 1, -1, 0, -6, 2, 2, -3, 9, -1, 9, -6, 12, -10, -10, 12, 9, 6, 12, 0, -6, -9, 15, 20, 2, -15, 12, 5]);
ECSearch("16.2-a",(26*w + 160)*OK,[-1, -1, -3, 2, 0, -3, 1, 6, -4, 5, -4, -12, 6, 11, 9, 0, 4, -4, 0, 4, -4, -14, 16, -13, 5, -2, -14, 8]);
ECSearch("16.2-b",(26*w + 160)*OK,[-1, -1, -3, -2, 0, -3, 1, -6, 4, 5, 4, 12, -6, 11, 9, 0, -4, 4, 0, -4, 4, 14, -16, -13, 5, 2, 14, 8]);
ECSearch("16.4-a",(5*w + 31)*OK,[1, 1, -1, 3, -6, -6, 5, -3, 6, -2, 3, 10, -6, 8, 7, 3, -18, 6, -10, -2, 0, 0, 12, 4, 11, 7, -18, 6, 20]);
ECSearch("16.4-b",(5*w + 31)*OK,[-1, 1, -1, 3, 6, 6, 5, -3, -6, 2, 3, -10, 6, -8, 7, 3, 18, -6, 10, 2, 0, 0, -12, -4, 11, 7, 18, -6, 20]);
ECSearch("16.3-a",(-26*w + 186)*OK,[-1, -3, -1, 0, 2, 1, -3, -4, 6, 5, -12, -4, 6, 9, 11, 4, 0, 0, -4, -4, 4, 16, -14, 5, -13, -14, -2, 4]);
ECSearch("16.3-b",(-26*w + 186)*OK,[-1, -3, -1, 0, -2, 1, -3, 4, -6, 5, 12, 4, -6, 9, 11, -4, 0, 0, 4, 4, -4, -16, 14, 5, -13, 14, 2, 4]);
ECSearch("16.5-a",(-5*w + 36)*OK,[1, 1, 3, -1, -6, -6, -3, 5, -2, 6, 3, -6, 10, 8, 3, 7, 6, -18, -2, -10, 0, 0, 4, 12, 7, 11, 6, -18, 4]);
ECSearch("16.5-b",(-5*w + 36)*OK,[-1, 1, 3, -1, 6, 6, -3, 5, 2, -6, 3, 6, -10, -8, 3, 7, -6, 18, 2, 10, 0, 0, -4, -12, 7, 11, -6, 18, 4]);
ECSearch("18.1-a",(3*w + 18)*OK,[1, 4, 0, 2, 2, -8, 4, -6, 6, -4, 8, -8, 14, -4, -12, -6, 10, 14, 2, -10, 6, -6, 10, 16, 20, 20, 12, 16]);
ECSearch("18.1-b",(3*w + 18)*OK,[0, -4, -1, 3, 0, -1, -4, 3, -3, -4, 12, 12, 9, -13, 8, 9, 0, 0, -9, -3, -12, 9, 12, -4, -4, -12, 12, -13]);
ECSearch("18.1-c",(3*w + 18)*OK,[-1, 4, 0, -2, -2, -8, 4, 6, -6, -4, -8, 8, -14, -4, -12, 6, -10, -14, -2, 10, -6, 6, -10, 16, 20, -20, -12, 16]);
ECSearch("18.1-d",(3*w + 18)*OK,[0, -4, -1, -3, 0, -1, -4, -3, 3, -4, -12, -12, -9, -13, 8, -9, 0, 0, 9, 3, 12, -9, -12, -4, -4, 12, -12, -13]);
ECSearch("18.2-a",(3*w - 21)*OK,[1, 0, 4, 2, 2, 4, -8, 6, -6, -4, -8, 8, 14, -12, -4, 10, -6, 2, 14, 6, -10, 10, -6, 20, 16, 12, 20, 20]);
ECSearch("18.2-b",(3*w - 21)*OK,[0, -1, -4, 0, 3, -4, -1, -3, 3, -4, 12, 12, 9, 8, -13, 0, 9, -9, 0, -12, -3, 12, 9, -4, -4, 12, -12, -4]);
ECSearch("18.2-c",(3*w - 21)*OK,[-1, 0, 4, -2, -2, 4, -8, -6, 6, -4, 8, -8, -14, -12, -4, -10, 6, -2, -14, -6, 10, -10, 6, 20, 16, -12, -20, 20]);
ECSearch("18.2-d",(3*w - 21)*OK,[0, -1, -4, 0, -3, -4, -1, 3, -3, -4, -12, -12, -9, 8, -13, 0, -9, 9, 0, 12, 3, -12, -9, -4, -4, -12, 12, -4]);
ECSearch("21.1-a",(4*w + 25)*OK,[1, 1, -4, 4, 0, 4, -4, 0, 4, -2, 8, 0, -12, 12, 0, 0, -8, -18, 6, -6, 18, -2, -6, 0, 16, -20, -12, -16]);
ECSearch("21.1-b",(4*w + 25)*OK,[1, 0, 3, -1, -4, 5, 0, -1, 9, 4, 12, -2, -1, 9, -14, -3, -4, -6, -15, 7, 2, 13, 6, 18, -8, -14, -4, -17]);
ECSearch("21.1-c",(4*w + 25)*OK,[-1, 0, 3, 1, 4, 5, 0, 1, -9, 4, -12, 2, 1, 9, -14, 3, 4, 6, 15, -7, -2, -13, -6, 18, -8, 14, 4, -17]);
ECSearch("21.1-d",(4*w + 25)*OK,[-1, -1, -4, -4, 0, 4, -4, 0, -4, -2, -8, 0, 12, 12, 0, 0, 8, 18, -6, 6, -18, 2, 6, 0, 16, 20, 12, -16]);
ECSearch("21.2-a",(4*w - 29)*OK,[1, 1, -4, 0, 4, -4, 4, 4, 0, -2, 0, 8, -12, 0, 12, -8, 0, 6, -18, 18, -6, -6, -2, 16, 0, -12, -20, -12]);
ECSearch("21.2-b",(4*w - 29)*OK,[0, 1, 3, -4, -1, 0, 5, 9, -1, 4, -2, 12, -1, -14, 9, -4, -3, -15, -6, 2, 7, 6, 13, -8, 18, -4, -14, 16]);
ECSearch("21.2-c",(4*w - 29)*OK,[0, -1, 3, 4, 1, 0, 5, -9, 1, 4, 2, -12, 1, -14, 9, 4, 3, 15, 6, -2, -7, -6, -13, -8, 18, 4, 14, 16]);
ECSearch("21.2-d",(4*w - 29)*OK,[-1, -1, -4, 0, -4, -4, 4, -4, 0, -2, 0, -8, 12, 0, 12, 8, 0, -6, 18, -18, 6, 6, 2, 16, 0, 12, 20, -12]);
ECSearch("22.2-a",(59*w - 422)*OK,[1, 1, 2, -4, 2, -6, 1, -1, -8, 6, -12, 3, -6, 4, -4, 6, 12, 4, -14, 12, 14, -12, -6, 21, -8, -7, 20, 1]);
ECSearch("22.2-b",(59*w - 422)*OK,[-1, 1, 2, -4, -2, -6, 1, 1, 8, 6, 12, -3, 6, 4, -4, -6, -12, -4, 14, -12, -14, 12, 6, 21, -8, 7, -20, 1]);
ECSearch("22.3-a",(59*w + 363)*OK,[1, 1, -4, 2, 2, 1, -6, -8, -1, 6, 3, -12, -6, -4, 4, 12, 6, -14, 4, 14, 12, -6, -12, -8, 21, 20, -7, -18]);
ECSearch("22.3-b",(59*w + 363)*OK,[-1, 1, -4, 2, -2, 1, -6, 8, 1, 6, -3, 12, 6, -4, 4, -12, -6, 14, -4, -14, -12, 6, 12, -8, 21, -20, 7, -18]);
ECSearch("25.1-a",(5)*OK,[1, -1, 2, 2, 2, 0, 0, -4, -4, 0, 0, 0, 0, 0, 4, 4, -4, 4, 4, -4, 0, 0, 14, -14, -18, -18, 12, -12, -16]);
ECSearch("25.1-b",(5)*OK,[-1, 1, 2, 2, 2, 0, 0, -4, -4, 0, 0, 0, 0, 0, 4, 4, 4, -4, -4, 4, 0, 0, -14, 14, -18, -18, -12, 12, -16]);
ECSearch("27.1-a",(-138*w - 849)*OK,[1, 0, -2, 3, -1, -1, -7, 0, 8, -3, -2, -12, 10, -4, 9, -14, 12, -1, -6, -6, -5, 8, 1, 18, -6, 13, -2, 2, 4]);
ECSearch("27.1-b",(-138*w - 849)*OK,[-1, 0, -2, 3, 1, 1, -7, 0, -8, 3, -2, 12, -10, 4, 9, -14, -12, 1, 6, 6, 5, -8, -1, -18, -6, 13, 2, -2, 4]);
ECSearch("27.1-c",(-138*w - 849)*OK,[0, -1, 3, -2, 1, 1, 0, -7, 3, -8, -2, -10, 12, 4, -14, 9, 1, -12, 6, 6, -8, 5, -18, -1, 13, -6, -2, 2, -14]);
ECSearch("27.1-d",(-138*w - 849)*OK,[0, 1, 3, -2, -1, -1, 0, -7, -3, 8, -2, 10, -12, -4, -14, 9, -1, 12, -6, -6, 8, -5, 18, 1, 13, -6, 2, -2, -14]);
ECSearch("28.3-a",(-w - 8)*OK,[1, -2, -3, 5, -4, -2, -2, 0, 6, -4, -7, -5, 5, 5, -12, -6, -2, 2, 5, 5, 12, 6, -17, 19, 2, -4, 15, 4]);
ECSearch("28.3-b",(-w - 8)*OK,[-1, -2, -3, -5, 4, -2, -2, 0, -6, -4, 7, 5, -5, 5, -12, 6, 2, -2, -5, -5, -12, -6, 17, 19, 2, 4, -15, 4]);
ECSearch("28.6-a",(-w + 9)*OK,[1, -2, -3, -4, 5, -2, -2, 6, 0, -4, -5, -7, 5, -12, 5, -2, -6, 5, 2, 12, 5, -17, 6, 2, 19, 15, -4, 20]);
ECSearch("28.6-b",(-w + 9)*OK,[-1, -2, -3, 4, -5, -2, -2, -6, 0, -4, 5, 7, -5, -12, 5, 2, 6, -5, -2, -12, -5, 17, -6, 2, 19, -15, 4, 20]);
ECSearch("32.1-a",(4*w + 24)*OK,[1, -1, -5, 4, -2, 1, 5, 6, -8, 3, -2, 8, -12, 11, -13, -18, 4, 6, -12, -2, 10, -18, 10, 19, -1, 14, 12, 4]);
ECSearch("32.1-b",(4*w + 24)*OK,[-1, 5, -3, 4, 6, 3, 7, -6, 4, -1, 10, 0, 0, -7, -3, -6, -4, -2, 12, -10, 10, -10, 14, -7, 17, 14, -16, 20]);
ECSearch("32.1-c",(4*w + 24)*OK,[1, -1, -5, -4, 2, 1, 5, -6, 8, 3, 2, -8, 12, 11, -13, 18, -4, -6, 12, 2, -10, 18, -10, 19, -1, -14, -12, 4]);
ECSearch("32.1-d",(4*w + 24)*OK,[-1, 5, -3, -4, -6, 3, 7, 6, -4, -1, -10, 0, 0, -7, -3, 6, 4, 2, -12, 10, -10, 10, -14, -7, 17, -14, 16, 20]);
ECSearch("32.3-a",(66*w + 406)*OK,[-3, 3, -5, 6, 2, 5, -3, 2, 6, 7, 6, -2, -12, 3, 11, 10, -6, -6, 10, -8, -8, -4, 16, -1, 7, -10, -10, -4]);
ECSearch("32.3-b",(66*w + 406)*OK,[0, 3, 1, -3, -5, 2, 6, -8, 0, -2, 6, 2, 0, -9, 5, 11, -3, -6, 2, -7, -19, 4, -4, -4, -20, 4, -20, 14]);
ECSearch("32.3-c",(66*w + 406)*OK,[-1, -3, 3, 0, -6, 5, 1, 8, 2, -7, 4, 8, -6, -15, -17, 4, 12, 8, 0, 8, 0, 0, 6, -3, 15, 6, -10, -12]);
ECSearch("32.3-d",(66*w + 406)*OK,[-3, 3, -5, -6, -2, 5, -3, -2, -6, 7, -6, 2, 12, 3, 11, -10, 6, 6, -10, 8, 8, 4, -16, -1, 7, 10, 10, -4]);
ECSearch("32.3-e",(66*w + 406)*OK,[0, 3, 1, 3, 5, 2, 6, 8, 0, -2, -6, -2, 0, -9, 5, -11, 3, 6, -2, 7, 19, -4, 4, -4, -20, -4, 20, 14]);
ECSearch("32.3-f",(66*w + 406)*OK,[-1, -3, 3, 0, 6, 5, 1, -8, -2, -7, -4, -8, 6, -15, -17, -4, -12, -8, 0, -8, 0, 0, -6, -3, 15, -6, 10, -12]);
ECSearch("32.5-a",(w + 3)*OK,[1, -1, -5, 1, -4, 0, 1, -7, 6, 2, -7, 12, -2, 6, -5, 5, 12, -14, 0, 14, 10, 10, 16, -2, 11, -7, 6, -8, -12]);
ECSearch("32.5-b",(w + 3)*OK,[-1, -1, -5, 1, 4, 0, 1, -7, -6, -2, -7, -12, 2, -6, -5, 5, -12, 14, 0, -14, -10, -10, -16, 2, 11, -7, -6, 8, -12]);
ECSearch("32.2-a",(4*w - 28)*OK,[1, -5, -1, -2, 4, 5, 1, -8, 6, 3, 8, -2, -12, -13, 11, 4, -18, -12, 6, 10, -2, 10, -18, -1, 19, 12, 14, 12]);
ECSearch("32.2-b",(4*w - 28)*OK,[-1, -3, 5, 6, 4, 7, 3, 4, -6, -1, 0, 10, 0, -3, -7, -4, -6, 12, -2, 10, -10, 14, -10, 17, -7, -16, 14, -20]);
ECSearch("32.2-c",(4*w - 28)*OK,[1, -5, -1, 2, -4, 5, 1, 8, -6, 3, -8, 2, 12, -13, 11, -4, 18, 12, -6, -10, 2, -10, 18, -1, 19, -12, -14, 12]);
ECSearch("32.2-d",(4*w - 28)*OK,[-1, -3, 5, -6, -4, 7, 3, -4, 6, -1, 0, -10, 0, -3, -7, 4, 6, -12, 2, -10, 10, -14, 10, 17, -7, 16, -14, -20]);
ECSearch("32.4-a",(66*w - 472)*OK,[-3, -5, 3, 2, 6, -3, 5, 6, 2, 7, -2, 6, -12, 11, 3, -6, 10, 10, -6, -8, -8, 16, -4, 7, -1, -10, -10, 20]);
ECSearch("32.4-b",(66*w - 472)*OK,[0, 1, 3, -5, -3, 6, 2, 0, -8, -2, 2, 6, 0, 5, -9, -3, 11, 2, -6, -19, -7, -4, 4, -20, -4, -20, 4, 2]);
ECSearch("32.4-c",(66*w - 472)*OK,[-1, 3, -3, -6, 0, 1, 5, 2, 8, -7, 8, 4, -6, -17, -15, 12, 4, 0, 8, 0, 8, 6, 0, 15, -3, -10, 6, 0]);
ECSearch("32.4-d",(66*w - 472)*OK,[-3, -5, 3, -2, -6, -3, 5, -6, -2, 7, 2, -6, 12, 11, 3, 6, -10, -10, 6, 8, 8, -16, 4, 7, -1, 10, 10, 20]);
ECSearch("32.4-e",(66*w - 472)*OK,[0, 1, 3, 5, 3, 6, 2, 0, 8, -2, -2, -6, 0, 5, -9, 3, -11, -2, 6, 19, 7, 4, -4, -20, -4, 20, -4, 2]);
ECSearch("32.4-f",(66*w - 472)*OK,[-1, 3, -3, 6, 0, 1, 5, -2, -8, -7, -8, -4, 6, -17, -15, -12, -4, 0, -8, 0, -8, -6, 0, 15, -3, 10, -6, 0]);
ECSearch("32.6-a",(w - 4)*OK,[1, -1, 1, -5, 0, -4, -7, 1, 2, 6, -7, -2, 12, 6, 5, -5, -14, 12, 14, 0, 10, 10, -2, 16, -7, 11, -8, 6, 0]);
ECSearch("32.6-b",(w - 4)*OK,[-1, -1, 1, -5, 0, 4, -7, 1, -2, -6, -7, 2, -12, -6, 5, -5, 14, -12, -14, 0, -10, -10, 2, -16, -7, 11, 8, -6, 0]);
