//
//  Member.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-04-11.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class Member {
    var name: String
    var email: String
    
    
    init?(name: String, email: String) {
        guard !name.isEmpty else{
            return nil
        }
        guard email.isEmpty else{
            return nil
        }
        self.name = name
        self.email = email
    }
}
