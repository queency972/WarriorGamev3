//
//  NewWeapon.swift
//  mainTest
//
//  Created by Steve Bernard on 20/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Drug: Weapon {
    
    init() {
        super.init(damage: 50, type: "Drug")
        self.type = "Drug"
    }
}
