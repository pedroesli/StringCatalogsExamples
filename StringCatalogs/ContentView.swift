//
//  ContentView.swift
//  StringCatalogs
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/03/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentView = 0
    private let totalViews = 3
    
    var body: some View {
        ZStack {
            switch currentView {
            case 0:
                Example1()
            case 1:
                Example2()
            default:
                Example3()
            }
            VStack {
                Button {
                    currentView += 1
                    if currentView == 3 {
                        currentView = 0
                    }
                } label: {
                    Image(systemName: "arrowshape.turn.up.right.fill")
                }
                .buttonStyle(.borderedProminent)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
