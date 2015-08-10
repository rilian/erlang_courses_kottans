-module(gen_area).
-export([behaviour_info/1]).

behaviour_info(callbacks) ->
  [
    {calc_square, 1} % calc_square({12, 34})
  ];

behaviour_info(_Other) ->
  undefined.

% 1> c(gen_area).
% {ok,gen_area}

% 2> c(circle_module).
% {ok,circle_module}

% 3> circle_module:calc_square({3}).
% 28.259999999999998

% 4> c(parallelepiped_volume).
% {ok,parallelepiped_volume}

% 5> parallelepiped_volume:calc_square({2,4,3}).
% 52
