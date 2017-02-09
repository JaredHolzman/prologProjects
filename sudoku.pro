:- use_module(library(clpfd)).

sudokuNumber(N) :- between(1,9,N).

sudokuRow(S1,S2,S3,S4,S5,S6,S7,S8,S9) :-
  sudokuNumber(S1),sudokuNumber(S2),sudokuNumber(S3),sudokuNumber(S4),sudokuNumber(S5),sudokuNumber(S6),sudokuNumber(S7),sudokuNumber(S8),sudokuNumber(S9),
  S1 \= S2, S1 \= S3, S1 \= S4, S1 \= S5, S1 \= S6, S1 \= S7, S1 \= S8, S1 \= S9,
  S2 \= S3, S2 \= S4, S2 \= S5, S2 \= S6, S2 \= S7, S2 \= S8, S2 \= S9,
  S3 \= S4, S3 \= S5, S3 \= S6, S3 \= S7, S3 \= S8, S3 \= S9,
  S4 \= S5, S4 \= S6, S4 \= S7, S4 \= S8, S4 \= S9,
  S5 \= S6, S5 \= S7, S5 \= S8, S5 \= S9,
  S6 \= S7, S6 \= S8, S6 \= S9,
  S7 \= S8, S7 \= S9,
  S8 \= S9.

sudoBoard([A1,A2,A3,A4,A5,A6,A7,A8,A9], [B1,B2,B3,B4,B5,B6,B7,B8,B9], [C1,C2,C3,C4,C5,C6,C7,C8,C9],
          [D1,D2,D3,D4,D5,D6,D7,D8,D9], [E1,E2,E3,E4,E5,E6,E7,E8,E9], [F1,F2,F3,F4,F5,F6,F7,F8,F9],
          [G1,G2,G3,G4,G5,G6,G7,G8,G9], [H1,H2,H3,H4,H5,H6,H7,H8,H9], [I1,I2,I3,I4,I5,I6,I7,I8,I9]) :-
            sudokuRow(A1,A2,A3,A4,A5,A6,A7,A8,A9),
            sudokuRow(B1,B2,B3,B4,B5,B6,B7,B8,B9),
            sudokuRow(C1,C2,C3,C4,C5,C6,C7,C8,C9),
            sudokuRow(D1,D2,D3,D4,D5,D6,D7,D8,D9),
            sudokuRow(E1,E2,E3,E4,E5,E6,E7,E8,E9),
            sudokuRow(F1,F2,F3,F4,F5,F6,F7,F8,F9),
            sudokuRow(G1,G2,G3,G4,G5,G6,G7,G8,G9),
            sudokuRow(H1,H2,H3,H4,H5,H6,H7,H8,H9),
            sudokuRow(I1,I2,I3,I4,I5,I6,I7,I8,I9),
            all_distinct([A1,B1,C1,D1,E1,F1,G1,H1,I1]).

%sudoBoard([1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]).
