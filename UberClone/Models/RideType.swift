//
//  RideType.swift
//  UberClone
//
//  Created by Abhilekh Borah on 07/06/23.
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable{
    case uberX
    case uberblack
    case uberXL
    
    var id: Int { return rawValue }
    var description: String{
        switch self{
        case .uberX: return "UberGo"
        case .uberblack: return "UberBlack"
        case .uberXL: return "UberXL"
        }
    }
    
    var imageName: String{
        switch self{
        case .uberX: return "uber-x"
        case .uberblack: return "uber-black"
        case .uberXL: return "uber-x"
        }
    }
    
    var baseFare: Double{
        switch self{
        case .uberX: return 5
        case .uberblack: return 20
        case .uberXL: return 10
        }
    }
    func computePrice(for distanceInMeters: Double) -> Double{
        let distanceInMiles = distanceInMeters / 1600
        
        switch self{
        case .uberX: return distanceInMiles * 0.5 * 82.49 + baseFare
        case .uberblack: return distanceInMiles * 0.9 * 82.49 + baseFare
        case .uberXL: return distanceInMiles * 0.75 * 82.49 + baseFare
        }
        
    
    }
    
}
