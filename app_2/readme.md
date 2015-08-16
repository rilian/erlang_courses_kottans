How to run this

```
$ erl -make
Recompile: src/app_2_sup
Recompile: src/app_2_child
Recompile: src/app_2

$ erl

1> application:load(app_2).
ok

2> application:start(app_2).
{error,{bad_return,{{app_2,start,[normal,[]]},
                    {'EXIT',{undef,[{app_2,start,[normal,[]],[]},
                                    {application_master,start_it_old,4,
                                                        [{file,"application_master.erl"},{line,273}]}]}}}}}
3>
=INFO REPORT==== 16-Aug-2015::23:58:42 ===
    application: app_2
    exited: {bad_return,
                {{app_2,start,[normal,[]]},
                 {'EXIT',
                     {undef,
                         [{app_2,start,[normal,[]],[]},
                          {application_master,start_it_old,4,
                              [{file,"application_master.erl"},
                               {line,273}]}]}}}}
    type: temporary

```