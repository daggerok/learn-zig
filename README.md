# learn-zig [![CI](https://github.com/daggerok/learn-zig/actions/workflows/ci.yml/badge.svg)](https://github.com/daggerok/learn-zig/actions/workflows/ci.yml)
Learn zig programming language

## getting started

install [zig-macos-aarch64-0.14.0-dev.2851+b074fb7dd](https://ziglang.org/builds/zig-macos-aarch64-0.14.0-dev.2851+b074fb7dd.tar.xz) version

```bash
test ! -d ~/.dev/zig || mv -fv ~/.dev/zig ~/.dev/zig-$(date +%Y-%m-%d-%H-%M-%S)
mkdir -pv ~/.dev/zig
export ZIG_URL="https://ziglang.org/builds/zig-macos-aarch64-0.14.0-dev.2851+b074fb7dd.tar.xz"
curl -LSs "$ZIG_URL" | tar -xJ -C ~/.dev/zig --strip-components=1
```

<!--

install latest (at this moment 0.12.0) zig:

```bash
curl -fsSL https://ziglang.org/builds/zig-macos-aarch64-0.12.0-dev.2619+5cf138e51.tar.xz | tar -xJv
mv zig-macos-aarch64-0.12.0-dev.2619+5cf138e51 ~/.dev/zig
ln -sv ~/.dev/zig/zig ~/.bin/zig # or PATH=$HOME/.dev/zig:$PATH
```

-->

init project:

```bash
mkdir my-zig-project
cd my-zig-project
zig init
```

testing:

```bash
zig test src/main.zig
zig test src/root.zig
# or simply
zig build test
```

build and run:

```bash
zig build # or: zig build --summary all
❯ ./zig-out/bin/*
```
