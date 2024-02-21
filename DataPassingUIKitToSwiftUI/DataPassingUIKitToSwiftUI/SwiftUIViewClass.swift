//
//  SwiftUIViewClass.swift
//  DataPassingUIKitToSwiftUI
//
//  Created by Satish Babu on 21/02/24.
//

import SwiftUI

struct SwiftUIViewClass: View {
    @EnvironmentObject var employeeDetails: Employee
    var company: String
    var action: (String) -> ()?
    var body: some View {
        VStack(spacing: 10) {
            Text("Swift UI Class")
            Text(employeeDetails.name)
            Text(company)
            NavigationLink(destination: ViewControllerRepresetable(name: employeeDetails.name)) {
                Text("Navigate to UIKit class")
            }
            Button {
                action("back from UIKit")
            } label: {
                Text("Back to UIKiy")
            }
        }
    }
}

struct ViewControllerRepresetable: UIViewControllerRepresentable {
    var name: String
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.name = name
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
