//
//  NewsJSONParser.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation

import Foundation

class NewsJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [NewsCategory] {
        var newsCategories = [NewsCategory]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            if let categoryNodes = root["categories"] as? [[String: Any]] {
                for categoryNode in categoryNodes {
                    if let categoryTitle = categoryNode["title"] as? String,
                       let articleNodes = categoryNode["articles"] as? [[String: Any]] {
                        var newsCategory = NewsCategory(title: categoryTitle)
                        for articleNode in articleNodes {
                            if let title = articleNode["title"] as? String,
                                let dateString = articleNode["pub_date"] as? String,
                                let date = dateFormatter.date(from: dateString) {
                                newsCategory.articles.append(NewsArticle(title: title, date: date))
                            }
                        }
                        newsCategories.append(newsCategory)
                    }
                    
                }
                
            }
            
        }
        return newsCategories
    }
}
