//
//  Test1.swift
//  AppSure
//
//  Created by User on 17/11/23.
//

import SwiftUI

struct Test1: View {
    var body: some View {
        
        VStack {
            Image("Icone1")
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
            
            
            Text("Apple")
        }
        
    }
}

struct Test1_Previews: PreviewProvider {
    static var previews: some View {
        Test1()
    }
}
