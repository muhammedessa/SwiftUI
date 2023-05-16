//
//  StepperUIView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct StepperUIView: View {
    
  @State private  var age = 14
    
    var body: some View {
        VStack{
            
            Stepper("Check your age",
            onIncrement: {
                age += 1
            },
            onDecrement: {
                age -= 1
            }
            )
            
            Text("Your age is : \(age)")
        }
        
    }
}

struct StepperUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepperUIView()
    }
}
