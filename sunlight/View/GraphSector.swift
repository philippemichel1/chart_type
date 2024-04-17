//
//  GraphSecteurMarkOne.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import SwiftUI
import Charts

struct GraphSector: View {
    @State private var  selection = 0
    var sectors:[String] = ["Exemple 1", "Exemple 2", "Exemple 3"]
    private var listCities:ListData = ListData()
    
    var body: some View {
        VStack{
            Picker(selection: $selection) {
                ForEach(0..<3) { index in
                    Text(sectors[index]).tag(index)
                }
            } label: {
                Text("Choix du graphique")
            }
            .pickerStyle(.segmented)
            .padding(.bottom)
            
            Chart {
                ForEach(listCities.listOfCities(), id: \.id) { myCity in
                    switch selection {
                        // exemple 1
                    case 1:SectorMark(angle: .value("Heures", myCity.hour),
                                      innerRadius: 50,
                                      angularInset: 2)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        Text(String(myCity.hour))
                            .font(.caption)
                    }
                        // exemple 2
                    case 2: SectorMark(angle: .value("Heures", myCity.hour),
                                       innerRadius: 40,
                                       outerRadius: myCity.hour == 2740 ? 100 : 300,                           angularInset: 1.0)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        
                        Text(String(myCity.hour))
                            .font(.caption)
                        
                    }
                        
                        // exemple 3
                    default:SectorMark(angle: .value("Heures", myCity.hour),
                                       angularInset: 2)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        Text(String(myCity.hour))
                            .font(.caption)
                    }
                    }
                }
                
            }.frame(width: 300,height: 300)
                .chartLegend(position: .trailing)
        }
    }
}

#Preview {
    GraphSector()
}
