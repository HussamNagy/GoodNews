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
     
    }


}

