%TODO: Génération de grille
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

%TODO: sousGrilles pour les 9
sousGrille([
		[E00, E01, E02, E03, E04, E05, E06, E07, E08],
		[E10, E11, E12, E13, E14, E15, E16, E17, E18],
		[E20, E21, E22, E23, E24, E25, E26, E27, E28],
		[E30, E31, E32, E33, E34, E35, E36, E37, E38],
		[E40, E41, E42, E43, E44, E45, E46, E47, E48],
		[E50, E51, E52, E53, E54, E55, E56, E57, E58],
		[E60, E61, E62, E63, E64, E65, E66, E67, E68],
		[E70, E71, E72, E73, E74, E75, E76, E77, E78],
		[E80, E81, E82, E83, E84, E85, E86, E87, E88]
	]
	, [A, B, C, D, E, F, G, H, I]).

%Nième ligne de la grille [L|Q]
ligne([L|_], 0, L).
ligne([_|Q], N, L) :- N2 is N-1, ligne(Q, N2, L).

%Nième élément de la ligne [T|Q] dans R
elementLigne([T|_], 0, T).
elementLigne([_|Q], N, R) :- N2 is N-1, elementLigne(Q, N2, R).

%élément de coordonnées (X, Y) dans G
element(G, X, Y, R) :- ligne(G, Y, L), elementLigne(L, X, R).


