
import XCTest
@testable import CommonValidation

class ValidationServiceTests: XCTestCase {
    let service = ValidationService()
    let validURL = "https://www.example.com"
    let invalidURL = "notAUrl"
    let emptyString = ""

    func testIsValid_URL() {
        let result = service.isValid(url: validURL)
        XCTAssertTrue(result.isValid)
        XCTAssertTrue(result.errorMessage.isEmpty)
        
        let result2 = service.isValid(url: invalidURL)
        XCTAssertFalse(result2.isValid)
        XCTAssertEqual(result2.errorMessage, [ValidURLRule().errorMessage])
    }
    
}
