//
//  ViewController.swift
//  GoddNews
//
//  Created by Hussam Nagy on 26/12/2022.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        setup()
        
    }
    
    private func setup(){
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=bd873c21c581430084381cb69b00d6b8")!
        
        Webservice().getArticles(url: url){ _ in
            
            
        }
    }
    
    
}

