//
//  Item.swift
//  TestProject
//
//  Created by Dean Guo on 10/21/16.
//  Copyright © 2016 fourestfire. All rights reserved.
//

import Foundation

class Item: NSObject, NSCoding {

    // MARK: Properties
    
        var name: String
    
    // MARK: Archiving Paths
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("items")
    
    // MARK: Types
    
    struct PropertyKey {
        static let nameKey = "name"
        }
    
    // MARK: Initialization
    
    init?(name:String){
        
        // Initialize stored properties.
        self.name = name
        
        super.init()
        
        // Initialization should fail if there is no name
        if name.isEmpty {
            return nil
        }
    }

// MARK: NSCoding

func encode(with aCoder: NSCoder) {
    aCoder.encode(name, forKey: PropertyKey.nameKey)
}

required convenience init?(coder aDecoder: NSCoder) {
    let name = aDecoder.decodeObject(forKey: PropertyKey.nameKey) as! String

    // Must call designated initializer.
    self.init(name: name)
}


}
