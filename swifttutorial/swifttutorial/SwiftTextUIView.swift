//
//  SwiftTextUIView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftTextUIView: View {
    var body: some View {
        VStack{
            Text("Muhammed Essa")
                .fontWeight(.bold)
                .font(.largeTitle)
                .foregroundColor(.purple)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
                .fontWeight(.bold)
                .font(.body)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .lineLimit(3)
                .truncationMode(.head)
                .lineSpacing(10)
                .padding()
               // .rotationEffect(.degrees(45))
            
            
            Text("Muhammed Essa")
                .fontWeight(.bold)
                .font(.system(size: 33,weight: .light,design: .serif))
                .italic()
                .foregroundColor(.secondary)
                .frame(width: 300,alignment: .leading)
                .multilineTextAlignment(.center)
            
                 
        }
    }
}

struct SwiftTextUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftTextUIView()
    }
}
