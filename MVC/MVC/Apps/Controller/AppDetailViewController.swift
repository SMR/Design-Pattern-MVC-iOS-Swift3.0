//
//  AppDetailViewController.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController {

    var iconView:UIImageView?
    
    
    init(appData app:AppModel!){

        super.init(nibName: nil, bundle: nil)
        
        iconView = UIImageView(image: app.icon)
        self.view.addSubview(iconView!)
    self.edgesForExtendedLayout = UIRectEdge.None
        self.view.backgroundColor = UIColor.orangeColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
