//
//  ViewController.swift
//  DataPassingUIKitToSwiftUI
//
//  Created by Satish Babu on 21/02/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    // MARK: - ViewController Outlets
    @IBOutlet weak var swiftUIDataLabel: UILabel!
    
    var companyName = "Tech-IT"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Button Actions
    @IBAction func navigateToSwiftUIClass(_ sender: Any) {
        let employee = Employee()
        let childView = UIHostingController(rootView: SwiftUIViewClass(company: companyName, action: { [weak self] text in
            // get data from Swift UI and pop the view controler from Swift UI Class
            self?.swiftUIDataLabel.text = text
            self?.navigationController?.popViewController(animated: true)
        }).environmentObject(employee))
        self.navigationController?.pushViewController(childView, animated: true)
    }

}

class Employee: ObservableObject {
    @Published var name = "Satish"
    @Published var gender = "Male"
}
