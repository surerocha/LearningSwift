//
//  ContentView.swift
//  TresEspiasDemais
//
//  Created by User on 12/09/23.
//Z-em cima do outro // H-horizontal // V-vertical
// comand shift a --> para deixar dark ou nao
//.border(.white) - deixar borda
//learngradeend
//linearGradient(colors: <#T##[SwiftUI.Color]#>, startPoint: <#T##SwiftUI.UnitPoint#>, endPoint: <#T##SwiftUI.UnitPoint#>)
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            let gradient = Gradient(colors: [.red, .black])
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)

           
            VStack{
                
                ContentImages()
                
                Text("Vou chutar a bunda do vilão que fez isso! - Clover, 2007.")
                    .font(.system(size:25))
                    .foregroundColor(.white)
                    .bold()
                
                Spacer()
                    .frame(height: 50)
                
                
                Text("Prontas para mais uma missão na WOOHP???")
                    .font(.system(size:30))
                    .foregroundColor(.white)
                    .bold()
                
                Spacer()
                    .frame(height: 15)
                Button{
                    
                } label: {
                    Text("Clique aqui para a próxima missão")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color.red)
                        .cornerRadius(50)
                }
            }
            
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
