//
//  Service.swift
//  Rick & Morty FC
//
//  Created by Rituraj Mishra on 25/12/22.
//

import Foundation

final class Service {
    static let shared = Service()
    
    private init() {}
    
    public func execute(_ request: Request, completion: @escaping () -> Void) {}
}
