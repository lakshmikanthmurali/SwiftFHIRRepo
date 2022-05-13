//
//  CommunicationRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCommunicationRequest = Models.CommunicationRequest
#else
import SwiftFHIR
typealias SwiftFHIRCommunicationRequest = SwiftFHIR.CommunicationRequest
#endif


class CommunicationRequestTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCommunicationRequest {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCommunicationRequest {
		return try SwiftFHIRCommunicationRequest(json: json)
	}
	
	func testCommunicationRequest1() {
		do {
			let instance = try runCommunicationRequest1()
			try runCommunicationRequest1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CommunicationRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCommunicationRequest1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCommunicationRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-example.json")
		
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">To be filled out at a later time</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testCommunicationRequest2() {
		do {
			let instance = try runCommunicationRequest2()
			try runCommunicationRequest2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CommunicationRequest successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCommunicationRequest2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCommunicationRequest {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "communicationrequest-example-fm-solicit-attachment.json")
		
		XCTAssertEqual(inst.authoredOn?.description, "2016-06-10T11:01:10-08:00")
		XCTAssertEqual(inst.basedOn?[0].display, "EligibilityRequest")
		XCTAssertEqual(inst.category?[0].coding?[0].code, "SolicitedAttachmentRequest")
		XCTAssertEqual(inst.category?[0].coding?[0].system?.absoluteString, "http://acme.org/messagetypes")
		XCTAssertEqual(inst.contained?[0].id, "provider")
		XCTAssertEqual(inst.contained?[1].id, "payor")
		XCTAssertEqual(inst.contained?[2].id, "requester")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.groupIdentifier?.value, "12345")
		XCTAssertEqual(inst.id, "fm-solicit")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.jurisdiction.com/insurer/123456")
		XCTAssertEqual(inst.identifier?[0].value, "ABC123")
		XCTAssertEqual(inst.medium?[0].coding?[0].code, "WRITTEN")
		XCTAssertEqual(inst.medium?[0].coding?[0].display, "written")
		XCTAssertEqual(inst.medium?[0].coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ParticipationMode")
		XCTAssertEqual(inst.medium?[0].text, "written")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.occurrenceDateTime?.description, "2016-06-10T11:01:10-08:00")
		XCTAssertEqual(inst.payload?[0].contentString, "Please provide the accident report and any associated pictures to support your Claim# DEF5647.")
		XCTAssertEqual(inst.priority, RequestPriority(rawValue: "routine")!)
		XCTAssertEqual(inst.recipient?[0].reference, "#provider")
		XCTAssertEqual(inst.replaces?[0].display, "prior CommunicationRequest")
		XCTAssertEqual(inst.requester?.reference, "#requester")
		XCTAssertEqual(inst.sender?.reference, "#payor")
		XCTAssertEqual(inst.status, RequestStatus(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Request for Accident Report</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
