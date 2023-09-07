-module(lesson3_task02).
-export([reverse/1, reverse/2, first_word/1, first_word/2, last_words/1, last_words/2, words/1, words/2]).

reverse(L)->reverse(L,[]).
reverse([],S)-> S;
reverse([H|T], S)->reverse(T,[H|S]).

first_word(L) -> first_word(L, []).
first_word([], S) -> S;
first_word([32|_], S) -> S;
first_word([H|T], S) -> first_word(T, [H|S]).

last_words(L) -> last_words(L, []).
last_words([],[]) -> [];
last_words([32|T],S) -> T;
last_words([H|T], S) -> last_words(T,S).

words(L) -> words(L, []).
words([], S) -> reverse(S);
words(L, S) -> words(last_words(L), [first_word(L)|S]).