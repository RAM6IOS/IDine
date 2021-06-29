//
//  Cityname.swift
//  iDine
//
//  Created by MAC on 11/3/2021.
//

import Foundation
import SwiftUI

struct Cityname: View {
    var cityname : String
    var body: some View {
        Text(cityname)
            .font(.system(size: 32, weight: .regular ,design: .default))
            .foregroundColor(.white)
            .background(Color.red)
            .padding()
    }
}
