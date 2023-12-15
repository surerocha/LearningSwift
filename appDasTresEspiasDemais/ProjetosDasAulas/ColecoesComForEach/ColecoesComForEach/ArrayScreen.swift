//
//  ArrayScreen.swift
//  ColecoesComForEach
//
//  Created by User on 19/09/23.
//

import SwiftUI

struct ErroCenário{ //cada elemento do tipo cenário vai ser obrigado a ter um emoji/imagem e uma mensagem
    let emoji: String
    let errorMensage: String
    let id = UUID() //id sendo contruído para ser único
}

struct ArrayScreen: View {//comand control space --> emojis
    let erroCenários: [ErroCenário] = [
        
        ErroCenário(emoji: "🙈", errorMensage: "Error: Variável não iniciada não foi inicializada. Tente iniciar com um valor"),
        ErroCenário(emoji: "😗", errorMensage: "Error: O índice está fora dos limites da matriz. Provavelmente você contou até 11 em vez de 10"),
        ErroCenário(emoji: "🕹", errorMensage: "Chaves não correspondents. lembre-se, abra chaves '{' precisater um fecha chaves '}'"),
        ErroCenário(emoji: "😴", errorMensage: "Esqueceu de fechar as aspas. Lembre-se de fechar para não ficar confuso"),
        ErroCenário(emoji: "🚫", errorMensage: "Erro: Divisão por zero. Não é possível dividir nada por zro, msmo na programação"),
        ErroCenário(emoji: "🌀", errorMensage: "Se você está preo em um loop que nunca termina, seus personagens virtuais podem ficar tontos"),
        
    ]
    var body: some View {
        ScrollView {	
            VStack (spacing: 10){//comand e mouse em cima
                ForEach(erroCenários, id: \.id)
                { erroCenario in
                    VStack (spacing: 2) {
                        HStack {
                            Text(erroCenario.emoji)
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .background(Color.purple)
                                .clipShape(Circle())
                            Text(erroCenario.errorMensage)
                                .font(.headline)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                }
                
                .frame(maxWidth: .infinity, minHeight: 150)
                .background(Color.blue)
                .cornerRadius(15)
                .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 0, y: 2)
                .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 16))
            }
        }
    }
    
    
    struct ArrayScreen_Previews: PreviewProvider {
        static var previews: some View {
            ArrayScreen()
        }
    }
}

