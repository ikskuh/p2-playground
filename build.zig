const std = @import("std");

pub fn build(b: *std.Build) void {
    const dep = b.dependency("devkit", .{});

    const loadp2_exe = dep.artifact("loadp2");
    const flexspin_exe = dep.artifact("flexspin");

    b.installArtifact(loadp2_exe);
    b.installArtifact(flexspin_exe);
}
