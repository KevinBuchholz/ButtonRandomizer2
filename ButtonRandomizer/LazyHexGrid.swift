//
//  LazyHexGrid.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/2/23.
//

import SwiftUI
import HexGrid

struct HexCell: Identifiable, OffsetCoordinateProviding {
    var id: Int { offsetCoordinate.hashValue }
    var offsetCoordinate: OffsetCoordinate
    var colorName: String
}

struct LazyHexGrid: View {
    
    let cells: [HexCell] = [
        .init(offsetCoordinate: .init(row: 0, col: 0), colorName: "color1"),
        .init(offsetCoordinate: .init(row: 0, col: 1), colorName: "color2"),
        .init(offsetCoordinate: .init(row: -1, col: 1), colorName: "color3"),
        .init(offsetCoordinate: .init(row: 1, col: 0), colorName: "color4"),
        .init(offsetCoordinate: .init(row: 1, col: 1), colorName: "color5")
    ]
    
    var body: some View {
        
        HexGrid(cells)
        { cell in
            Color(cell.colorName)
        }
        .padding()
    }
}

struct LazyHexGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyHexGrid()
    }
}
