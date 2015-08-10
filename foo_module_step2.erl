-module(foo_module_step2).
-behaviour(gen_foo).
-export([foo/0, bar/1, baz/2]).

foo() ->
  ok.
bar(_) ->
  ok.
baz(_, _) ->
  ok.
