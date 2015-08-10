-module(circle_module).
-behavior(gen_area). % usage of our gen_area
-export([calc_square/1]).

calc_square(Params) ->
  Radius = element(1, Params),
  3.14 * Radius * Radius.
