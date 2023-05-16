//
//  SwiftUIImageView.swift
//  swifttutorial
//
//  Created by Muhammed Essa on 12/05/2023.
//

import SwiftUI

struct SwiftUIImageView: View {
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1420593248178-d88870618ca0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJhbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60"),scale: 3).clipShape(Circle())
        }
             
        
             
            
    }
}

struct SwiftUIImageView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageView()
    }
}
