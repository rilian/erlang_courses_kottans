-module(gen_foo).
-export([behaviour_info/1]).

behaviour_info(callbacks) ->
  [
    {foo, 0},
    {bar, 1},
    {baz, 2}
  ];
behaviour_info(_Other) ->
  undefined.

