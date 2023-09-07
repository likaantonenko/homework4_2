-module(lesson3_task02).
-export([reverse/1, reverse/2, first_word/1, first_word/2]).

reverse(L)->reverse(L,[]).
reverse([],S)-> S;
reverse([H|T], S)->reverse(T,[H|S]).

first_word(L) -> first_word(L, []).
first_word([], S) -> reverse(S);
first_word([32|_], S) -> reverse(S);
first_word([H|T], S) -> first_word(T, [H|S]).
