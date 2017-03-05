//
//  NewsArticle.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct NewsArticle {
    var title: String
    var date: Date

    // Not needed, since in swift struct, memberwise init exists implicitly
    init(title: String, date: Date) {
        self.title = title
        self.date = date
    }
}
