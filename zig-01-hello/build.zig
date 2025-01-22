// https://ziglang.org/learn/build-system/
const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addExecutable(.{
        .name = "hello",
        .root_source_file = b.path("hello.zig"),
        .target = target, // set target arch and OS
    });
    b.installArtifact(exe);
}
