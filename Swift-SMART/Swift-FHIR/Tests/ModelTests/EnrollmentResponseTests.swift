//
//  EnrollmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIREnrollmentResponse = Models.EnrollmentResponse
#else
import SwiftFHIR
typealias SwiftFHIREnrollmentResponse = SwiftFHIR.EnrollmentResponse
#endif


class EnrollmentResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIREnrollmentResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIREnrollmentResponse {
		return try SwiftFHIREnrollmentResponse(json: json)
	}
	
	func testEnrollmentResponse1() {
		do {
			let instance = try runEnrollmentResponse1()
			try runEnrollmentResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test EnrollmentResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runEnrollmentResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIREnrollmentResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "enrollmentresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Dependant added to policy.")
		XCTAssertEqual(inst.id, "ER2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier?[0].value, "781234")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestProvider?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the EnrollmentResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
