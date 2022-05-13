//
//  CodeSystemTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRCodeSystem = Models.CodeSystem
#else
import SwiftFHIR
typealias SwiftFHIRCodeSystem = SwiftFHIR.CodeSystem
#endif


class CodeSystemTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRCodeSystem {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRCodeSystem {
		return try SwiftFHIRCodeSystem(json: json)
	}
	
	func testCodeSystem1() {
		do {
			let instance = try runCodeSystem1()
			try runCodeSystem1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCodeSystem1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCodeSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-example-supplement.json")
		
		XCTAssertEqual(inst.concept?[0].code, "chol-mmol")
		XCTAssertEqual(inst.concept?[0].property?[0].code, "legacy")
		XCTAssertEqual(inst.concept?[0].property?[0].valueBoolean, false)
		XCTAssertEqual(inst.concept?[1].code, "chol-mass")
		XCTAssertEqual(inst.concept?[1].property?[0].code, "legacy")
		XCTAssertEqual(inst.concept?[1].property?[0].valueBoolean, true)
		XCTAssertEqual(inst.concept?[2].code, "chol")
		XCTAssertEqual(inst.concept?[2].property?[0].code, "legacy")
		XCTAssertEqual(inst.concept?[2].property?[0].valueBoolean, true)
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, CodeSystemContentMode(rawValue: "supplement")!)
		XCTAssertEqual(inst.date?.description, "2016-01-28")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "example-supplement")
		XCTAssertEqual(inst.name, "CholCodeLegacyStatus")
		XCTAssertEqual(inst.property?[0].code, "legacy")
		XCTAssertEqual(inst.property?[0].description_fhir, "hether the test is currently performed")
		XCTAssertEqual(inst.property?[0].type, PropertyType(rawValue: "boolean")!)
		XCTAssertEqual(inst.publisher, "ACME Co")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.supplements?.absoluteString, "http://hl7.org/fhir/CodeSystem/example")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/CodeSystem/example-supplement")
		XCTAssertEqual(inst.version, "201801103")
		
		return inst
	}
	
	func testCodeSystem2() {
		do {
			let instance = try runCodeSystem2()
			try runCodeSystem2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCodeSystem2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCodeSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-list-example-codes.json")
		
		XCTAssertEqual(inst.caseSensitive, true)
		XCTAssertEqual(inst.concept?[0].code, "alerts")
		XCTAssertEqual(inst.concept?[0].definition, "A list of alerts for the patient.")
		XCTAssertEqual(inst.concept?[0].display, "Alerts")
		XCTAssertEqual(inst.concept?[1].code, "adverserxns")
		XCTAssertEqual(inst.concept?[1].definition, "A list of part adverse reactions.")
		XCTAssertEqual(inst.concept?[1].display, "Adverse Reactions")
		XCTAssertEqual(inst.concept?[2].code, "allergies")
		XCTAssertEqual(inst.concept?[2].definition, "A list of Allergies for the patient.")
		XCTAssertEqual(inst.concept?[2].display, "Allergies")
		XCTAssertEqual(inst.concept?[3].code, "medications")
		XCTAssertEqual(inst.concept?[3].definition, "A list of medication statements for the patient.")
		XCTAssertEqual(inst.concept?[3].display, "Medication List")
		XCTAssertEqual(inst.concept?[4].code, "problems")
		XCTAssertEqual(inst.concept?[4].definition, "A list of problems that the patient is known of have (or have had in the past).")
		XCTAssertEqual(inst.concept?[4].display, "Problem List")
		XCTAssertEqual(inst.concept?[5].code, "worklist")
		XCTAssertEqual(inst.concept?[5].definition, "A list of items that constitute a set of work to be performed (typically this code would be specialized for more specific uses, such as a ward round list).")
		XCTAssertEqual(inst.concept?[5].display, "Worklist")
		XCTAssertEqual(inst.concept?[6].code, "waiting")
		XCTAssertEqual(inst.concept?[6].definition, "A list of items waiting for an event (perhaps a surgical patient waiting list).")
		XCTAssertEqual(inst.concept?[6].display, "Waiting List")
		XCTAssertEqual(inst.concept?[7].code, "protocols")
		XCTAssertEqual(inst.concept?[7].definition, "A set of protocols to be followed.")
		XCTAssertEqual(inst.concept?[7].display, "Protocols")
		XCTAssertEqual(inst.concept?[8].code, "plans")
		XCTAssertEqual(inst.concept?[8].definition, "A set of care plans that apply in a particular context of care.")
		XCTAssertEqual(inst.concept?[8].display, "Care Plans")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, CodeSystemContentMode(rawValue: "complete")!)
		XCTAssertEqual(inst.description_fhir, "Example use codes for the List resource - typical kinds of use.")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg")
		XCTAssertEqual(inst.extension_fhir?[0].valueCode, "fhir")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status")
		XCTAssertEqual(inst.extension_fhir?[1].valueCode, "draft")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm")
		XCTAssertEqual(inst.extension_fhir?[2].valueInteger, 1)
		XCTAssertEqual(inst.id, "list-example-codes")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.840.1.113883.4.642.1.1105")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2018-12-27T22:37:54.724+11:00")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/shareablecodesystem")
		XCTAssertEqual(inst.name, "ExampleUseCodesForList")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "Example Use Codes for List")
		XCTAssertEqual(inst.url?.absoluteString, "http://terminology.hl7.org/CodeSystem/list-example-use-codes")
		XCTAssertEqual(inst.valueSet?.absoluteString, "http://hl7.org/fhir/ValueSet/list-example-codes")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testCodeSystem3() {
		do {
			let instance = try runCodeSystem3()
			try runCodeSystem3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCodeSystem3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCodeSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-examplescenario-actor-type.json")
		
		XCTAssertEqual(inst.caseSensitive, true)
		XCTAssertEqual(inst.concept?[0].code, "person")
		XCTAssertEqual(inst.concept?[0].definition, "A person.")
		XCTAssertEqual(inst.concept?[0].display, "Person")
		XCTAssertEqual(inst.concept?[1].code, "entity")
		XCTAssertEqual(inst.concept?[1].definition, "A system.")
		XCTAssertEqual(inst.concept?[1].display, "System")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.contact?[0].telecom?[1].system, ContactPointSystem(rawValue: "email")!)
		XCTAssertEqual(inst.contact?[0].telecom?[1].value, "fhir@lists.hl7.org")
		XCTAssertEqual(inst.content, CodeSystemContentMode(rawValue: "complete")!)
		XCTAssertEqual(inst.date?.description, "2018-12-27T22:37:54+11:00")
		XCTAssertEqual(inst.description_fhir, "The type of actor - system or human.")
		XCTAssertEqual(inst.experimental, false)
		XCTAssertEqual(inst.extension_fhir?[0].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg")
		XCTAssertEqual(inst.extension_fhir?[0].valueCode, "fhir")
		XCTAssertEqual(inst.extension_fhir?[1].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status")
		XCTAssertEqual(inst.extension_fhir?[1].valueCode, "trial-use")
		XCTAssertEqual(inst.extension_fhir?[2].url, "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm")
		XCTAssertEqual(inst.extension_fhir?[2].valueInteger, 0)
		XCTAssertEqual(inst.id, "examplescenario-actor-type")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "urn:ietf:rfc:3986")
		XCTAssertEqual(inst.identifier?[0].value, "urn:oid:2.16.840.1.113883.4.642.1.859")
		XCTAssertEqual(inst.meta?.lastUpdated?.description, "2018-12-27T22:37:54.724+11:00")
		XCTAssertEqual(inst.name, "ExampleScenarioActorType")
		XCTAssertEqual(inst.publisher, "HL7 (FHIR Project)")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ExampleScenarioActorType")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/examplescenario-actor-type")
		XCTAssertEqual(inst.valueSet?.absoluteString, "http://hl7.org/fhir/ValueSet/examplescenario-actor-type")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testCodeSystem4() {
		do {
			let instance = try runCodeSystem4()
			try runCodeSystem4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCodeSystem4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCodeSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-example-summary.json")
		
		XCTAssertEqual(inst.caseSensitive, true)
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, CodeSystemContentMode(rawValue: "not-present")!)
		XCTAssertEqual(inst.count, 92)
		XCTAssertEqual(inst.description_fhir, "This is an example code system summary for the ACME codes for body site.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.id, "summary")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].code, "CA")
		XCTAssertEqual(inst.jurisdiction?[0].coding?[0].system?.absoluteString, "urn:iso:std:iso:3166")
		XCTAssertEqual(inst.name, "Code system summary example for ACME body sites")
		XCTAssertEqual(inst.publisher, "HL7 International")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/CodeSystem/summary")
		XCTAssertEqual(inst.useContext?[0].code?.code, "species")
		XCTAssertEqual(inst.useContext?[0].code?.system?.absoluteString, "http://example.org/CodeSystem/contexttype")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].code, "337915000")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].display, "Homo sapiens (organism)")
		XCTAssertEqual(inst.useContext?[0].valueCodeableConcept?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.version, "4.0.0")
		
		return inst
	}
	
	func testCodeSystem5() {
		do {
			let instance = try runCodeSystem5()
			try runCodeSystem5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test CodeSystem successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runCodeSystem5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRCodeSystem {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "codesystem-example.json")
		
		XCTAssertEqual(inst.caseSensitive, true)
		XCTAssertEqual(inst.concept?[0].code, "chol-mmol")
		XCTAssertEqual(inst.concept?[0].definition, "Serum Cholesterol, in mmol/L")
		XCTAssertEqual(inst.concept?[0].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[0].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[0].designation?[0].value, "From ACME POC Testing")
		XCTAssertEqual(inst.concept?[0].display, "SChol (mmol/L)")
		XCTAssertEqual(inst.concept?[1].code, "chol-mass")
		XCTAssertEqual(inst.concept?[1].definition, "Serum Cholesterol, in mg/L")
		XCTAssertEqual(inst.concept?[1].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[1].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[1].designation?[0].value, "From Paragon Labs")
		XCTAssertEqual(inst.concept?[1].display, "SChol (mg/L)")
		XCTAssertEqual(inst.concept?[2].code, "chol")
		XCTAssertEqual(inst.concept?[2].definition, "Serum Cholesterol")
		XCTAssertEqual(inst.concept?[2].designation?[0].use?.code, "internal-label")
		XCTAssertEqual(inst.concept?[2].designation?[0].use?.system?.absoluteString, "http://acme.com/config/fhir/codesystems/internal")
		XCTAssertEqual(inst.concept?[2].designation?[0].value, "Obdurate Labs uses this with both kinds of units...")
		XCTAssertEqual(inst.concept?[2].display, "SChol")
		XCTAssertEqual(inst.contact?[0].name, "FHIR project team")
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.content, CodeSystemContentMode(rawValue: "complete")!)
		XCTAssertEqual(inst.date?.description, "2016-01-28")
		XCTAssertEqual(inst.description_fhir, "This is an example code system that includes all the ACME codes for serum/plasma cholesterol from v2.36.")
		XCTAssertEqual(inst.experimental, true)
		XCTAssertEqual(inst.filter?[0].code, "acme-plasma")
		XCTAssertEqual(inst.filter?[0].description_fhir, "An internal filter used to select codes that are only used with plasma")
		XCTAssertEqual(inst.filter?[0].operator_fhir?[0], FilterOperator(rawValue: "=")!)
		XCTAssertEqual(inst.filter?[0].value, "the value of this filter is either 'true' or 'false'")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://acme.com/identifiers/codesystems")
		XCTAssertEqual(inst.identifier?[0].value, "internal-cholesterol-inl")
		XCTAssertEqual(inst.meta?.profile?[0].absoluteString, "http://hl7.org/fhir/StructureDefinition/shareablecodesystem")
		XCTAssertEqual(inst.name, "ACMECholCodesBlood")
		XCTAssertEqual(inst.publisher, "Acme Co")
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.title, "ACME Codes for Cholesterol in Serum/Plasma")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/CodeSystem/example")
		XCTAssertEqual(inst.version, "20160128")
		
		return inst
	}
}
