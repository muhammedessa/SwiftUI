//
//  SwiftUILogoView.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import SwiftUI

struct SwiftUILogoView: View {
    
    @State var isActive: Bool = false
    
    
    var body: some View {
        ZStack{
            if self.isActive {
                HomeView()
            }else{
                Image("bird-logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 300,height: 300)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

struct SwiftUILogoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILogoView()
    }
}
