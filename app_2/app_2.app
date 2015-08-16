{application, app_2,
 [{description, "First application"},
  {vsn, "1.0"},
  {modules, [app_2_sup, app_2_child]},
  {registered, []},
  {applications, [kernel, stdlib]},
  {mod, {app_2,[]}}
  ]}.