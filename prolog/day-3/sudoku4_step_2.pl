:- use_module(library(clpfd)).

sudoku(Puzzle, Solution) :- 
		Solution = Puzzle,
		Puzzle = [S11, S12, S13, S14,
		          S21, S22, S23, S24, 
		          S31, S32, S33, S34, 
		          S41, S42, S43, S44],
		Puzzle ins 1..4,
		Row1 = [S11, S12, S13, S14],
		Row2 = [S21, S22, 