-module(listener).
-behaviour(gen_listener).
-export([init/0, parse_message/1]).

init() ->
  gen_listener:init(?MODULE).

parse_message(Message) ->
  i:format("Received message ~s ~n", [Message]).

