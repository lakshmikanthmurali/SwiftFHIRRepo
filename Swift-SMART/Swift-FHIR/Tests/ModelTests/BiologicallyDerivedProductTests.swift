//
//  BiologicallyDerivedProductTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRBiologicallyDerivedProduct = Models.BiologicallyDerivedProduct
#else
import SwiftFHIR
typealias SwiftFHIRBiologicallyDerivedProduct = SwiftFHIR.BiologicallyDerivedProduct
#endif


class BiologicallyDerivedProductTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRBiologicallyDerivedProduct {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRBiologicallyDerivedProduct {
		return try SwiftFHIRBiologicallyDerivedProduct(json: json)
	}
	
	func testBiologicallyDerivedProduct1() {
		do {
			let instance = try runBiologicallyDerivedProduct1()
			try runBiologicallyDerivedProduct1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test BiologicallyDerivedProduct successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runBiologicallyDerivedProduct1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRBiologicallyDerivedProduct {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "biologicallyderivedproduct-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
