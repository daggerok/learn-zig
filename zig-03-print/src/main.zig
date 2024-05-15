const std = @import("std");

// // v1:
// fn println(message: []const u8) !void {
//     var bw = stdIo.bufferedWriter(stdIo.getStdOut().writer());
//     try bw.writer().print("{s}\n", .{message});
//     try bw.flush(); // don't forget to flush!
// }

// v2:
fn println(message: []const u8) !void {
    std.debug.print("{s}\n", .{message});
}

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    // stdout is for the actual output of your application, for example if you
    // are implementing gzip, then only the compressed bytes should be sent to
    // stdout, not any debugging messages.
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("Run `zig build test` to run the tests.\n", .{});
    try bw.flush(); // don't forget to flush!

    // my print
    try println("Hello, World!");
    return;
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
