//
//  AppViewController.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit

class AppViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var apps:[AppModel!]?
    var tableOfApps : UITableView?
    
    func loadTableOfApps(){
        
    let provider = AppProviderModel()
        apps = provider.getApps()
        
        
        
        tableOfApps = UITableView(frame: UIScreen.mainScreen().bounds)
        
        tableOfApps!.delegate = self
        tableOfApps!.dataSource = self
        
        self.view.addSubview(tableOfApps!)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.greenColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        loadTableOfApps()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return apps!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : AppTableViewCell?
        
        cell = tableOfApps!.dequeueReusableCellWithIdentifier("app") as! AppTableViewCell!
        
        if cell == nil{
            
            cell = AppTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "app")
        }
        let app = apps![indexPath.row] as AppModel
        cell!.iconView!.image = app.icon
        cell!.nameLabel!.text = app.name
        cell!.publisherNameLabel!.text = app.publisherName
        
        return cell!
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        return 80
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
         print("didSelectRowAtIndexPath")
        let app = apps![indexPath.row] as AppModel!
        let detail = AppDetailViewController(appData: app)
        
    self.navigationController!.pushViewController(detail, animated: true)
    
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
