print "Field 2.2.316.1";
Qx<x> := PolynomialRing(RationalField());
K<w> := NumberField(x^2 - 79);
OK := Integers(K);
Plist := [];
Append(~Plist,(w + 9)*OK);
Append(~Plist,(3)*OK+(w + 1)*OK);
Append(~Plist,(3)*OK+(w + 2)*OK);
Append(~Plist,(5)*OK+(w + 2)*OK);
Append(~Plist,(5)*OK+(w + 3)*OK);
Append(~Plist,(7)*OK+(w + 3)*OK);
Append(~Plist,(7)*OK+(w + 4)*OK);
Append(~Plist,(13)*OK+(w + 1)*OK);
Append(~Plist,(13)*OK+(w + 12)*OK);
Append(~Plist,(w + 6)*OK);
Append(~Plist,(w - 6)*OK);
Append(~Plist,(47)*OK+(w + 19)*OK);
Append(~Plist,(47)*OK+(w + 28)*OK);
Append(~Plist,(59)*OK+(w + 16)*OK);
Append(~Plist,(59)*OK+(w + 43)*OK);
Append(~Plist,(71)*OK+(w + 24)*OK);
Append(~Plist,(71)*OK+(w + 47)*OK);
Append(~Plist,(-3*w + 28)*OK);
Append(~Plist,(-3*w - 28)*OK);
Append(~Plist,(w)*OK);
Append(~Plist,(89)*OK+(w + 41)*OK);
Append(~Plist,(89)*OK+(w + 48)*OK);
Append(~Plist,(97)*OK+(w + 46)*OK);
Append(~Plist,(97)*OK+(w + 51)*OK);
Append(~Plist,(101)*OK+(w + 33)*OK);
Append(~Plist,(101)*OK+(w + 68)*OK);
Append(~Plist,(103)*OK+(w + 39)*OK);
Append(~Plist,(103)*OK+(w + 64)*OK);
Append(~Plist,(107)*OK+(w + 20)*OK);
Append(~Plist,(107)*OK+(w + 87)*OK);
Append(~Plist,(11)*OK);
Append(~Plist,(127)*OK+(w + 29)*OK);
Append(~Plist,(127)*OK+(w + 98)*OK);
Append(~Plist,(139)*OK+(w + 45)*OK);
Append(~Plist,(139)*OK+(w + 94)*OK);
Append(~Plist,(-6*w + 55)*OK);
Append(~Plist,(-6*w - 55)*OK);
Append(~Plist,(191)*OK+(w + 35)*OK);
Append(~Plist,(191)*OK+(w + 156)*OK);
Append(~Plist,(199)*OK+(w + 26)*OK);
Append(~Plist,(199)*OK+(w + 173)*OK);
Append(~Plist,(-5*w + 42)*OK);
Append(~Plist,(5*w + 42)*OK);
Append(~Plist,(-3*w - 22)*OK);
Append(~Plist,(3*w - 22)*OK);
Append(~Plist,(241)*OK+(w + 101)*OK);
Append(~Plist,(241)*OK+(w + 140)*OK);
Append(~Plist,(251)*OK+(w + 62)*OK);
Append(~Plist,(251)*OK+(w + 189)*OK);
Append(~Plist,(4*w + 39)*OK);
Append(~Plist,(-4*w + 39)*OK);
Append(~Plist,(269)*OK+(w + 50)*OK);
Append(~Plist,(269)*OK+(w + 219)*OK);
Append(~Plist,(-7*w - 60)*OK);
Append(~Plist,(7*w - 60)*OK);
Append(~Plist,(277)*OK+(w + 112)*OK);
Append(~Plist,(277)*OK+(w + 165)*OK);
Append(~Plist,(281)*OK+(w + 109)*OK);
Append(~Plist,(281)*OK+(w + 172)*OK);
Append(~Plist,(17)*OK);
Append(~Plist,(-2*w + 3)*OK);
Append(~Plist,(-2*w - 3)*OK);
Append(~Plist,(-3*w + 20)*OK);
Append(~Plist,(3*w + 20)*OK);
Append(~Plist,(-3*w - 32)*OK);
Append(~Plist,(3*w - 32)*OK);
Append(~Plist,(317)*OK+(w + 57)*OK);
Append(~Plist,(317)*OK+(w + 260)*OK);
Append(~Plist,(-10*w - 87)*OK);
Append(~Plist,(10*w - 87)*OK);
Append(~Plist,(337)*OK+(w + 42)*OK);
Append(~Plist,(337)*OK+(w + 295)*OK);
Append(~Plist,(359)*OK+(w + 34)*OK);
Append(~Plist,(359)*OK+(w + 325)*OK);
Append(~Plist,(19)*OK);
Append(~Plist,(379)*OK+(w + 107)*OK);
Append(~Plist,(379)*OK+(w + 272)*OK);
Append(~Plist,(389)*OK+(w + 63)*OK);
Append(~Plist,(389)*OK+(w + 326)*OK);
Append(~Plist,(397)*OK+(w + 85)*OK);
Append(~Plist,(397)*OK+(w + 312)*OK);
Append(~Plist,(419)*OK+(w + 181)*OK);
Append(~Plist,(419)*OK+(w + 238)*OK);
Append(~Plist,(421)*OK+(w + 105)*OK);
Append(~Plist,(421)*OK+(w + 316)*OK);
Append(~Plist,(433)*OK+(w + 168)*OK);
Append(~Plist,(433)*OK+(w + 265)*OK);
Append(~Plist,(-6*w - 49)*OK);
Append(~Plist,(6*w - 49)*OK);
Append(~Plist,(457)*OK+(w + 203)*OK);
Append(~Plist,(457)*OK+(w + 254)*OK);
Append(~Plist,(463)*OK+(w + 81)*OK);
Append(~Plist,(463)*OK+(w + 382)*OK);
Append(~Plist,(491)*OK+(w + 55)*OK);
Append(~Plist,(491)*OK+(w + 436)*OK);
Append(~Plist,(503)*OK+(w + 60)*OK);
Append(~Plist,(503)*OK+(w + 443)*OK);
Append(~Plist,(23)*OK);
Append(~Plist,(541)*OK+(w + 151)*OK);
Append(~Plist,(541)*OK+(w + 390)*OK);
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

ECSearch("1.1-a",(1)*OK,[1, -3, 3, 1, 1, -3, 3, 5, 5, -12, 12, -3, 3, -9, 9, 3, -3, -2, -2, 0, -1, -1, 3, 3, 13, 13, -3, 3, -3, 3]);
ECSearch("1.1-b",(1)*OK,[1, 3, -3, 1, 1, 3, -3, 5, 5, 12, -12, 3, -3, 9, -9, -3, 3, -2, -2, 0, -1, -1, 3, 3, 13, 13, 3, -3, 3, -3]);
