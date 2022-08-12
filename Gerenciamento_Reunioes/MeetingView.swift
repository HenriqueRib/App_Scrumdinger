//
//  ContentView.swift
//  Gerenciamento_Reunioes
//
//  Created by Henrique Ribeiro on 11/08/22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5 , total: 15);
            HStack{
                VStack(alignment: .leading){
                    Text("Segundos corridos").font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("Segundos faltantes").font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Tempo faaltante")
            .accessibilityValue("10 minutos")
            Circle().strokeBorder(lineWidth:24)
            HStack{
                Text("Falando 1 de 3")
            }
            Spacer()
            Button (action:{}){
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Proxímo a falar")
        }.padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
