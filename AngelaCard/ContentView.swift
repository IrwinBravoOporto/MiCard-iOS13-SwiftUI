//
//  ContentView.swift
//  AngelaCard
//
//  Created by Angela Yu on 06/09/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.14, green: 0.131, blue: 0.30)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack(spacing: 20) {
                    VStack(spacing: 10) {
                        Image("angela")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 130)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 5)
                            )
                        Text("  TikToker ")
                            .font(Font.custom("Pacifico-Regular", size: 37))
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 10, trailing: 0))
                    .background(Color.black)
                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .padding(.vertical, 0)
                    
                    Text("Oferta Laboral")
                        .font(Font.custom("Pacifico-Regular", size: 37).bold())
                        .position(x: 140,y: 20)
                        .foregroundColor(.white)
                    Text("Requisitos referenciales:")
                        .foregroundColor(.white)
                        .font(Font.custom("Pacifico-Regular", size: 25))
                        .position(x: 140,y: -10)
                    VStack(alignment: .leading, spacing: -10) {
                        InfoView(description: "Conciso, claro y creativo al usar tendencias. ")
                        InfoView(description: "Uso de funciones para editar y animar en redes.")
                        InfoView(description: "Se te dará un reto para evaluar tus skills.")
                        InfoView(description: "Manda un mensaje al correo:    codepacha@gmail.com.")
                        InfoView(description: "Acceso a cursos, bonificación económica y más.")
                    }
                    .frame(minWidth: 0, maxWidth: 385)
                    .padding()
                    .position(x: 185,y: 130)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


