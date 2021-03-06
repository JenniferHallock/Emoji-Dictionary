//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jennifer Hallock on 9/29/17.
//  Copyright © 2017 Jennifer Hallock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojitable: UITableView!
    
    var emojis = ["😘", "😱", "😎", "❤️", "💩", "👻", "👠", "👍", "🐶", "🐠", "🐧"]
    
    override func viewDidLoad() {
        
    
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojitable.dataSource = self
        emojitable.delegate = self
    
    }
    
   //how many rows our table should have //
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    // what do you want in each row or cell in our table view //
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print (indexPath.row)  // 0-9//
        
        let cell = UITableViewCell()   //variable named cell//
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // gets rid of grey bar from previously selected //
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
        DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

