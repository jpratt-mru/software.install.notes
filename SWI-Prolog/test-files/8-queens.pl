% One solution to the eight queens problem.  See Bratko, Chapter 4
% for a detailed explanation of the problem, the solution, and a
% comparison to alternative solutions.


solution(P) :-            % a solution is an 8-element "placement"
  eightUniqueCols(P),     % ..coordinate list of form [X/Y, ...]
  safeRows(P).


eightUniqueCols([1/_,2/_,3/_,4/_,5/_,6/_,7/_,8/_]).


safeRows([]).

safeRows([X/Y | Others]) :-
  safeRows(Others),
  member(Y,[1,2,3,4,5,6,7,8]),
  noattack(X/Y,Others).


noattack(_,[]).

noattack(X/Y,[X2/Y2 | Others]) :-
  Y =\= Y2,                           % not in same row
  abs(Y-Y2) =\= abs(X-X2),            % not in same diagonals
  noattack(X/Y,Others).
