//
//  DetailView.swift
//  Gerenciamento_Reunioes
//
//  Created by Henrique Ribeiro on 13/08/22.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum

    @State private var isPresentingEditView = false

    var body: some View {
        List{
            Section(header: Text("Informação da Reunião")){
                NavigationLink(destination: MeetingView()) {
                    Label("Iniciar Reunião", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Duração", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutos")
               }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Tema", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
        .toolbar {
            Button("Editar") {
                isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView {
                DetailEditView()
                    .navigationTitle(scrum.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancelar") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Salvar") {
                                isPresentingEditView = false
                            }
                        }
                    }
            }
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
