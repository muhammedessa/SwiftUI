//
//  SwiftUIttttttttView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI
 


struct SwiftUIttttttttView: View {
      
    @State var isActive: Bool = false
    
    var body: some View {
         
        

        ZStack {
             
               if self.isActive {
                   MainView()
               } else {
              
                   Image("bird-logo")
//                       .resizable()
//                       .scaledToFit()
                       .frame(width: 300, height: 300)
               }
           }
           .onAppear {
               DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                   withAnimation {
                       self.isActive = true
                   }
               }
           }
        
        
    }
}
 
 

struct SwiftUIttttttttView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIttttttttView()
    }
}
