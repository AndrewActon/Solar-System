//
//  DetailViewController.swift
//  SolarSystem
//
//  Created by Andrew Acton on 11/5/22.
//

import UIKit

class DetailViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var planetImage: UIImageView!
    @IBOutlet var planetOrderNumber: UILabel!
    @IBOutlet var planetOrdinalSuffix: UILabel!
    @IBOutlet var planetName: UILabel!
    @IBOutlet var planetNamesake: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var favoriteButton: UIBarButtonItem!
    
    
    var planet: Planet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        updateViews()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailCell", for: indexPath) as? DetailCollectionViewCell else { return UICollectionViewCell() }
        
        cell.cellImage.alpha = 0.5
        cell.cellImage.image = UIImage(systemName: "globe")
        
        guard let planet = planet else { return UICollectionViewCell() }
        
        switch indexPath.item {
        case 0:
            cell.cellDescription.text = "Day Length"
            cell.cellData.text = "\(planet.dayLengthInDays) days"
        case 1:
            cell.cellDescription.text = "Year Length"
            cell.cellData.text = "\(planet.yearLengthInDays) days"
        case 2:
            cell.cellDescription.text = "Radius"
            cell.cellData.text = "\(planet.radiusInMiles) miles"
        case 3:
            cell.cellDescription.text = "Moon Count"
            cell.cellData.text = "\(planet.moonCount)"
        case 4:
            cell.cellDescription.text = "Ring Count"
            cell.cellData.text = "\(planet.ringCount)"
        case 5:
            cell.cellDescription.text = "Planet Type"
            cell.cellData.text = "\(planet.planetType)"
        case 6:
            cell.cellDescription.text = "Distance from Sun"
            cell.cellData.text = "\(planet.distanceFromSun) AU"
        case 7:
            cell.cellDescription.text = "Galaxy"
            cell.cellData.text = "Milky Way"
        default:
            break
            
        }
        
        return cell
    }
    
    func updateViews() {
        let attributedString = NSMutableAttributedString(string: planetOrdinalSuffix.text ?? "")
        
        attributedString.addAttribute(NSAttributedString.Key.kern, value: CGFloat(1.0), range: NSRange(location: 0, length: attributedString.length))
        
        guard let planet = planet else { return }
        
        planetImage.image = UIImage(named: planet.imageName)
        planetOrderNumber.text = "\(planet.orderNumber)"
        planetOrdinalSuffix.text = ordinalSuffix(order: planet.orderNumber) + " planet"
        planetName.attributedText = attributedString
        planetName.text = planet.name.uppercased()
        planetNamesake.text = planet.planetDescription
        
    }
    
    func ordinalSuffix(order: Int) -> String {
        switch order {
        case 1:
            return "st"
        case 2:
            return "nd"
        case 3:
            return "rd"
        case 4, 5, 6, 7, 8:
            return "th"
        default:
            return ""
        }
    }
    

    @IBAction func favoriteButtonTapped(_ sender: Any) {
        guard let planet = planet else {
            return
        }
        PlanetController.shared.favoritePlanet(planet: planet)
        updatedFavoriteStatus()
    }
    
    func updatedFavoriteStatus(){
        guard let planet = planet else {
            return
        }
        favoriteButton.image = UIImage(systemName: planet.favorite ? "star.circle.fill" : "star.circle")
    }
    
}

