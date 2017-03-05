//
//  NewsJSONLoader.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

class NewsJSONLoader {
    
    class func load(fileName: String) -> [NewsCategory] {
        var newsCategories = [NewsCategory]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            newsCategories = NewsJSONParser.parse(data)
        }
        return newsCategories
    }
}
