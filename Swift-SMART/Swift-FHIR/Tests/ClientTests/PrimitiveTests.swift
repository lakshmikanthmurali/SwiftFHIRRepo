//
//  PrimitiveTests.swift
//  SwiftFHIR
//
//  Created by Pascal Pfiffner on 06.12.16.
//  2016, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
import ModelTests
#else
import SwiftFHIR
#endif


/**
Test how primitives are handled during serialization and deserialization.
*/
class PrimitiveTests: XCTestCase {
	
	var tests: [String: FHIRJSON]?
	
	override func setUp() {
		super.setUp()
		tests = (try? readJSONFile("Primitives.json", directory: testResourcesDirectory)) as? [String: FHIRJSON]
	}
	
	func testPrimitive() {
		
	}
	
	func testPrimitiveArray() {
		guard let json1 = tests?["initArrayValid"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		// Deserialization
		var context = FHIRInstantiationContext()
		let code = createInstances(of: FHIRString.self, for: "code", in: json1, context: &context, owner: nil)
		XCTAssertTrue(context.errors.isEmpty)
		XCTAssertEqual(2, code?.count)
		XCTAssertEqual("ext", code?[1].id, "Should find `id` for primitive")
		XCTAssertEqual(1, code?[1].extension_fhir?.count ?? 0, "Should have instantiated Extension on 2nd code string")
		XCTAssertEqual("New Zealand a.k.a Kiwiland", code?[1].extension_fhir?[0].valueString, "Should correctly read extension on 2nd code string")
		
		// Serialization
		var json = FHIRJSON()
		var errors = [FHIRValidationError]()
		arrayDecorate(json: &json, withKey: "code", using: code, errors: &errors)
		XCTAssertTrue(errors.isEmpty)
		XCTAssertNotNil(json["code"])
		XCTAssertNotNil(json["_code"])
		XCTAssertEqual("nz", (json["code"] as? [String])?[1])
		let ext = json["_code"] as? [FHIRJSON?]
		XCTAssertNotNil(ext)
		let extensions = (ext?[1])?["extension"] as? [FHIRJSON]
		XCTAssertEqual(1, extensions?.count ?? 0)
		XCTAssertEqual("http://hl7.org/fhir/StructureDefinition/display", extensions?.first?["url"] as? String)
	}
	
	func testInvalidPrimitiveArray() {
		guard let json = tests?["initArrayInvalid1"] else {
			XCTAssertTrue(false, "Tests not initialized")
			return
		}
		
		var context = FHIRInstantiationContext()
		let code = createInstances(of: FHIRString.self, for: "code", in: json, context: &context, owner: nil)
		XCTAssertEqual(2, code?.count)
		XCTAssertFalse(context.errors.isEmpty)
		XCTAssertThrowsError(try context.validate())
	}
}

