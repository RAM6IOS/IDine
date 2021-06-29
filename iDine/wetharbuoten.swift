//
//  wetharbuoten.swift
//  iDine
//
//  Created by MAC on 11/3/2021.
//

//import Foundation
import SwiftUI

struct Temprtshars: View {
    
    var imagename:String
    var temprtshar : Int
    
    var body: some View {
        VStack(spacing:15){
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.font(.system(size: 150))
                .frame(width: 120, height: 120)
                .padding()
            
            Text("\(temprtshar)")
                .font(.system(size: 70 , weight: .medium))
                .foregroundColor(Color.white)
            
            
        }
        .padding(.bottom,50)
    }
}
