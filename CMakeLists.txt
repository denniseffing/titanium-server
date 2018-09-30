cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(otserv)

# Additional CMake modules
set(CMAKE_MODULE_PATH "${CMAKE_MODULE_PATH}" "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

# Revscriptsys2
set(VERSION "0.7.0")

# Make sure the compiler can compile C++11 code
include(FindCXX11)

# Options
option(USE_MYSQL "Use MySQL" OFF)
option(USE_SQLITE "Use SQLite" OFF)
option(USE_ODBC "Use ODBC" OFF)
option(USE_PGSQL "Use PGSQL" OFF)
option(USE_LUAJIT "Use LuaJIT" OFF)
option(USE_DIAGNOSTIC "Use server diagnostic" OFF)
option(USE_SKULLSYSTEM "Skull system" ON)
option(USE_STATIC_LIBS "Static linking" OFF)

# Status
message(STATUS "MySQL: " ${USE_MYSQL})
message(STATUS "SQLite: " ${USE_SQLITE})
message(STATUS "ODBC: " ${USE_ODBC})
message(STATUS "PGSQL: " ${USE_PGSQL})
message(STATUS "LuaJIT: " ${USE_LUAJIT})

message(STATUS "Server diagnostic: " ${USE_DIAGNOSTIC})
message(STATUS "Skull system: " ${USE_SKULLSYSTEM})

message(STATUS "Static libraries: " ${USE_STATIC_LIBS})

# Make sure at least one database driver is selected
#if(NOT USE_MYSQL AND NOT USE_SQLITE AND NOT USE_ODBC AND NOT USE_PGSQL)
#  message(FATAL_ERROR "At least one database driver has to be selected.")
#endif()

add_compile_definitions(BDB_REPLACE_SPEARS;CVS_DAY_CYCLE;YUR_ROOKGARD;YUR_PREMIUM_PROMOTION;YUR_CVS_MODS;JD_DEATH_LIST;JD_WANDS;TLM_BUY_SELL;TLM_SERVER_SAVE;TLM_HOUSE_SYSTEM;BDB_UTEVO_LUX;WOLV_LOAD_NPC;BD_HOUSE_WINDOW;TR_ANTI_AFK;ELEM_VIP_LIST;SD_BATTLE_WINDOW;TR_SUMMONS;TRS_GM_INVISIBLE;SG_ROTATE_ITEM;TLM_SKULLS_PARTY;BRN_EXIVA;SD_BURST_ARROW;__DEBUG_PLAYERS__;YUR_ICE_RAPIER;YUR_AOL;YUR_LOGIN_QUEUE;YUR_MULTIPLIERS;YUR_BOH;YUR_NPC_EXT;YUR_GUILD_SYSTEM;YUR_CMD_EXT;YUR_ITEM_EXT;YUR_NO_MONSTER_HEAL;YUR_PVP_ARENA;YUR_RINGS_AMULETS;YUR_CONFIG_CAP;YUR_FIGHT_MODE;YUR_READABLES;YUR_PROMOTION;YUR_LEARN_SPELLS;YUR_HEAL_EXHAUST)
set(CMAKE_CXX_FLAGS "-fpermissive -std=c++0x")

# Sources
add_subdirectory(src)
