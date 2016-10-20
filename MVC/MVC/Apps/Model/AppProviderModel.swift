//
//  AppProviderModel.swift
//  MVC
//
//  Created by Samarjeet Dubey on 05/10/16.
//  Copyright © 2016 Samarjeet Dubey. All rights reserved.
//

import UIKit

class AppProviderModel: NSObject {
    
    func getApps()->[AppModel!]{
        var apps:[AppModel!] = []

        let app1 = AppModel()
        app1.icon = UIImage(named: "home.png")
        app1.name = "Home"
        app1.publisherName = "apple"
        apps.append(app1)
        
        
        let app2 = AppModel()
        app2.icon = UIImage(named: "apps.png")
        app2.name = "XYZ"
        app2.publisherName = "SAMAR"
        apps.append(app2)
        
        let app3 = AppModel()
        app3.icon = UIImage(named: "gallery.png")
        app3.name = "PQR"
        app3.publisherName = "Uttam"
        apps.append(app3)
        
        
        
        return apps
        
    }
   
}
