//
//  SecondViewController.swift
//  DataPassingUIKitToSwiftUI
//
//  Created by Satish Babu on 21/02/24.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - ViewController Outlets
    @IBOutlet weak var swiftUIDataLabel: UILabel!
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        swiftUIDataLabel.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
