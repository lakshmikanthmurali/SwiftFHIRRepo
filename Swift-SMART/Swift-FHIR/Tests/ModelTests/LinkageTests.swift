//
//  LinkageTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRLinkage = Models.Linkage
#else
import SwiftFHIR
typealias SwiftFHIRLinkage = SwiftFHIR.Linkage
#endif


class LinkageTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRLinkage {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRLinkage {
		return try SwiftFHIRLinkage(json: json)
	}
	
	func testLinkage1() {
		do {
			let instance = try runLinkage1()
			try runLinkage1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Linkage successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runLinkage1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRLinkage {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "linkage-example.json")
		
		XCTAssertEqual(inst.author?.reference, "Practitioner/f201")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.item?[0].resource?.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item?[0].resource?.reference, "Condition/example")
		XCTAssertEqual(inst.item?[0].type, LinkageType(rawValue: "source")!)
		XCTAssertEqual(inst.item?[1].resource?.display, "Severe burn of left ear (Date: 24-May 2012)")
		XCTAssertEqual(inst.item?[1].resource?.reference, "Condition/condition-example")
		XCTAssertEqual(inst.item?[1].type, LinkageType(rawValue: "alternate")!)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
