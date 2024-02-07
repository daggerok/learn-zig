# learn-zig [![CI](https://github.com/daggerok/learn-zig/actions/workflows/ci.yml/badge.svg)](https://github.com/daggerok/learn-zig/actions/workflows/ci.yml)
Learn zig programming language

## getting started

install latest (at this moment) zig:

```bash
curl -fsSL https://ziglang.org/builds/zig-macos-aarch64-0.12.0-dev.2619+5cf138e51.tar.xz | tar -xJv
mv zig-macos-aarch64-0.12.0-dev.2619+5cf138e51 ~/.dev/zig
ln -sv ~/.dev/zig/zig ~/.bin/zig # or PATH=$HOME/.dev/zig:$PATH
```

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
