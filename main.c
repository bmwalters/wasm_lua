#include <stdbool.h>
#include "lua.h"
#include <lauxlib.h>
#include <lualib.h>

const char* run_lua(const char* script) {
	lua_State* state = luaL_newstate();
	luaL_openlibs(state);

	bool success = !luaL_dostring(state, script);

	const char* value = lua_tostring(state, -1);

	lua_close(state);

	return value;
}
