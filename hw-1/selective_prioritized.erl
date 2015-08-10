-module(selective_prioritized).
-export([important/0]).

important() ->
  receive
    {Priority, Message} when Priority == highest ->
      [Message | important()]
    after 0 ->
      high_priority()
  end.

high_priority() ->
  receive
    {Priority, Message} when Priority == high ->
      [Message | important()]
    after 0 ->
      low_priority()
  end.

low_priority() ->
  receive
    {Priority, Message} when Priority == low ->
      [Message | important()]
    after 0 ->
      lowest_priority()
  end.

lowest_priority() ->
  receive
    {_, Message} ->
      [Message | lowest_priority()]
    after 0 ->
      []
  end.

% 1> c(selective_prioritized).
% {ok,selective_prioritized}

% 2> self() ! {lowest, 1}, self() ! {low, 2}, self() ! {high, 3}, self() ! {highest, 4}.
% {highest,4}

% 3> process_info(self(), messages).
% {messages,[{lowest,1},{low,2},{high,3},{highest,4}]}

% 4> selective_prioritized:important().
% [4,3,2,1]

