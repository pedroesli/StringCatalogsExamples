//
//  Example3.swift
//  StringCatalogs
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/03/24.
//

import SwiftUI

struct Example3: View {
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text(Localized.Example3.Text.message(to: name))
            TextField(Localized.Example3.TextField.name, text: $name)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

#Preview {
    Example3()
}
