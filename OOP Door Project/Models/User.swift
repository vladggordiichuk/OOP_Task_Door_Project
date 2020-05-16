//
//  User.swift
//  OOP Door Project
//
//  Created by Vlad Gordiichuk on 16.05.2020.
//  Copyright © 2020 Vlad Gordiichuk. All rights reserved.
//

import Foundation

class User: Hashable {
    
    private let id: Int
    private var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    public func getName() -> String { return name }
    
    public func changeName(with newName: String) { name = newName }
    
    public func getAvailableDoors() -> [Door] { return DB.shared.userToDoorRelation[self] ?? []  }
    
    public func connectNewDoor(_ door: Door) -> Bool {
        guard DB.shared.userToDoorRelation[self]?.first(where: { $0 == door }) == nil else { return false }
        if DB.shared.userToDoorRelation[self] == nil { DB.shared.userToDoorRelation[self] = [] }
        DB.shared.userToDoorRelation[self]?.append(door)
        return true
    }
    
    public func disconnectDoor(_ door: Door) -> Bool {
        guard let doorIndex = DB.shared.userToDoorRelation[self]?.firstIndex(of: door) else { return false }
        DB.shared.userToDoorRelation[self]?.remove(at: doorIndex)
        return true
    }
    
    // MARK: - To confirm Hashable protocol
    
    static func == (lhs: User, rhs: User) -> Bool { lhs.id == rhs.id }

    func hash(into hasher: inout Hasher) {
       var hashValue: Int {
           var hasher = Hasher()
           self.hash(into: &hasher)
           return hasher.finalize()
       }
    }
}
