//
//  Device.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 10.06.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Device: Hashable {
    
    private let id: Int
    private var updatedAt: Date
    
    init(id: Int, updatedAt: Date) {
        self.id = id
        self.updatedAt = updatedAt
    }
    
    // MARK: - To confirm Hashable protocol
    
    static func == (lhs: Device, rhs: Device) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
       var hashValue: Int {
           var hasher = Hasher()
           self.hash(into: &hasher)
           return hasher.finalize()
       }
    }
}
