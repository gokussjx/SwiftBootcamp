//
//  NewsArticlesTableViewController.swift
//  CoreDataRelationships
//
//  Created by DALE MUSSER on 3/3/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class NewsArticlesTableViewController: UITableViewController {
    
    let newsJSONFile = "news"
    var categories: [Category]? = []
//    var newsCategories: [NewsCategory]?
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News Articles"
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
//        newsCategories = NewsJSONLoader.load(fileName: newsJSONFile)
        
        Model.sharedInstance.loadData()
        categories = Model.sharedInstance.fetchCategories()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
//        return newsCategories?.count ?? 0
        return categories?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return newsCategories?[section].articles.count ?? 0
        return categories?[section].articlesArray?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsArticleCell", for: indexPath)

        if let article = categories?[indexPath.section].articlesArray?[indexPath.row] {
            cell.textLabel?.text = article.title
            cell.detailTextLabel?.text = dateFormatter.string(from: article.date)
        }
        
        //        if let article = newsCategories?[indexPath.section].articles[indexPath.row] {
//            cell.textLabel?.text = article.title
//            cell.detailTextLabel?.text = dateFormatter.string(from: article.date)
//        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories?[section].title
//        return newsCategories?[section].title
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? NewsArticleViewController,
            let indexPath = tableView.indexPathForSelectedRow {
                if let newsArticle = categories?[indexPath.section].articlesArray?[indexPath.row] {
                    destination.newsArticle = newsArticle
                }
//            if let newsArticle = newsCategories?[indexPath.section].articles[indexPath.row] {
//                destination.newsArticle = newsArticle
//            }
        }
    }

}
