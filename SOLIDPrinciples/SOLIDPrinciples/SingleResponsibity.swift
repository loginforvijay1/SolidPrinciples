//
//  NetworkManager.swift
//  SOLIDPrinciples
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import Foundation

// Single Responsible Principles
//  Class or function should have single responsible

class APIHandler {
    
    func handler() {
        let data = fetchDataFromAPI()
        let array = parseData(data: data)
        saveDataToDB(array: array)
    }
    
    private func fetchDataFromAPI() -> Data? {
        return Data()
    }
    
    private func parseData(data: Data?) -> [String]? {
        return ["",""]
    }
    
    private func saveDataToDB(array: [String]?) {
        //Save data
    }
}

// Single responsibity implementation

class Handler {
    let apiFetch: APIFetch
    let dataParse: DataParse
    let saveToDB: SaveToDB
    
    init(apiFetch: APIFetch, dataParse: DataParse, saveToDB: SaveToDB) {
        self.apiFetch = apiFetch
        self.dataParse = dataParse
        self.saveToDB = saveToDB
    }
    
    func handle() {
        let data = apiFetch.fetchDataFromAPI()
        let array = dataParse.dataParse(data: data)
        saveToDB.saveToDB(data: array)
    }
    
}

class APIFetch {
    func fetchDataFromAPI() -> Data {
        return Data()
    }
}

class DataParse {
    func dataParse(data: Data) -> [String] {
        return [""]
    }
}

class SaveToDB {
    func saveToDB(data: [String]) {
        
    }
}
