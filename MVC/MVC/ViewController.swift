//
//  ViewController.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myFirstLabel : UILabel?
    
    func loadFirstLabel (){
        
        myFirstLabel    =   UILabel(frame: CGRectMake(10, 10, 300, 40))
        myFirstLabel!.text  =   "Apero"
        self.view.addSubview(myFirstLabel!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.yellowColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        loadFirstLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

