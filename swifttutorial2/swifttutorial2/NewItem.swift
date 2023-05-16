//
//  NewItem.swift
//  swifttutorial2
//
//  Created by Muhammed Essa on 13/05/2023.
//

import Foundation

struct NewItem: Decodable, Identifiable{
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

