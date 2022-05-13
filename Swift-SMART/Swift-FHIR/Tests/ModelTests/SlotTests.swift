//
//  SlotTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRSlot = Models.Slot
#else
import SwiftFHIR
typealias SwiftFHIRSlot = SwiftFHIR.Slot
#endif


class SlotTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRSlot {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRSlot {
		return try SwiftFHIRSlot(json: json)
	}
	
	func testSlot1() {
		do {
			let instance = try runSlot1()
			try runSlot1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSlot1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSlot {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-busy.json")
		
		XCTAssertEqual(inst.comment, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.id, "1")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/identifiers/slots")
		XCTAssertEqual(inst.identifier?[0].value, "123132")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.overbooked, true)
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:00:00Z")
		XCTAssertEqual(inst.status, SlotStatus(rawValue: "busy")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSlot2() {
		do {
			let instance = try runSlot2()
			try runSlot2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSlot2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSlot {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "WALKIN")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "A previously unscheduled walk-in visit")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v2-0276")
		XCTAssertEqual(inst.comment, "Assessments should be performed before requesting appointments in this slot.")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "57")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "Immunization")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "408480009")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "Clinical immunology")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:15:00Z")
		XCTAssertEqual(inst.status, SlotStatus(rawValue: "free")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSlot3() {
		do {
			let instance = try runSlot3()
			try runSlot3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSlot3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSlot {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-unavailable.json")
		
		XCTAssertEqual(inst.comment, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end?.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.id, "3")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:30:00Z")
		XCTAssertEqual(inst.status, SlotStatus(rawValue: "busy-unavailable")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testSlot4() {
		do {
			let instance = try runSlot4()
			try runSlot4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test Slot successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runSlot4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRSlot {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "slot-example-tentative.json")
		
		XCTAssertEqual(inst.comment, "Dr Careful is out of the office")
		XCTAssertEqual(inst.end?.description, "2013-12-25T10:00:00Z")
		XCTAssertEqual(inst.id, "2")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.schedule?.reference, "Schedule/example")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].code, "17")
		XCTAssertEqual(inst.serviceCategory?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.start?.description, "2013-12-25T09:45:00Z")
		XCTAssertEqual(inst.status, SlotStatus(rawValue: "busy-tentative")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
