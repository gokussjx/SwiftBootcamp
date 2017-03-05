//
//  Category+CoreDataProperties.swift
//  CoreDataRelationships
//
//  Created by Bidyut Mukherjee on 3/5/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category");
    }

    @NSManaged public var title: String
    @NSManaged public var articles: NSSet?

}

// MARK: Generated accessors for articles
extension Category {

    @objc(addArticlesObject:)
    @NSManaged public func addToArticles(_ value: Article)

    @objc(removeArticlesObject:)
    @NSManaged public func removeFromArticles(_ value: Article)

    @objc(addArticles:)
    @NSManaged public func addToArticles(_ values: NSSet)

    @objc(removeArticles:)
    @NSManaged public func removeFromArticles(_ values: NSSet)

}
