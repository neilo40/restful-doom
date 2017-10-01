#!/bin/bash

./src/restful-doom -apiport 6001 -iwad ~/Downloads/doom1.wad -server -deathmatch -privateserver \
    -nomonsters -nosound&
./src/restful-doom -apiport 6002 -iwad ~/Downloads/doom1.wad -connect localhost \
    -extraconfig ~/.restful-doom/restful-doom_p2.cfg&
./src/restful-doom -apiport 6003 -iwad ~/Downloads/doom1.wad -connect localhost \
    -extraconfig ~/.restful-doom/restful-doom_p3.cfg&
./src/restful-doom -apiport 6004 -iwad ~/Downloads/doom1.wad -connect localhost \
    -extraconfig ~/.restful-doom/restful-doom_p4.cfg&
