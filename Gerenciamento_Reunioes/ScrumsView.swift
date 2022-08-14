//
//  CardView.swift
//  Gerenciamento_Reunioes
//
//  Created by Henrique Ribeiro on 12/08/22.
//

import SwiftUI

struct ScrumsView: View {
//    let scrums: [DailyScrum]
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                   CardView(scrum: scrum)
               }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("Novo Scrum")
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
        }
    }
}
