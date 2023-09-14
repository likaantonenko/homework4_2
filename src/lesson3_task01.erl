-module(lesson3_task01).

-export([first_word/1]).

-include_lib("eunit/include/eunit.hrl").


first_word(BinText) -> 
    first_word(BinText, <<>>).

first_word(<<>>, Acc) -> 
    Acc;
first_word(<<32, _/binary>>, Acc) ->
    Acc;
first_word(<<Sym/utf8, Rest/binary>>, Acc) ->
    ?debugMsg(Acc),
    first_word(Rest, <<Acc/binary, Sym>>).



