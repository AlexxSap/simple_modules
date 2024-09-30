build:
	cmake -G "Ninja"  -S . -B ./_build
	cmake --build ./_build --config Release

rerun:
	./_build/bin/modules_ex

clean:
	rm -fr _build

run: clean build rerun
