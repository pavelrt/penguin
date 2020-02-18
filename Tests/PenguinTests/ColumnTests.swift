import XCTest
@testable import Penguin

final class ColumnTests: XCTestCase {
    func testIntConversion() {
        let c: PColumn = PColumn([1, 2, 3, 4])
        XCTAssertEqual(c.count, 4)
        XCTAssertEqual(c.asInt(), PTypedColumn<Int>([1, 2, 3, 4]))
    }

    func testStringConversion() {
        let c: PColumn = PColumn(["a", "b", "c"])
        XCTAssertEqual(c.count, 3)
        XCTAssertEqual(c.asString(), PTypedColumn<String>(["a", "b", "c"]))

    }

    func testDoubleConversion() {
        let c: PColumn = PColumn([1.0, 2.0, 3.0])
        XCTAssertEqual(c.count, 3)
        XCTAssertEqual(c.asDouble(), PTypedColumn<Double>([1.0, 2.0, 3.0]))
    }

    static var allTests = [
        ("testIntConversion", testIntConversion),
        ("testStringConversion", testStringConversion),
        ("testDoubleConversion", testDoubleConversion),
    ]
}
