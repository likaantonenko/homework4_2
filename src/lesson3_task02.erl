-module(lesson3_task02).
-export([words/1, first_word/1, rest_words/1]).

first_word(BinText) -> 
    first_word(BinText, <<>>).

first_word(<<>>, Acc) -> 
    Acc;
first_word(<<32, _/binary>>, Acc) ->
    Acc;
first_word(<<Sym/utf8, Rest/binary>>, Acc) ->
    first_word(Rest, <<Acc/binary, Sym>>).

rest_words(BinText) -> 
    rest_words(BinText, <<>>).

rest_words(<<>>) -> 
    <<>>;
rest_words(<<32/utf8, Rest/binary>>) ->  
    Rest;
rest_words(<<_/utf8, Rest/binary>>)->
    rest_words(Rest).   

words(BinText) ->
    words(BinText, <<>>).

words(<<>>, Acc) ->
    Acc;
words(BinText, Acc) ->
    Slovo = first_word(BinText),
    Rest = rest_words(BinText),
    words(Rest, [Slovo | Acc]).    

