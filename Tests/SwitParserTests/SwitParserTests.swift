import XCTest
@testable import SwitParser

final class SwitParserTests: XCTestCase {
    private let parser = JSONParser<JSONArray>()
    private let array: [Any] = [
        ["test1": 1000,
        "test2": "stringValue!",
        "test3": true,
        "test4": nil],
         13,
        ["key": ["test1": 1000,
                 "test2": "stringValue!",
                 "test3": true,
                 "test4": nil],
         "key2": ["true", false, 12.4]]
       ]

    override func setUpWithError() throws {
        let data = try JSONSerialization.data(withJSONObject: array, options: [])
        parser.item = data
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        let array = try parser.parse()
        
        let int = array(0)?.test1?.int
        let isNil = array(0)?.test4?.isNil
        let string = array(2)?.key?.test2?.string
        let bool = array(2)?.key?.test3?.bool
        let double = array(2)?.key2?(2)?.double
        let any = array(100000)?.key?.test3?.sdasd?.asdasds?(2222)?.bool
        
        XCTAssert(int != nil &&
                  isNil != nil &&
                  string != nil &&
                  bool != nil &&
                  double != nil &&
                  any == nil)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
