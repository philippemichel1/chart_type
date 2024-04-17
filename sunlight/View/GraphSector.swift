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
                        // exemple 2
                    case 1:SectorMark(angle: .value("Heures", myCity.hour),
                                      // rayon interieur
                                      innerRadius: 50,
                                      // espacement rntre les secteur
                                      angularInset: 2)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        Text(String(myCity.hour))
                            .font(.caption)
                    }
                        // exemple 3
                    case 2: SectorMark(angle: .value("Heures", myCity.hour),
                                       // rayon interieur
                                       innerRadius: 40,
                                       // taille du sercteur
                                       outerRadius: myCity.hour == 1665 ? 100 : 300,
                                       // espacement rntre les secteur
                                       angularInset: 2.0)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        
                        Text(String(myCity.hour))
                            .font(.caption)
                        
                    }
                        
                        // exemple 1
                    default:SectorMark(angle: .value("Heures", myCity.hour),
                                       angularInset: 1)
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
