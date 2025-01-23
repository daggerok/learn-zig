const std = @import("std");
const testing = std.testing;

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}

pub fn println(comptime message: []const u8) void {
    printlnf(message, .{});
}

pub fn printlnf(comptime fmt: []const u8, args: anytype) void {
    std.debug.print(fmt ++ "\n", args);
}

test "basic add functionality" {
    printlnf("evaluating testing.expect(add({}, {})) == {}", .{ 3, 7, 10 });
    try testing.expect(add(3, 7) == 10);
}
