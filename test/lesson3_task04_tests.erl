-module(lesson3_task04_tests).
-include_lib("eunit/include/eunit.hrl").

-import(lesson3_task04, [json_fun/1]).

json_fun_test() ->
    %?assertEqual(2, json_fun(<<"2">>))!!!,
    %?assertEqual(3.14, json_fun(<<"3.14">>))!!!,
    ?assertEqual(<<"Hello">>, json_fun(<<"\"Hello\"">>)),
    ?assertEqual(<<"Привіт">>, json_fun(<<"\"Привіт\"">>)),
    %?assertEqual([true, false], json_fun(<<"[true, false]">>)),
    %?assertEqual(null, json_fun(<<"null">>)),
    %?assertEqual([], json_fun(<<"[]">>))!!!,
    %?assertEqual([1,2,3], json_fun(<<"[1,2,3]">>)),
    %?assertEqual(#{age => 30}, json_fun(<<"{\"age\": 30}">>)).
 
