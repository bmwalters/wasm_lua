main: main.c lua
	emcc -Ilua-5.3.4/src main.c lua-5.3.4/src/liblua.a -s WASM=1 -O2 -o wasm_lua.js -s EXPORTED_FUNCTIONS="['_run_lua']" -s MODULARIZE=1 -s EXPORT_NAME="'WASMLua'" -s STRICT=1

lua:
	cd lua-5.3.4/src && make generic CC='emcc -s WASM=1'
