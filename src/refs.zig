const expect = @import("std").testing.expect;

fn increment(num: *u8) void {
    num.* += 1;
}

test "pointers" {
    var x: u8 = 1;
    increment(&x);
    try expect(x == 2);
}

test "const ptrs" {
    const x: u8 = 1;
    var y = &x;
    y.* += 1;
}
