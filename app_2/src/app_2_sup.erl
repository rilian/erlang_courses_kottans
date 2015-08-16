-module(app_2_sup).
-export([start_link/0, init/1]).

-behaviour(supervisor).

start_link() ->
  supervisor:start_link(?MODULE, []).
  % supervisor:start_link(app_2_sup, []).

init(_Args) ->
  {ok,
    {
      {one_for_one, 10, 60},
      [
        {fw1, {app_2_child, start_link, []},
          permanent, brutal_kill, worker, dynamic
        }
      ]
    }
  }.
  