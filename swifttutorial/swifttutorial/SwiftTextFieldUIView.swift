//
//  SwiftTextFieldUIView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftTextFieldUIView: View {
    
 @State  private  var username: String = ""
@State  private  var isEnabled = false
    @State  private  var isEnabled2 = false
    
    var body: some View {
        VStack{
            
            Toggle("WiFi", isOn: $isEnabled).padding()
            
            Toggle(isOn: $isEnabled2){
                HStack{
                    Text("Airplane" )
                        .font(.title)
                    Image(systemName: isEnabled2 ? "airplane" : "heart")
                }
            }.padding()
            
            TextField("Username", text: $username)
                .padding()
            
            
            Text("Username:  \(username)").padding()
            
            Button("Press"){
                username = "Button Clicked"
            }
//            if !username.isEmpty{
//                Text("Username:  \(username)")
//            }else{
//                Text("Please type something")
//            }
            
            
          if isEnabled2{
                Text("Trun On")
                        }else{
             Text("Trun off")
                        }
            
        }
        
    }
}

struct SwiftTextFieldUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftTextFieldUIView()
    }
}
