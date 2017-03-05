//
//  Article+CoreDataClass.swift
//  CoreDataRelationships
//
//  Created by Bidyut Mukherjee on 3/5/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import Foundation
import CoreData

@objc(Article)
public class Article: NSManagedObject {
    
    var date: Date {
        // Without explicit get{ }, it'll automatically be get anyway
        get {
            return rawDate as Date
        }
        set {
            rawDate = newValue as NSDate
        }
        /*
        set(newDate) {
            self.date = newDate as Date
        } */
    }
    
    // This init can actually fail, thus, init?
    convenience init?(title: String, date: Date) {
        guard let context = Model.sharedInstance.managedContext else {
            return nil
        }
        
        self.init(entity: Article.entity(), insertInto: context)
        
        self.title = title
        self.date = date
    }
}
