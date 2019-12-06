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
    @IBOutlet weak var coderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateTheUIElement()
    }
    
    @IBAction func searchButtonClicked(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let userListViewController = storyBoard.instantiateViewController(withIdentifier: "UserListViewController") as! UserListViewController
        self.navigationController?.pushViewController(userListViewController, animated: true)
    }
    
    func animateTheUIElement() {
        coderButton.transform = CGAffineTransform(translationX: 0, y: 44 / 2)
        coderButton.alpha = 0

        UIView.animate(
            withDuration: 0.4,
            delay: 0.09,
            options: [.curveEaseInOut],
            animations: {
                self.coderButton.transform = CGAffineTransform(translationX: 0, y: 0)
                self.coderButton.alpha = 1
        })
    }
}
