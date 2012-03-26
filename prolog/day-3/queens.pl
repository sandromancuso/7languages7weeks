:- use_module(library(clpfd)).

valid_queen((Row, Col)) :- 
		Range = [1, 2, 3, 4, 5, 6, 7, 8],
		member(Row, Range), member(Col, Range).

valid_board([]).
valid_board([Head|Tail]) :- valid_queen(Head), valid_board(Tail).

rows([], []).
rows([(Row, _)|QueensTail], [Row, RowsTail]) :-
	rows(QueensTail, RowsTail).
	
cols([], []).
cols([(_, Col)|QueensTail], [Col|ColsTail]) :- 
	cols(QueensTail, ColsTail).
	
diags1([], []).
diags1([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :-
	Diagonal is Col - Row,
	diags1(QueensTail, DiagonalsTail).
	
diags2([], []).
diags2([(Row, Col)|QueensTail], [Diagonal|DiagonalsTail]) :- 
	Diagonal is Col + Row,
	diags2(QueensTail, DiagonalsTail).

allDifferent([_]).
allDifferent(Head, Tail) :- not (member(Head,Tail)), allDifferent(Head).

eight_queens(Board) :- 
	length(Board, 8),
	valid_board(Board),
	
	rows(Board, Rows),
	cols(Board, Cols),
	diags1(Board, Diags1),
	diags2(Board, Diags2),
	
	allDifferent(Rows),
	allDifferent(Cols),
	allDifferent(Diags1),
	allDifferent(Diags2).
	
