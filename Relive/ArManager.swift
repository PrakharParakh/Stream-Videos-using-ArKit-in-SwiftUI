//
//  ArManager.swift
//  Relive
//
//  Created by Prakhar Parakh on 16/10/22.
//

import Combine

class ArManager{
    static let shared = ArManager()
    private init() { }
    
    var actionStream = PassthroughSubject<ArAction,Never>()
}
