//
//  ViewController.swift
//  GenericNetworkLayer
//
//  Created by GauravSharma on 25/11/19.
//  Copyright © 2019 GauravSharma. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func searchButtonClicked(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let userListViewController = storyBoard.instantiateViewController(withIdentifier: "UserListViewController") as! UserListViewController
        self.navigationController?.pushViewController(userListViewController, animated: true)
        
    }
}
