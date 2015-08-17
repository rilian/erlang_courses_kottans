-module(app_2_child).

-export([start_link/0, loop/0]).

start_link() ->
  Pid = spawn_link(?MODULE, loop, []),
  register(receiver, Pid),
  {ok, Pid}.

loop() ->
  io:format("Child ~p~n", [self()]),
  
  receive
    terminate ->
      ok;
    Message ->
      io:format("Message: ~p~n", [Message]),
      loop()
  end.

% spawn(fun() -> loop() end).