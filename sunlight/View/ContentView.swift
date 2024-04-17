//
//  ContentView.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
            VStack {
                Text("Durée d’ensoleillement annuel en heures")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                ScrollView {
                        GraphBar()
                            .padding(10)
                        GraphSector()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
