//
//  TrailingIconLabelStyle.swift
//  Gerenciamento_Reunioes
//
//  Created by Henrique Ribeiro on 12/08/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
             configuration.title
             configuration.icon
         }
     }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
