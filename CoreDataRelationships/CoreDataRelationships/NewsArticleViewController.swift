//
//  NewsArticleViewController.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class NewsArticleViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var dateFormatter = DateFormatter()
    
//    var newsArticle : NewsArticle?
    var newsArticle: Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News Article"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        if let newsArticle = newsArticle {
            titleLabel.text = newsArticle.title
            dateLabel.text = dateFormatter.string(from: newsArticle.date)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
