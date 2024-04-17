//
//  GraphBarMark.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import SwiftUI
import Charts

struct GraphBarMark: View {
    @State private var  selection = 0
    var marks:[String] = ["Bar","Line", "Point", "Area", "Rect" ]
    private var listCities:ListData = ListData()
    var body: some View {
        VStack {
            Picker(selection: $selection) {
                ForEach(0..<5) { index in
                    Text(marks[index]).tag(index)
                }
            } label: {
                Text("Choix du graphique")
            }
            .pickerStyle(.segmented)
            .padding(.bottom)
            
            Chart {
                ForEach(listCities.listOfCities(), id: \.id) { myCity in
                    switch selection {
                    case 1: LineMark(x:.value("Villes", myCity.city), y:.value("Heures", myCity.hour))
                            .foregroundStyle(.yellow)
                            .opacity(0.6)
                            .cornerRadius(10)
                            .annotation(position:.overlay) {
                                Text(String(myCity.hour))
                                    .font(.caption)
                                    .foregroundStyle(.red)
                            }
                        
                    case 2: PointMark(x:.value("Villes", myCity.city), y:.value("Heures", myCity.hour))
                            .foregroundStyle(.yellow)
                            .opacity(0.6)
                            .cornerRadius(10)
                            .annotation(position:.overlay) {
                                Text(String(myCity.hour))
                                    .font(.caption)
                                    .foregroundStyle(.red)
                            }
                        
                    case 3: AreaMark(x:.value("Villes", myCity.city), y:.value("Heures", myCity.hour))
                            .foregroundStyle(.yellow)
                            .opacity(0.6)
                            .cornerRadius(10)
                            .annotation(position:.overlay) {
                                Text(String(myCity.hour))
                                    .font(.caption)
                                    .foregroundStyle(.red)
                            }
                        
                    case 4: RectangleMark(x:.value("Villes", myCity.city), y:.value("Heures", myCity.hour))
                            .foregroundStyle(.yellow)
                            .opacity(0.6)
                            .cornerRadius(10)
                            .annotation(position:.overlay) {
                                Text(String(myCity.hour))
                                    .font(.caption)
                                    .foregroundStyle(.red)
                            }
                        
                    default: BarMark(x:.value("Villes", myCity.city), y:.value("Heures", myCity.hour))
                            .foregroundStyle(.yellow)
                            .opacity(0.6)
                            .cornerRadius(10)
                            .annotation(position:.overlay) {
                                Text(String(myCity.hour))
                                    .font(.caption)
                                    .foregroundStyle(.red)
                            }
                        
                    }
                    
                }
            }
        }
        .frame(height: 250)
        .chartScrollableAxes(.horizontal)
        .chartXVisibleDomain(length: 4)
        .chartPlotStyle { plotContant in
            plotContant
                .background((.blue.gradient.opacity(0.2)))
                .border(.green,width: 2)
        }
    }
}


#Preview {
    GraphBarMark()
}
