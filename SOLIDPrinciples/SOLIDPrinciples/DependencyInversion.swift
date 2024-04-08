//
//  DependencyInversion.swift
//  SOLIDPrinciples
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import Foundation

// High level objects should not depend on low level implementation, depend throth interfaces(protocols)
// Main motive - Decoupling the dependencis


class FileHandle {
    let fm = FileSystemManager()
    func handle(string : String) {
        fm.save(string: string)
    }
    
}

class FileSystemManager {
    func save(string : String) {
        // open file
        // save the string in file
        // Close the file
    }
}
// High level module - FileHandle is dependent on low level module FileSystemManager. high level is tightly coupled with low level module


class FileHandle1 {
    let storage: Storage
    init(storrage: Storage) {
        self.storage = storrage
    }
    
    func handle(string : String) {
        storage.save(string: string)
    }
    
}
//  depend through interfaces(protocols)
protocol Storage {
    func save(string: String)
}

class FileSystemManager1: Storage {
    func save(string : String) {
        // open file
        // save the string in file
        // Close the file
    }
}
