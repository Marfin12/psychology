//
//  Choice.swift
//  Destini-iOS13
//
//  Created by MACBOOK PRO on 21/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Choice {
    let choice1: String
    let choice2: String?
    let choice3: String?
    let choice4: String?
    
    init(choice1: String, choice2: String? = nil, choice3: String? = nil, choice4: String? = nil) {
        self.choice1 = choice1
        self.choice2 = choice2
        self.choice3 = choice3
        self.choice4 = choice4
    }
}

