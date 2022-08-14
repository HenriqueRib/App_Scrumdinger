//
//  Gerenciamento_ReunioesApp.swift
//  Gerenciamento_Reunioes
//
//  Created by Henrique Ribeiro on 11/08/22.
//

import SwiftUI

@main
struct Gerenciamento_ReunioesApp: App {
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                ScrumsView(scrums: DailyScrum.sampleData)
                ScrumsView(scrums: $scrums)
            }
        }
    }
}
