//
//  Point.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-28.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class Point {
    var name: String
    var tag: String
    var rating: Int
    var address: String
    var task: String
    
    
    init?(name: String, tag: String, rating: Int, address: String, task: String) {
        guard !name.isEmpty else{
            return nil
        }
        guard (rating>=0) && (rating<=5) else{
            return nil
        }
        self.name = name
        self.tag = tag
        self.rating = rating
        self.address = address
        self.task = task
    }
}
