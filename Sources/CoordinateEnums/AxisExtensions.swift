//
//  File.swift
//  
//
//  Created by Ilias Nikolaidis Olsson on 2023-03-11.
//

#if canImport(UIKit)
import UIKit

public extension Axis {
    
    var stackViewAxis: NSLayoutConstraint.Axis {
        return self == .horizontal ? .horizontal : .vertical
    }
    
}
#endif
