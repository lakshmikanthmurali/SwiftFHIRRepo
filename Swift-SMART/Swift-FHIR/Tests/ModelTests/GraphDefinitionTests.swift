//
//  GraphDefinitionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRGraphDefinition = Models.GraphDefinition
#else
import SwiftFHIR
typealias SwiftFHIRGraphDefinition = SwiftFHIR.GraphDefinition
#endif


class GraphDefinitionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRGraphDefinition {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRGraphDefinition {
		return try SwiftFHIRGraphDefinition(json: json)
	}
	
	func testGraphDefinition1() {
		do {
			let instance = try runGraphDefinition1()
			try runGraphDefinition1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test GraphDefinition successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runGraphDefinition1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRGraphDefinition {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "graphdefinition-example.json")
		
		XCTAssertEqual(inst.contact?[0].telecom?[0].system, ContactPointSystem(rawValue: "url")!)
		XCTAssertEqual(inst.contact?[0].telecom?[0].value, "http://hl7.org/fhir")
		XCTAssertEqual(inst.date?.description, "2015-08-04")
		XCTAssertEqual(inst.description_fhir, "Specify to include list references when generating a document using the $document operation")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.link?[0].description_fhir, "Link to List")
		XCTAssertEqual(inst.link?[0].path, "Composition.section.entry")
		XCTAssertEqual(inst.link?[0].target?[0].compartment?[0].code, CompartmentType(rawValue: "Patient")!)
		XCTAssertEqual(inst.link?[0].target?[0].compartment?[0].rule, GraphCompartmentRule(rawValue: "identical")!)
		XCTAssertEqual(inst.link?[0].target?[0].compartment?[0].use, GraphCompartmentUse(rawValue: "requirement")!)
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].description_fhir, "Include any list entries")
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].path, "List.entry.item")
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].target?[0].compartment?[0].code, CompartmentType(rawValue: "Patient")!)
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].target?[0].compartment?[0].rule, GraphCompartmentRule(rawValue: "identical")!)
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].target?[0].compartment?[0].use, GraphCompartmentUse(rawValue: "requirement")!)
		XCTAssertEqual(inst.link?[0].target?[0].link?[0].target?[0].type, ResourceType(rawValue: "Resource")!)
		XCTAssertEqual(inst.link?[0].target?[0].type, ResourceType(rawValue: "List")!)
		XCTAssertEqual(inst.name, "Document Generation Template")
		XCTAssertEqual(inst.publisher, "FHIR Project")
		XCTAssertEqual(inst.start, ResourceType(rawValue: "Composition")!)
		XCTAssertEqual(inst.status, PublicationStatus(rawValue: "draft")!)
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.url?.absoluteString, "http://h7.org/fhir/GraphDefinition/example")
		
		return inst
	}
}
