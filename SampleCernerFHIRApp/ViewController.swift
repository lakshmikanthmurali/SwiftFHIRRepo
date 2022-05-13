//
//  ViewController.swift
//  SampleCernerFHIRApp
//
//  Created by Lakshmikanth on 12/05/22.
//

import UIKit
import SMART


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    //https://github.com/lakshmikanthmurali/SwiftFHIRRepo.git

    @IBAction func LaunchCernerAction(_ sender: Any) {
        
        // create the client
//        let smart = Client(
//            baseURL: URL(string: "https://lakshmikanth.github.io/smart-on-fhir-tutorial/example-smart-app/launch-patient.html?iss=https://fhir-myrecord.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d")!,
//            settings: [
//                "client_id": "cb58a5d7-0e03-4591-bdc4-1cf16def3364",       // if you have one
//                "redirect": "https://www.mindteck.com/",    // must be registered
//            ]
//        )
        let smart = Client(
            baseURL: URL(string: "https://github.com/lakshmikanthmurali/SwiftFHIRRepo.git")!,
            settings: [
                "client_id": "cb58a5d7-0e03-4591-bdc4-1cf16def3364",       // if you have one
                "redirect": "https://www.mindteck.com/",    // must be registered
            ]
        )
        
        // authorize, then search for prescriptions
        smart.authorize() { patient, error in
            if nil != error || nil == patient {
                // report error
            }
            else {
                print("authorisation success")
                
//                MedicationOrder.search(["patient": patient.id])
//                .perform(smart.server) { bundle, error in
//                    if nil != error {
//                        // report error
//                    }
//                    else {
//                        let meds = bundle?.entry?
//                            .filter() { return $0.resource is MedicationOrder }
//                            .map() { return $0.resource as! MedicationOrder }
                        
                        // now `meds` holds all known patient prescriptions
  //                  }
 //               }
            }
        }
    }
    
}

