produit([], _, []).
produit([FA|A], B, Result):-
	mul(FA, B, ResFirst),
	produit(A, B, ResRest),
	append(ResFirst, ResRest, Result).
mul(_, [], []).
mul(A, [FB|B], [Append|Res]):-
	append(A, FB, Append),
	mul(A, B, Res).