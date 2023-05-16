//
//  SwiftUIFView.swift
//  mystatements
//
//  Created by Muhammed Essa on 14/05/2023.
//

import SwiftUI

struct SwiftUIFView: View {
    
    enum FoucsedFields {
    case username, password
    }
@FocusState private var foucsedFields:FoucsedFields?
    @State private var username = "username"
    @State private var password = "password"
    
    var body: some View {
        
        VStack{
            TextField("Enter username", text: $username).focused($foucsedFields,equals: .username).padding()
            
            SecureField("Enter username", text: $password).focused($foucsedFields,equals: .password).padding()
        }.onSubmit {
            if foucsedFields == .username{
                foucsedFields = .password
            }else{
                foucsedFields = nil
            }
        }
      
    }
}

struct SwiftUIFView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFView()
    }
}
