//
//  NewsCategory.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

struct NewsCategory {
    var title: String
    var articles : [NewsArticle]
    
    init(title: String) {
        self.title = title
        self.articles = [NewsArticle]()
    }
}
