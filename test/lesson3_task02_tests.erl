-module(lesson3_task02_tests).
-include_lib("eunit/include/eunit.hrl").

first_word_test() ->
    ?assertEqual(<<>>, lesson3_task01:first_word(<<>>)),
    ?assertEqual(<<"First">>, lesson3_task01:first_word(<<"First">>)),
    ?assertEqual(<<"Перше">>, lesson3_task01:first_word(<<"Перше">>)),
    ?assertEqual(<<"Перше">>, lesson3_task01:first_word(<<"Перше слово">>)).

rest_words_tests() ->
    ?assertEqual(<<>>, lesson3_task02:rest_words(<<>>)),
    ?assertEqual(<<"Rest">>, lesson3_task02:rest_words(<<"Rest">>)),
    ?assertEqual(<<"Решта">>, lesson3_task02:rest_words(<<"Решта">>)),
    ?assertEqual(<<"with four words">>, lesson3_task02:rest_words(<<"Text with four words">>)).

words_test() ->
    ?assertEqual(<<>>, lesson3_task02:words(<<>>)),
    ?assertEqual([<<"Text">>, <<"with">>, <<"four">>, <<"words">>], lesson3_task02:words(<<"Text with four words">>)).



