cmake_minimum_required(VERSION 3.6)
project(Mirai_Source_Code)

set(CMAKE_CXX_STANDARD 11)

add_definitions(-DDEBUG)
add_definitions(-DMIRAI_TELNET)
add_definitions(-DMIRAI_SSH)
add_definitions(-DKILLER_REBIND_SSH)
add_definitions(-DKILLER_REBIND_TELNET)
add_definitions(-DKILLER_REBIND_HTTP)

set(SOURCE_FILES
        dlr/build.sh
        dlr/main.c
        loader/src/headers/binary.h
        loader/src/headers/connection.h
        loader/src/headers/includes.h
        loader/src/headers/server.h
        loader/src/headers/telnet_info.h
        loader/src/headers/util.h
        loader/src/binary.c
        loader/src/connection.c
        loader/src/main.c
        loader/src/server.c
        loader/src/telnet_info.c
        loader/src/util.c
        loader/build.debug.sh
        loader/build.sh
        mirai/bot/attack.c
        mirai/bot/attack.h
        mirai/bot/attack_app.c
        mirai/bot/attack_gre.c
        mirai/bot/attack_tcp.c
        mirai/bot/attack_udp.c
        mirai/bot/checksum.c
        mirai/bot/checksum.h
        mirai/bot/includes.h
        mirai/bot/killer.c
        mirai/bot/killer.h
        mirai/bot/main.c
        mirai/bot/protocol.h
        mirai/bot/rand.c
        mirai/bot/rand.h
        mirai/bot/resolv.c
        mirai/bot/resolv.h
        mirai/bot/scanner.c
        mirai/bot/scanner.h
        mirai/bot/table.c
        mirai/bot/table.h
        mirai/bot/util.c
        mirai/bot/util.h
        mirai/cnc/admin.go
        mirai/cnc/api.go
        mirai/cnc/attack.go
        mirai/cnc/bot.go
        mirai/cnc/clientList.go
        mirai/cnc/constants.go
        mirai/cnc/database.go
        mirai/cnc/main.go
        mirai/debug/badbot
        mirai/debug/cnc
        mirai/debug/enc
        mirai/debug/mirai.dbg
        mirai/debug/nogdb
        mirai/debug/scanListen
        mirai/tools/badbot.c
        mirai/tools/enc
        mirai/tools/enc.c
        mirai/tools/nogdb.c
        mirai/tools/scanListen.go
        mirai/tools/single_load.c
        mirai/tools/wget.c
        mirai/build.sh
        mirai/prompt.txt
        scripts/cross-compile.sh
        scripts/db.sql
        ForumPost.md
        ForumPost.txt
        LICENSE.md
        README.md mirai/tools/hello_world.c)

add_executable(Mirai_Source_Code ${SOURCE_FILES})