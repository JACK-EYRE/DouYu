//
//  MainViewController.swift
//  DouYu
//
//  Created by yifanzhang on 2017/3/13.
//  Copyright © 2017年 yifanzhang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildVC("Home")
        addChildVC("Live")
        addChildVC("Follow")
        addChildVC("Profile")

    }
    
    //private :只有在本类中可以访问
    //默认情况下所有的类&属性&方法的访问权限都是internal
    private func addChildVC(_ sbName :String){
        
        let ChildVC = UIStoryboard(name: sbName, bundle: nil).instantiateInitialViewController()
        
        // 从可选类型中取值: “可选类型 + !” --> 强制解包
        addChildViewController(ChildVC!)//强制解包
    }

  
}
