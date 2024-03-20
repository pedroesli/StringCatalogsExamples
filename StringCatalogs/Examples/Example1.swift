//
//  Example1.swift
//  StringCatalogs
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/03/24.
//

import SwiftUI

struct Example1: View {
    var body: some View {
        VStack(spacing: 20) {
            // Verbatim wont be translated in the string catalogs
            Text(verbatim: "🍔")
                .font(.system(size: 80))
            Text(Localized.Example1.title)
                .font(.largeTitle)
                .fontDesign(.rounded)
                .padding(.bottom, 20)
            Text(Localized.Example1.body)
        }
        .padding()
    }
}

#Preview {
    Example1()
}
