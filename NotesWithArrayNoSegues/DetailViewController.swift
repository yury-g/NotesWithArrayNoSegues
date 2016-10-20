//
//  DetailViewController.swift
//  NotesWithArrayNoSegues
//
//  Created by Yury Gitman on 10/19/16.
//  Copyright © 2016 com.yuryg. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var detailDescriptionLabel: UITextView!


    func configureView() {
        // Update the user interface for the detail item.
 //       if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = objects[currentIndex]
            }
 //       }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    // new stuff
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        objects[currentIndex] = detailDescriptionLabel.text
        masterView?.tableView.reloadData()
    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        objects[currentIndex] = detailDescriptionLabel.text
//        print("viewDidDisappear"objects)
//        masterView?.tableView.reloadData()
//    }

    func textViewDidChange(_ textView: UITextView) {
        objects[currentIndex] = detailDescriptionLabel.text

    }
    

}

