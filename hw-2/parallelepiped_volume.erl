-module(parallelepiped_volume).
-behavior(gen_area). % usage of our gen_area
-export([calc_square/1]).

calc_square(Params) ->
  {Width, Height, Depth} = Params,
  2 * (Width * Height + Height * Depth + Depth * Width).
