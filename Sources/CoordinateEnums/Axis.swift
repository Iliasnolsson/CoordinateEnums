//
//  Axis.swift
//  Final Animation
//
//  Created by Ilias Nikolaidis Olsson on 2021-06-23.
//

import Foundation

public enum Axis: String, Codable {
    case horizontal = "h"
    case vertical = "v"
}

public extension Axis {
    
    var opposite: Axis {return self == .horizontal ? .vertical : .horizontal}
    
    static var all: [Axis] = [.horizontal, .vertical]
    
}

public extension CGPoint {
    
    func float(onAxis axis: Axis) -> CGFloat {
        return axis == .horizontal ? x : y
    }
    
    mutating func set(_ value: CGFloat, onAxis axis: Axis)  {
        if axis == .vertical {
            y = value
        } else {
            x = value
        }
    }
    
}
