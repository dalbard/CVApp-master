//
//  Education.swift
//  CVApp
//
//  Created by Axel Dalbard on 2019-11-15.
//  Copyright © 2019 Axel Dalbard. All rights reserved.
//

import Foundation

class Education {
    let imageName: String
    let title: String
    let date: String
    
    init(imageName: String="default", title: String="Title", date: String="default"){
        self.imageName = imageName
        self.title = title
        self.date = date
    }
    
}
