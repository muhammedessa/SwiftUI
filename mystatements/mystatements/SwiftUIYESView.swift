//
//  SwiftUIYESView.swift
//  mystatements
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI


class UserInfo: ObservableObject{
    @Published var username = "Muhammed"
}

struct SwiftUIYESView: View {
    
    @EnvironmentObject var userInfo:UserInfo
    
    var body: some View {
        VStack{
            Text("Hello , \(userInfo.username)").padding()
            
            Button(action: {
                userInfo.username = "Osama"
            }, label: {
                Text("Click to change ")
            })
        }
        
    }
}

struct SwiftUIYESView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIYESView().environmentObject(UserInfo())
    }
}
