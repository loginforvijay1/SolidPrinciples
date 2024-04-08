//
//  LiskovSubstitution.swift
//  SOLIDPrinciples
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import Foundation

// Child should be able to substitue parent class and child should not break parent functionality

class HandlerLiskov {
    func save(string: String) {
        //Save string to database
    }
}
class FilteredHandler: HandlerLiskov {
    
    override func save(string: String) {
        guard string.count > 5 else { return } // Breaking the Liskov principles
        super.save(string: string)
    }
}

// Implementation
class HandlerLiskov1 {
    func save(stringData: String, minCharecters: Int = 0) {
        guard stringData.count >= minCharecters else { return }
        
        //Save strint to Data
    }
}

class FilteredHandler1: HandlerLiskov1 {
    override func save(stringData: String, minCharecters: Int = 0) {
        super.save(stringData: stringData, minCharecters: minCharecters)
    }
}
