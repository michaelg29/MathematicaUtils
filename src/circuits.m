(* ::Package:: *)

(* ::Input::Initialization:: *)
BeginPackage["circuits`"]
Unprotect@@Names["circuits`*"];
ClearAll@@Names["circuits`*"];

resPar::usage = "Compute parallel equivalent resistance"
resSer::usage = "Compute series equivalent resistance"
capPar::usage = "Compute parallel equivalent capacitance"
capSer::usage = "Compute series equivalent capacitance"
indPar::usage = "Compute parallel equivalent inductance"
indSer::usage = "Compute series equivalent inductance"
Begin["`Private`"]

resPar[r__]:=Module[{},1/Total[1/List[r]]];
resSer[r__]:=Module[{},Total[List[r]]];
capPar[c__]:=Module[{},Total[List[c]]];
capSer[c__]:=Module[{},1/Total[1/List[c]]];
indPar[l__]:=Module[{},1/Total[1/List[l]]];
indSer[l__]:=Module[{},Total[List[l]]];

End[]
Protect@@Names["circuits`*"];
EndPackage[]



