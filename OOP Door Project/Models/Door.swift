//
//  Door.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class Door: Hashable {
    
    private let id: Int
    private var state: State
    private var updatedAt: Date
    
    enum State { case open, closed }
    
    init(id: Int, state: State, updatedAt: Date) {
        self.id = id
        self.state = state
        self.updatedAt = updatedAt
    }
    
    public func getState() -> State { return state }
    
    public func open() -> Bool {
        guard state == .open else { return false }
        state = .open
        return true
    }
    
    public func close() -> Bool {
        guard state == .closed else { return false }
        state = .closed
        return true
    }
    
    // MARK: - To confirm Hashable protocol
    
    static func == (lhs: Door, rhs: Door) -> Bool {
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
