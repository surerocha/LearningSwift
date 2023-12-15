//
//  ContentImages.swift
//  TresEspiasDemais
//
//  Created by User on 15/09/23.
//

import Foundation
import SwiftUI

struct ContentImages: View {
    var body: some View {
        VStack{
            Image("img.logo")
                .resizable()
                .frame(width:200, height: 140)
                .cornerRadius(10)
            
            Spacer()
                .frame(height: 25)
            
            Image("img.tresespiasdemais")
                .resizable()
                .frame(width:200, height: 250)
                .cornerRadius(10)
        }
        }
    
    }
struct ContentImagesPreviews: PreviewProvider {
    static var previews: some View {
        ContentImages()
    }
}

