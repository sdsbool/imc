//
//  IMCDataModel.swift
//  imcv2
//
//  Created by Usuario on 11/4/24.
//  Copyright © 2024 casa. All rights reserved.
//

import UIKit

class IMCDataModel: NSObject {
    var weight: Double
    var height: Double
    
    required init(weight: Double, heigth: Double) {
        self.weight = weight
        self.height = heigth
    }
    
    public func calculateIMC() -> Double {
        return weight / (height * height)
    }
}

