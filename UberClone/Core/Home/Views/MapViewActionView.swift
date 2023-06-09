//
//  MapViewActionView.swift
//  UberClone
//
//  Created by Abhilekh Borah on 05/06/23.
//

import SwiftUI

struct MapViewActionView: View {
    @Binding var mapState: MapViewState
    @EnvironmentObject var viewModel: LocationSearchViewModel
    
    var body: some View {
        Button {
            withAnimation(.spring()){
                actionForState(mapState)
            }
        } label: {
            Image(systemName: imageNameForState(mapState)).font(.title2).foregroundColor(.black).padding().background(.white).clipShape(Circle()).shadow(color: .black, radius: 6)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        

    }
    
    func actionForState(_ state: MapViewState){
        switch state{
        case .noInput:
            print("DEBUG: No input")
        case .searchingForLocation:
            mapState = .noInput
        case .locationSelected, .polylineAdded:
            mapState = .noInput
            viewModel.selectedUberLocation = nil
        }
    }
    
    func imageNameForState(_ state: MapViewState) -> String{
        switch state{
        case .noInput:
            return "line.3.horizontal"
        case .searchingForLocation, .locationSelected, .polylineAdded:
            return "arrow.left"
        default:
            return "line.3.horizontal"
        }
    }
}

struct MapViewActionView_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionView(mapState: .constant(.noInput))
    }
}
