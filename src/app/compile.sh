#!/usr/bin/sh

#i686-w64-mingw32-gcc -o logs_dispatcher.exe -I inc/ -I sha1/ -I bson/ misc.c memory.c utf8.c monitor.c sha1/sha1.c bson/numbers.c bson/encoding.c bson/bson.c flags.c hooks.c parsing.c config.c log.c logs_dispatcher.c pipe.c -L . -lfltLib
#i686-w64-mingw32-gcc -shared -o logs_dispatcher.dll -static -std=c99 -Wall -Wextra -Wno-missing-field-initializers -I inc/ -I sha1/ -I bson/ misc.c memory.c utf8.c monitor.c sha1/sha1.c bson/numbers.c bson/encoding.c bson/bson.c flags.c hooks.c parsing.c config.c log.c logs_dispatcher.c pipe.c -Wl,fltLib.dll
i686-w64-mingw32-gcc -shared -o maindll.so maindll.c #-std=c99 -I bson/ bson/numbers.c bson/encoding.c bson/bson.c -Wl,fltLib.dll
i686-w64-mingw32-gcc -o maintest.exe maintest.c #-std=c99 -L . -lfltLib
