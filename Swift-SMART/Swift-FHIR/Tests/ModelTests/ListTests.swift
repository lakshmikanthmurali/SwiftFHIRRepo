//
//  ListTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRList = Models.List
#else
import SwiftFHIR
typealias SwiftFHIRList = SwiftFHIR.List
#endif


class ListTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRList {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRList {
		return try SwiftFHIRList(json: json)
	}
	
	func testList1() {
		do {
			let instance = try runList1()
			try runList1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-medlist.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "182836005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Review of medication")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Medication Review")
		XCTAssertEqual(inst.date?.description, "2013-11-20T23:10:23+11:00")
		XCTAssertEqual(inst.entry?[0].flag?.coding?[0].code, "01")
		XCTAssertEqual(inst.entry?[0].flag?.coding?[0].display, "Prescribed")
		XCTAssertEqual(inst.entry?[0].flag?.coding?[0].system?.absoluteString, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry?[0].item?.display, "hydroxocobalamin")
		XCTAssertEqual(inst.entry?[1].deleted, true)
		XCTAssertEqual(inst.entry?[1].flag?.coding?[0].code, "02")
		XCTAssertEqual(inst.entry?[1].flag?.coding?[0].display, "Cancelled")
		XCTAssertEqual(inst.entry?[1].flag?.coding?[0].system?.absoluteString, "http://nehta.gov.au/codes/medications/changetype")
		XCTAssertEqual(inst.entry?[1].item?.display, "Morphine Sulfate")
		XCTAssertEqual(inst.id, "med-list")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "changes")!)
		XCTAssertEqual(inst.source?.reference, "Patient/example")
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList2() {
		do {
			let instance = try runList2()
			try runList2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-genetics-profile-annie.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "8670-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "History of family member diseases")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contained?[0].id, "image")
		XCTAssertEqual(inst.contained?[1].id, "1")
		XCTAssertEqual(inst.contained?[2].id, "2")
		XCTAssertEqual(inst.contained?[3].id, "3")
		XCTAssertEqual(inst.contained?[4].id, "4")
		XCTAssertEqual(inst.contained?[5].id, "5")
		XCTAssertEqual(inst.contained?[6].id, "6")
		XCTAssertEqual(inst.contained?[7].id, "7")
		XCTAssertEqual(inst.contained?[8].id, "8")
		XCTAssertEqual(inst.contained?[9].id, "9")
		XCTAssertEqual(inst.entry?[0].item?.reference, "#image")
		XCTAssertEqual(inst.entry?[1].item?.reference, "#2")
		XCTAssertEqual(inst.entry?[2].item?.reference, "#3")
		XCTAssertEqual(inst.entry?[3].item?.reference, "#4")
		XCTAssertEqual(inst.entry?[4].item?.reference, "#5")
		XCTAssertEqual(inst.entry?[5].item?.reference, "#6")
		XCTAssertEqual(inst.entry?[6].item?.reference, "#7")
		XCTAssertEqual(inst.entry?[7].item?.reference, "#8")
		XCTAssertEqual(inst.entry?[8].item?.reference, "#9")
		XCTAssertEqual(inst.entry?[9].item?.reference, "#10")
		XCTAssertEqual(inst.id, "prognosis")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.display, "Annie Proband, female, born 1966")
		XCTAssertEqual(inst.subject?.reference, "Patient/proband")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList3() {
		do {
			let instance = try runList3()
			try runList3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-simple-empty.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "346638")
		XCTAssertEqual(inst.code?.coding?[0].display, "Patient Admission List")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://acme.com/list-codes")
		XCTAssertEqual(inst.date?.description, "2016-07-14T11:54:05+10:00")
		XCTAssertEqual(inst.id, "example-simple-empty")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList4() {
		do {
			let instance = try runList4()
			try runList4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-empty.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "182836005")
		XCTAssertEqual(inst.code?.coding?[0].display, "Review of medication")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.code?.text, "Medication Review")
		XCTAssertEqual(inst.date?.description, "2012-11-26T07:30:23+11:00")
		XCTAssertEqual(inst.emptyReason?.coding?[0].code, "nilknown")
		XCTAssertEqual(inst.emptyReason?.coding?[0].display, "Nil Known")
		XCTAssertEqual(inst.emptyReason?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/list-empty-reason")
		XCTAssertEqual(inst.emptyReason?.text, "The patient is not on any medications")
		XCTAssertEqual(inst.id, "example-empty")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.source?.reference, "Patient/example")
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList5() {
		do {
			let instance = try runList5()
			try runList5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-genetics-profile.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "8670-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "History of family member diseases")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contained?[0].id, "1")
		XCTAssertEqual(inst.contained?[1].id, "2")
		XCTAssertEqual(inst.contained?[2].id, "3")
		XCTAssertEqual(inst.contained?[3].id, "4")
		XCTAssertEqual(inst.contained?[4].id, "5")
		XCTAssertEqual(inst.contained?[5].id, "6")
		XCTAssertEqual(inst.contained?[6].id, "7")
		XCTAssertEqual(inst.contained?[7].id, "8")
		XCTAssertEqual(inst.entry?[0].item?.reference, "#1")
		XCTAssertEqual(inst.entry?[1].item?.reference, "#2")
		XCTAssertEqual(inst.entry?[2].item?.reference, "#3")
		XCTAssertEqual(inst.entry?[3].item?.reference, "#4")
		XCTAssertEqual(inst.entry?[4].item?.reference, "#5")
		XCTAssertEqual(inst.entry?[5].item?.reference, "#6")
		XCTAssertEqual(inst.entry?[6].item?.reference, "#7")
		XCTAssertEqual(inst.entry?[7].item?.reference, "#8")
		XCTAssertEqual(inst.entry?[8].item?.display, "Family history of cancer of colon")
		XCTAssertEqual(inst.entry?[8].item?.reference, "Condition/family-history")
		XCTAssertEqual(inst.id, "genetic")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.display, "Peter Patient")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList6() {
		do {
			let instance = try runList6()
			try runList6(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList6(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-familyhistory-f201-roel.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "8670-2")
		XCTAssertEqual(inst.code?.coding?[0].display, "History of family member diseases")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.contained?[0].id, "fmh-1")
		XCTAssertEqual(inst.contained?[1].id, "fmh-2")
		XCTAssertEqual(inst.entry?[0].item?.reference, "#fmh-1")
		XCTAssertEqual(inst.entry?[1].item?.reference, "#fmh-2")
		XCTAssertEqual(inst.id, "f201")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.note?[0].text, "Both parents, both brothers and both children (twin) are still alive.")
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.display, "Roel")
		XCTAssertEqual(inst.subject?.reference, "Patient/f201")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList7() {
		do {
			let instance = try runList7()
			try runList7(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList7(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example.json")
		
		XCTAssertEqual(inst.date?.description, "2012-11-25T22:17:00+11:00")
		XCTAssertEqual(inst.encounter?.reference, "Encounter/example")
		XCTAssertEqual(inst.entry?[0].deleted, true)
		XCTAssertEqual(inst.entry?[0].flag?.text, "Deleted due to error")
		XCTAssertEqual(inst.entry?[0].item?.reference, "Condition/example")
		XCTAssertEqual(inst.entry?[1].flag?.text, "Added")
		XCTAssertEqual(inst.entry?[1].item?.reference, "Condition/example2")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:uuid:a9fcea7c-fcdf-4d17-a5e0-f26dda030b59")
		XCTAssertEqual(inst.identifier?[0].value, "23974652")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "changes")!)
		XCTAssertEqual(inst.source?.reference, "Patient/example")
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList8() {
		do {
			let instance = try runList8()
			try runList8(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList8(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-allergies.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "52472-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "Allergies and Adverse Drug Reactions")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "Current Allergy List")
		XCTAssertEqual(inst.date?.description, "2015-07-14T23:10:23+11:00")
		XCTAssertEqual(inst.entry?[0].item?.reference, "AllergyIntolerance/example")
		XCTAssertEqual(inst.entry?[1].item?.reference, "AllergyIntolerance/medication")
		XCTAssertEqual(inst.id, "current-allergies")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "working")!)
		XCTAssertEqual(inst.orderedBy?.coding?[0].code, "entry-date")
		XCTAssertEqual(inst.orderedBy?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/list-order")
		XCTAssertEqual(inst.source?.reference, "Patient/example")
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Current Allergy List")
		
		return inst
	}
	
	func testList9() {
		do {
			let instance = try runList9()
			try runList9(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList9(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-double-cousin-relationship-pedigree.json")
		
		XCTAssertEqual(inst.code?.coding?[0].code, "80738-8")
		XCTAssertEqual(inst.code?.coding?[0].display, "TPMT gene mutations found [Identifier] in Blood or Tissue by Sequencing Nominal")
		XCTAssertEqual(inst.code?.coding?[0].system?.absoluteString, "http://loinc.org")
		XCTAssertEqual(inst.code?.text, "TPMT gene mutations found [Identifier] in Blood or Tissue by Sequencing Nominal")
		XCTAssertEqual(inst.contained?[0].id, "1")
		XCTAssertEqual(inst.contained?[1].id, "2")
		XCTAssertEqual(inst.contained?[2].id, "3")
		XCTAssertEqual(inst.contained?[3].id, "4")
		XCTAssertEqual(inst.contained?[4].id, "5")
		XCTAssertEqual(inst.contained?[5].id, "6")
		XCTAssertEqual(inst.entry?[0].item?.reference, "#1")
		XCTAssertEqual(inst.entry?[1].item?.reference, "#2")
		XCTAssertEqual(inst.entry?[2].item?.reference, "#3")
		XCTAssertEqual(inst.entry?[3].item?.reference, "#4")
		XCTAssertEqual(inst.entry?[4].item?.reference, "#5")
		XCTAssertEqual(inst.entry?[5].item?.reference, "#6")
		XCTAssertEqual(inst.id, "example-double-cousin-relationship")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "snapshot")!)
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.subject?.display, "Pam Taylor")
		XCTAssertEqual(inst.subject?.reference, "Patient/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testList10() {
		do {
			let instance = try runList10()
			try runList10(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test List successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runList10(_ json: FHIRJSON? = nil) throws -> SwiftFHIRList {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "list-example-long.json")
		
		XCTAssertEqual(inst.date?.description, "2018-02-21T12:17:00+11:00")
		XCTAssertEqual(inst.entry?[0].item?.reference, "Patient/example")
		XCTAssertEqual(inst.entry?[1].item?.reference, "Patient/pat1")
		XCTAssertEqual(inst.entry?[2].item?.reference, "Patient/pat2")
		XCTAssertEqual(inst.entry?[3].item?.reference, "Patient/pat3")
		XCTAssertEqual(inst.entry?[4].item?.reference, "Patient/pat4")
		XCTAssertEqual(inst.entry?[5].item?.reference, "Patient/1")
		XCTAssertEqual(inst.entry?[6].item?.reference, "Patient/2")
		XCTAssertEqual(inst.entry?[7].item?.reference, "Patient/3")
		XCTAssertEqual(inst.entry?[8].item?.reference, "Patient/4")
		XCTAssertEqual(inst.entry?[9].item?.reference, "Patient/5")
		XCTAssertEqual(inst.id, "long")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.mode, ListMode(rawValue: "changes")!)
		XCTAssertEqual(inst.status, ListStatus(rawValue: "current")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
