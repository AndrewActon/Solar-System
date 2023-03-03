//
//  PlanetController.swift
//  Solar System
//
//  Created by Andrew Acton on 10/27/22.
//

import Foundation


struct PlanetController {

    static let shared = PlanetController()
    
    func favoritePlanet(planet: Planet){
        planet.favorite = !planet.favorite
    }

    let planets: [Planet] = [
        Planet(name: "Mercury", planetDescription: "Roman god of speed", imageName: "mercury", orderNumber: PlanetOrder.mercury.rawValue, dayLengthInDays: 59, yearLengthInDays: 88, radiusInMiles: 1516, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.4, favorite: false),

        Planet(name: "Venus", planetDescription: "Roman goddess of love", imageName: "venus", orderNumber: PlanetOrder.venus.rawValue, dayLengthInDays: 243, yearLengthInDays: 225, radiusInMiles: 7520, moonCount: 0, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 0.7, favorite: false),

        Planet(name: "Earth", planetDescription: "The ground", imageName: "earth", orderNumber: PlanetOrder.earth.rawValue, dayLengthInDays: 1, yearLengthInDays: 365, radiusInMiles: 3959, moonCount: 1, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1, favorite: false),

        Planet(name: "Mars", planetDescription: "Roman god of war", imageName: "mars", orderNumber: PlanetOrder.mars.rawValue, dayLengthInDays: 1.025, yearLengthInDays: 687, radiusInMiles: 2106, moonCount: 2, ringCount: 0, planetType: PlanetType.terrestrial.rawValue, distanceFromSun: 1.5, favorite: false),

        Planet(name: "Jupiter", planetDescription: "King of the Roman gods", imageName: "jupiter", orderNumber: PlanetOrder.jupiter.rawValue, dayLengthInDays: 0.416, yearLengthInDays: 4333, radiusInMiles: 43440.7, moonCount: 79, ringCount: 4, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 5.2, favorite: false),

        Planet(name: "Saturn", planetDescription: "Father of Jupiter", imageName: "saturn", orderNumber: PlanetOrder.saturn.rawValue, dayLengthInDays: 0.445, yearLengthInDays: 10759, radiusInMiles: 36183.7, moonCount: 62, ringCount: 8, planetType: PlanetType.gasGiant.rawValue, distanceFromSun: 5.2, favorite: false),

        Planet(name: "Uranus", planetDescription: "Greek god of the sky", imageName: "uranus", orderNumber: PlanetOrder.uranus.rawValue, dayLengthInDays: 0.70, yearLengthInDays: 30687, radiusInMiles: 15759.2, moonCount: 27, ringCount: 13, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 19.8, favorite: false),

        Planet(name: "Neptune", planetDescription: "Roman god of the sea", imageName: "neptune", orderNumber: PlanetOrder.neptune.rawValue, dayLengthInDays: 0.66, yearLengthInDays: 60190, radiusInMiles: 15299.4, moonCount: 14, ringCount: 5, planetType: PlanetType.iceGiant.rawValue, distanceFromSun: 30.1, favorite: false)
]
}

