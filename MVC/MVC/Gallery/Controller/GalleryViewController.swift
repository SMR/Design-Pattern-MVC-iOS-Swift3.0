//
//  GalleryViewController.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {
    
    var myFirstImage : UIImageView?
    
    func loadFirstImage (){
        
        let tempImg = UIImage(named: "home.png")
        
        myFirstImage = UIImageView(image: tempImg)
        myFirstImage!.center    =   CGPointMake(150, 150)
        self.view.addSubview(myFirstImage!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.redColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        loadFirstImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
