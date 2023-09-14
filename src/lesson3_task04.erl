-module(lesson3_task04).
-export([json_fun/1]).

%json_fun([91, $]]) -> % "[]"
    %[];
%json_fun(Json) ->
    %xz.

json_fun(<<$", Rest/binary>>) ->
    {String, Rest1} = json_string(Rest),
    String.

json_string(Json) ->
    json_string(Json, <<>>).

json_string(<<$", Rest/binary>>, Acc) ->
    {Acc, Rest};
json_string(<<S/utf8, Rest/binary>>, Acc) ->
    json_string(Rest, <<Acc/binary, S>>).
