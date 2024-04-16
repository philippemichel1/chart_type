//
//  Data.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import Foundation
import SwiftUI
 
struct DataModel:Identifiable {
    var id:UUID = UUID()
    var city:String
    var hour:Int
}
