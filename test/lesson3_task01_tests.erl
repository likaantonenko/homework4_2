-module(lesson3_task01_tests).
-include_lib("eunit/include/eunit.hrl").

first_word_test() ->
    ?assertEqual(<<>>, lesson3_task01:first_word(<<>>)),
    ?assertEqual(<<"First">>, lesson3_task01:first_word(<<"First">>)),
    ?assertEqual(<<"Перше">>, lesson3_task01:first_word(<<"Перше">>)),
    ?assertEqual(<<"Перше">>, lesson3_task01:first_word(<<"Перше слово">>)).