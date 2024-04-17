//
//  ListData.swift
//  sunlight
//
//  Created by Philippe MICHEL on 16/04/2024.
//

import Foundation
class ListData {
    func listOfCities()  -> [DataModel] {
        return [DataModel(city: "Ajaccio", hour: 2811),
                DataModel(city: "Auxerre", hour: 1842),
                DataModel(city: "Bastia", hour: 2719),
                DataModel(city: "Besançon", hour: 1897),
                DataModel(city: "Biarritz", hour: 1921),
                DataModel(city: "Bordeaux", hour: 2076),
                DataModel(city: "Bourges", hour: 1837),
                DataModel(city: "Brest", hour: 1757),
                DataModel(city: "Cannes", hour: 2740),
                DataModel(city: "Cherbourg", hour: 1665)]
    }
}

