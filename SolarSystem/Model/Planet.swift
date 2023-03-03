//
//  Planet.swift
//  Solar System
//
//  Created by Andrew Acton on 10/25/22.
//

import Foundation

class Planet {
    let name: String
    let planetDescription: String
    let imageName: String
    let orderNumber: Int
    let dayLengthInDays: Double
    let yearLengthInDays: Int
    let radiusInMiles: Double
    let moonCount: Int
    let ringCount: Int
    let planetType: String
    let distanceFromSun: Double
    var favorite: Bool
    
    init(name: String, planetDescription: String, imageName: String, orderNumber: Int, dayLengthInDays: Double, yearLengthInDays: Int, radiusInMiles: Double, moonCount: Int, ringCount: Int, planetType: String, distanceFromSun: Double, favorite: Bool) {
        self.name = name
        self.planetDescription = planetDescription
        self.imageName = imageName
        self.orderNumber = orderNumber
        self.dayLengthInDays = dayLengthInDays
        self.yearLengthInDays = yearLengthInDays
        self.radiusInMiles = radiusInMiles
        self.moonCount = moonCount
        self.ringCount = ringCount
        self.planetType = planetType
        self.distanceFromSun = distanceFromSun
        self.favorite = favorite
    }
}

enum PlanetType: String {
    case iceGiant = "Ice Giant"
    case gasGiant = "Gas Giant"
    case terrestrial = "Terrestrial"
}

enum PlanetOrder: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}


