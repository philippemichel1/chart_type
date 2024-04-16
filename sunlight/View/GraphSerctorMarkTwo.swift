//
//  GraphSerctorTwoo.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import SwiftUI
import Charts

struct GraphSectorTwo: View {
    private var listCities:ListData = ListData()
    var body: some View {
        Chart {
            ForEach(listCities.listOfCities(), id: \.id) { myCity in
                SectorMark(angle: .value("Heures", myCity.hour),
                           innerRadius: 50,
                           angularInset: 2)
                    .foregroundStyle(by: .value("Villes", myCity.city))
                    .annotation(position:.overlay) {
                        Text(String(myCity.hour))
                            .font(.caption)
                    }
            }
        }.frame(width: 300,height: 300)
    }
}

#Preview {
    GraphSectorTwo()
}
