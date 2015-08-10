-module(app_2).
-behaviour(application).

-export([start/2, stop/1]).

start(_Type, _Args) ->
  ok.
stop(_Stop) -> 
  ok.