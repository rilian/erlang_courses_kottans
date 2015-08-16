How to run this

```
$ erl -make
Recompile: src/app_2_sup
Recompile: src/app_2_child
Recompile: src/app_2

$ erl -pa ebin

1> application:load(app_2).
ok

2> application:start(app_2).
Child <0.40.0>
ok

3> receiver ! "yo, what's up". 
Message: "yo, what's up"
Child <0.40.0>
"yo, what's up"

```