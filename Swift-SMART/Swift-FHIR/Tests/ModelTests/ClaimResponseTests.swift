//
//  ClaimResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 4.0.0-a53ec6ee1b on 2019-03-01.
//  2019, SMART Health IT.
//

import XCTest
#if !NO_MODEL_IMPORT
import Models
typealias SwiftFHIRClaimResponse = Models.ClaimResponse
#else
import SwiftFHIR
typealias SwiftFHIRClaimResponse = SwiftFHIR.ClaimResponse
#endif


class ClaimResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIRClaimResponse {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIRClaimResponse {
		return try SwiftFHIRClaimResponse(json: json)
	}
	
	func testClaimResponse1() {
		do {
			let instance = try runClaimResponse1()
			try runClaimResponse1(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example-unsolicited-preauth.json")
		
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].amount?.value, "250.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].amount?.value, "10.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.addItem?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.addItem?[0].adjudication?[2].value, "100.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].amount?.value, "240.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.addItem?[0].itemSequence?[0], 1)
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].code, "x")
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].display, "None")
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].system?.absoluteString, "http://example.org/fhir/modifiers")
		XCTAssertEqual(inst.addItem?[0].net?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].net?.value, "250.0")
		XCTAssertEqual(inst.addItem?[0].noteNumber?[0], 101)
		XCTAssertEqual(inst.addItem?[0].productOrService?.coding?[0].code, "1101")
		XCTAssertEqual(inst.addItem?[0].productOrService?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].amount?.value, "800.0")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.addItem?[1].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.addItem?[1].adjudication?[1].value, "100.0")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].amount?.value, "800.0")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.addItem?[1].itemSequence?[0], 1)
		XCTAssertEqual(inst.addItem?[1].net?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].net?.value, "800.0")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].code, "2101")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].display, "Radiograph, series (12)")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "The enclosed services are authorized for your provision within 30 days of this notice.")
		XCTAssertEqual(inst.id, "UR3503")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.SocialBenefitsInc.com/fhir/ClaimResponse")
		XCTAssertEqual(inst.identifier?[0].value, "UR3503")
		XCTAssertEqual(inst.insurance?[0].coverage?.reference, "Coverage/9876B1")
		XCTAssertEqual(inst.insurance?[0].focal, true)
		XCTAssertEqual(inst.insurance?[0].sequence, 1)
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.org/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "444123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payeeType?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payeeType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payeetype")
		XCTAssertEqual(inst.preAuthRef, "18SS12345")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 101)
		XCTAssertEqual(inst.processNote?[0].text, "Please submit a Pre-Authorization request if a more extensive examination or urgent services are required.")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "print")!)
		XCTAssertEqual(inst.requestor?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A sample unsolicited pre-authorization response which authorizes basic dental services to be performed for a patient.</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "1050.0")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "1040.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "preauthorization")!)
		
		return inst
	}
	
	func testClaimResponse2() {
		do {
			let instance = try runClaimResponse2()
			try runClaimResponse2(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example-additem.json")
		
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].amount?.value, "100.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].amount?.value, "10.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.addItem?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.addItem?[0].adjudication?[2].value, "80.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].amount?.value, "72.0")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].reason?.coding?[0].code, "ar002")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].reason?.coding?[0].display, "Plan Limit Reached")
		XCTAssertEqual(inst.addItem?[0].adjudication?[3].reason?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adjudication-reason")
		XCTAssertEqual(inst.addItem?[0].itemSequence?[0], 1)
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].code, "x")
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].display, "None")
		XCTAssertEqual(inst.addItem?[0].modifier?[0].coding?[0].system?.absoluteString, "http://example.org/fhir/modifiers")
		XCTAssertEqual(inst.addItem?[0].net?.currency, "USD")
		XCTAssertEqual(inst.addItem?[0].net?.value, "135.57")
		XCTAssertEqual(inst.addItem?[0].noteNumber?[0], 101)
		XCTAssertEqual(inst.addItem?[0].productOrService?.coding?[0].code, "1101")
		XCTAssertEqual(inst.addItem?[0].productOrService?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].amount?.value, "35.57")
		XCTAssertEqual(inst.addItem?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.addItem?[1].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.addItem?[1].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].amount?.value, "28.47")
		XCTAssertEqual(inst.addItem?[1].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.addItem?[1].itemSequence?[0], 1)
		XCTAssertEqual(inst.addItem?[1].net?.currency, "USD")
		XCTAssertEqual(inst.addItem?[1].net?.value, "35.57")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].code, "2141")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].display, "Radiograph, bytewing")
		XCTAssertEqual(inst.addItem?[1].productOrService?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.addItem?[2].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[2].adjudication?[0].amount?.value, "350.0")
		XCTAssertEqual(inst.addItem?[2].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.addItem?[2].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.addItem?[2].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.addItem?[2].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.addItem?[2].adjudication?[2].amount?.value, "270.0")
		XCTAssertEqual(inst.addItem?[2].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.addItem?[2].detailSequence?[0], 2)
		XCTAssertEqual(inst.addItem?[2].itemSequence?[0], 3)
		XCTAssertEqual(inst.addItem?[2].modifier?[0].coding?[0].code, "x")
		XCTAssertEqual(inst.addItem?[2].modifier?[0].coding?[0].display, "None")
		XCTAssertEqual(inst.addItem?[2].modifier?[0].coding?[0].system?.absoluteString, "http://example.org/fhir/modifiers")
		XCTAssertEqual(inst.addItem?[2].net?.currency, "USD")
		XCTAssertEqual(inst.addItem?[2].net?.value, "350.0")
		XCTAssertEqual(inst.addItem?[2].noteNumber?[0], 101)
		XCTAssertEqual(inst.addItem?[2].productOrService?.coding?[0].code, "expense")
		XCTAssertEqual(inst.addItem?[2].productOrService?.coding?[0].system?.absoluteString, "http://example.org/fhir/oralservicecodes")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "R3503")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/remittance")
		XCTAssertEqual(inst.identifier?[0].value, "R3503")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.org/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "555123")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "0.0")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.value, "0.0")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].itemSequence, 1)
		XCTAssertEqual(inst.item?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].adjudication?[0].amount?.value, "105.0")
		XCTAssertEqual(inst.item?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[1].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[1].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[1].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[1].adjudication?[2].amount?.value, "84.0")
		XCTAssertEqual(inst.item?[1].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[1].itemSequence, 2)
		XCTAssertEqual(inst.item?[2].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].adjudication?[0].amount?.value, "750.0")
		XCTAssertEqual(inst.item?[2].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[2].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[2].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[2].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].adjudication?[2].amount?.value, "600.0")
		XCTAssertEqual(inst.item?[2].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[0].amount?.value, "750.0")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[2].amount?.value, "600.0")
		XCTAssertEqual(inst.item?[2].detail?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[2].detail?[0].detailSequence, 1)
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[0].amount?.value, "0.0")
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[1].amount?.value, "0.0")
		XCTAssertEqual(inst.item?[2].detail?[1].adjudication?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[2].detail?[1].detailSequence, 2)
		XCTAssertEqual(inst.item?[2].itemSequence, 3)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payeeType?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payeeType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payeetype")
		XCTAssertEqual(inst.payment?.amount?.currency, "USD")
		XCTAssertEqual(inst.payment?.amount?.value, "100.47")
		XCTAssertEqual(inst.payment?.date?.description, "2014-08-31")
		XCTAssertEqual(inst.payment?.identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/paymentidentifier")
		XCTAssertEqual(inst.payment?.identifier?.value, "201408-2-15507")
		XCTAssertEqual(inst.payment?.type?.coding?[0].code, "complete")
		XCTAssertEqual(inst.payment?.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-paymenttype")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 101)
		XCTAssertEqual(inst.processNote?[0].text, "Package codes are not permitted. Codes replaced by Insurer.")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "print")!)
		XCTAssertEqual(inst.request?.identifier?.system?.absoluteString, "http://happyvalley.com/claim")
		XCTAssertEqual(inst.request?.identifier?.value, "12346")
		XCTAssertEqual(inst.requestor?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ClaimResponse to Claim Oral Average with additional items</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "1340.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "1054.47")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
	
	func testClaimResponse3() {
		do {
			let instance = try runClaimResponse3()
			try runClaimResponse3(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse3(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "R3500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/remittance")
		XCTAssertEqual(inst.identifier?[0].value, "R3500")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.org/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "555123")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "135.57")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.value, "10.0")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[2].value, "80.0")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.value, "90.47")
		XCTAssertEqual(inst.item?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].adjudication?[3].reason?.coding?[0].code, "ar002")
		XCTAssertEqual(inst.item?[0].adjudication?[3].reason?.coding?[0].display, "Plan Limit Reached")
		XCTAssertEqual(inst.item?[0].adjudication?[3].reason?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adjudication-reason")
		XCTAssertEqual(inst.item?[0].itemSequence, 1)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payeeType?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payeeType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payeetype")
		XCTAssertEqual(inst.payment?.amount?.currency, "USD")
		XCTAssertEqual(inst.payment?.amount?.value, "100.47")
		XCTAssertEqual(inst.payment?.date?.description, "2014-08-31")
		XCTAssertEqual(inst.payment?.identifier?.system?.absoluteString, "http://www.BenefitsInc.com/fhir/paymentidentifier")
		XCTAssertEqual(inst.payment?.identifier?.value, "201408-2-1569478")
		XCTAssertEqual(inst.payment?.type?.coding?[0].code, "complete")
		XCTAssertEqual(inst.payment?.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-paymenttype")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/15476332402")
		XCTAssertEqual(inst.requestor?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.subType?.coding?[0].code, "emergency")
		XCTAssertEqual(inst.subType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-claimsubtype")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ClaimResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "135.57")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "90.47")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
	
	func testClaimResponse4() {
		do {
			let instance = try runClaimResponse4()
			try runClaimResponse4(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse4(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example-vision-3tier.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim settled as per contract.")
		XCTAssertEqual(inst.id, "R3502")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://thebenefitcompany.com/claimresponse")
		XCTAssertEqual(inst.identifier?[0].value, "CR6532875367")
		XCTAssertEqual(inst.insurer?.reference, "Organization/2")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[0].amount?.value, "235.4")
		XCTAssertEqual(inst.item?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[1].amount?.value, "20.0")
		XCTAssertEqual(inst.item?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.item?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].adjudication?[2].value, "80.0")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].adjudication?[3].amount?.value, "172.32")
		XCTAssertEqual(inst.item?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[0].amount?.value, "100.0")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[1].amount?.value, "20.0")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[1].category?.coding?[0].code, "copay")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[2].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[2].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[3].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[3].amount?.value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[0].adjudication?[3].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[0].detailSequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[0].noteNumber?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[0].amount?.value, "110.0")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[2].amount?.value, "88.0")
		XCTAssertEqual(inst.item?[0].detail?[1].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[1].detailSequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[1].noteNumber?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[0].amount?.value, "60.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[2].amount?.value, "48.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].noteNumber?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[0].subDetailSequence, 1)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[0].amount?.value, "30.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[2].amount?.value, "24.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[1].subDetailSequence, 2)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[0].amount?.value, "10.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[2].amount?.value, "8.0")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].noteNumber?[0], 1)
		XCTAssertEqual(inst.item?[0].detail?[1].subDetail?[2].subDetailSequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[0].amount?.value, "200.0")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[0].category?.coding?[0].code, "eligible")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[1].category?.coding?[0].code, "eligpercent")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[1].value, "80.0")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[2].amount?.currency, "USD")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[2].amount?.value, "14.0")
		XCTAssertEqual(inst.item?[0].detail?[2].adjudication?[2].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.item?[0].detail?[2].detailSequence, 3)
		XCTAssertEqual(inst.item?[0].detail?[2].noteNumber?[0], 1)
		XCTAssertEqual(inst.item?[0].itemSequence, 1)
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "complete")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.payeeType?.coding?[0].code, "provider")
		XCTAssertEqual(inst.payeeType?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payeetype")
		XCTAssertEqual(inst.payment?.adjustment?.currency, "USD")
		XCTAssertEqual(inst.payment?.adjustment?.value, "75.0")
		XCTAssertEqual(inst.payment?.adjustmentReason?.coding?[0].code, "a002")
		XCTAssertEqual(inst.payment?.adjustmentReason?.coding?[0].display, "Prior Overpayment")
		XCTAssertEqual(inst.payment?.adjustmentReason?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/payment-adjustment-reason")
		XCTAssertEqual(inst.payment?.amount?.currency, "USD")
		XCTAssertEqual(inst.payment?.amount?.value, "107.0")
		XCTAssertEqual(inst.payment?.date?.description, "2014-08-16")
		XCTAssertEqual(inst.payment?.identifier?.system?.absoluteString, "http://thebenefitcompany.com/paymentidentifier")
		XCTAssertEqual(inst.payment?.identifier?.value, "201416-123456")
		XCTAssertEqual(inst.payment?.type?.coding?[0].code, "complete")
		XCTAssertEqual(inst.payment?.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/ex-paymenttype")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 1)
		XCTAssertEqual(inst.processNote?[0].text, "After hours surcharge declined")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "display")!)
		XCTAssertEqual(inst.request?.identifier?.system?.absoluteString, "http://happysight.com/claim")
		XCTAssertEqual(inst.request?.identifier?.value, "6612346")
		XCTAssertEqual(inst.requestor?.reference, "Organization/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ClaimResponse</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?[0].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[0].amount?.value, "235.4")
		XCTAssertEqual(inst.total?[0].category?.coding?[0].code, "submitted")
		XCTAssertEqual(inst.total?[1].amount?.currency, "USD")
		XCTAssertEqual(inst.total?[1].amount?.value, "182.0")
		XCTAssertEqual(inst.total?[1].category?.coding?[0].code, "benefit")
		XCTAssertEqual(inst.type?.coding?[0].code, "vision")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
	
	func testClaimResponse5() {
		do {
			let instance = try runClaimResponse5()
			try runClaimResponse5(instance.asJSON())
		}
		catch let error {
			XCTAssertTrue(false, "Must instantiate and test ClaimResponse successfully, but threw:\n---\n\(error)\n---")
		}
	}
	
	@discardableResult
	func runClaimResponse5(_ json: FHIRJSON? = nil) throws -> SwiftFHIRClaimResponse {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "claimresponse-example-2.json")
		
		XCTAssertEqual(inst.communicationRequest?[0].reference, "CommunicationRequest/fm-solicit")
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.disposition, "Claim could not be processed")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].code, "a002")
		XCTAssertEqual(inst.error?[0].code?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/adjudication-error")
		XCTAssertEqual(inst.error?[0].detailSequence, 2)
		XCTAssertEqual(inst.error?[0].itemSequence, 3)
		XCTAssertEqual(inst.formCode?.coding?[0].code, "2")
		XCTAssertEqual(inst.formCode?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/forms-codes")
		XCTAssertEqual(inst.id, "R3501")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/remittance")
		XCTAssertEqual(inst.identifier?[0].value, "R3501")
		XCTAssertEqual(inst.insurer?.identifier?.system?.absoluteString, "http://www.jurisdiction.org/insurers")
		XCTAssertEqual(inst.insurer?.identifier?.value, "555123")
		XCTAssertEqual(inst.meta?.tag?[0].code, "HTEST")
		XCTAssertEqual(inst.meta?.tag?[0].display, "test health data")
		XCTAssertEqual(inst.meta?.tag?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/v3-ActReason")
		XCTAssertEqual(inst.outcome, ClaimProcessingCodes(rawValue: "error")!)
		XCTAssertEqual(inst.patient?.reference, "Patient/1")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].code, "en-CA")
		XCTAssertEqual(inst.processNote?[0].language?.coding?[0].system?.absoluteString, "urn:ietf:bcp:47")
		XCTAssertEqual(inst.processNote?[0].number, 1)
		XCTAssertEqual(inst.processNote?[0].text, "Invalid claim")
		XCTAssertEqual(inst.processNote?[0].type, NoteType(rawValue: "display")!)
		XCTAssertEqual(inst.request?.reference, "Claim/100156")
		XCTAssertEqual(inst.requestor?.reference, "Practitioner/1")
		XCTAssertEqual(inst.status, FinancialResourceStatusCodes(rawValue: "active")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the ClaimResponse that demonstrates returning errors</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.type?.coding?[0].code, "oral")
		XCTAssertEqual(inst.type?.coding?[0].system?.absoluteString, "http://terminology.hl7.org/CodeSystem/claim-type")
		XCTAssertEqual(inst.use, Use(rawValue: "claim")!)
		
		return inst
	}
}