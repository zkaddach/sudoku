grille(L) :- append(
			[
				[1, 2, 3, 4, 5, 6, 7, 8, 9],
				[2, 2, 3, 4, 5, 6, 7, 8, 9],
				[3, 2, 3, 4, 5, 6, 7, 8, 9],
				[4, 2, 3, 4, 5, 6, 7, 8, 9],
				[5, 2, 3, 4, 5, 6, 7, 8, 9],
				[6, 2, 3, 4, 5, 6, 7, 8, 9],
				[7, 2, 3, 4, 5, 6, 7, 8, 9],
				[8, 2, 3, 4, 5, 6, 7, 8, 9],
				[9, 2, 3, 4, 5, 6, 7, 8, 9]
			]
			, [], L).

sousGrille(S, L) :- S is [
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, _, _, _],
				[_, _, _, _, _, _, A, B, C],
				[_, _, _, _, _, _, D, E, F],
				[_, _, _, _, _, _, G, H, I]
			]
			, L is [[A, B, C], [D, E, F], [G, H, I]].

ligne(S, 0, L)   :- [L|_] is S.
ligne(S, Num, L) :- [_|Q] is S, NUM2 is Num-1, ligne(Q, NUM2, L).