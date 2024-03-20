//
//  Example2.swift
//  StringCatalogs
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/03/24.
//

import SwiftUI

struct Example2: View {
    
    @State private var birdCount = 0
    @State private var backyardCount = 0
    
    var body: some View {
        VStack {
            Text(Localized.Example2.Text.birdInBackyard(birdCount, backyardCount))
                .padding(.bottom, 60)
            Text(Localized.Example2.Text.bird)
            HStack {
                Button {
                    if birdCount > 0 {
                        birdCount -= 1
                    }
                } label: {
                    Text(Localized.Example2.Button.decrease)
                }
                Button {
                    birdCount += 1
                } label: {
                    Text(Localized.Example2.Button.increase)
                }
            }
            .buttonStyle(.borderedProminent)
            .padding(.bottom)
            Text(Localized.Example2.Text.backyard)
            HStack {
                Button {
                    if backyardCount > 0 {
                        backyardCount -= 1
                    }
                } label: {
                    Text(Localized.Example2.Button.decrease)
                }
                Button {
                    backyardCount += 1
                } label: {
                    Text(Localized.Example2.Button.increase)
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    Example2()
}
