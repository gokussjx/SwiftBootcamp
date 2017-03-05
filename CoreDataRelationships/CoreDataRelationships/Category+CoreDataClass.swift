//
//  Category+CoreDataClass.swift
//  CoreDataRelationships
//
//  Created by Bidyut Mukherjee on 3/5/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation
import CoreData

@objc(Category)
public class Category: NSManagedObject {

    var articlesArray: [Article]? {
        return self.articles?.allObjects as? [Article]
    }
    
    // This init can actually fail, thus, init?
    convenience init?(title: String) {
        guard let context = Model.sharedInstance.managedContext else {
            return nil
        }
        
        self.init(entity: Category.entity(), insertInto: context)
        
        self.title = title
    }
}
