-module(lesson3_task02).
-export([words/1, words/2, first_word/1]).

words(BinText) ->
    words(BinText, <<>>).

words(<<>>, Acc) ->
    Acc;
words(BinText, Acc) ->
    {Slovo, Rest} = first_word(BinText),
words(Rest, <<Acc/binary, Slovo>>).

first_word(BinText) -> 
    first_word(BinText, <<>>).

first_word(<<>>, Acc) -> 
    Acc;
first_word(<<32, _/binary>>, Acc) ->
    Acc;
first_word(<<Sym/utf8, Rest/binary>>, Acc) ->
    first_word(Rest, <<Acc/binary, Sym>>).
