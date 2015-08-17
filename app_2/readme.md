How to run this

```
$ erl -make
Recompile: src/app_2_sup
Recompile: src/app_2_child
Recompile: src/app_2

$ erl -pa ebin

1> application:start(app_2).
Child <0.39.0>
ok

2> receiver ! "yo, what's up".
Message: "yo, what's up"
Child <0.39.0>
"yo, what's up"

3> i().
Pid                   Initial Call                          Heap     Reds Msgs
Registered            Current Function                     Stack
...
<0.39.0>              app_2_child:loop/0                     233       41    0
receiver              app_2_child:loop/0                       1
Total                                                      48162   385214    0
                                                             241
ok

4> Pid = list_to_pid("<0.39.0>").
<0.39.0>

5> exit(Pid, kill).
Child <0.44.0>
true

6> receiver ! "yo, what's up".
Message: "yo, what's up"
Child <0.44.0>
"yo, what's up"


```