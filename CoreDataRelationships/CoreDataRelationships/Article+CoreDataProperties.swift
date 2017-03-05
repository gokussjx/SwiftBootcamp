//
//  Article+CoreDataProperties.swift
//  CoreDataRelationships
//
//  Created by Bidyut Mukherjee on 3/5/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation
import CoreData


extension Article {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Article");
    }

    @NSManaged public var title: String
    @NSManaged public var rawDate: NSDate
    @NSManaged public var category: Category?

}
