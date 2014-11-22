//
//  ViewController.swift
//  FunFacts
//
//  Created by Edwin Capel on 11/8/14.
//  Copyright (c) 2014 Edwin Capel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        view.backgroundColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
    }

}

