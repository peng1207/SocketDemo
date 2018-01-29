//
//  HSPClientVC.swift
//  StockDemo
//
//  Created by okdeer on 2018/1/29.
//  Copyright © 2018年 okdeer. All rights reserved.
//

import UIKit

class HSPClientVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor  = UIColor.white
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
//MARK: UI
extension HSPClientVC {
    /**
     创建UI
     */
    fileprivate func setupUI(){
        self.title = "Client"
           setupNavView()
    }
    /**
     创建导航栏上控件
     */
    fileprivate func setupNavView(){
        let closeBtn = UIButton(type: .custom)
        closeBtn.setTitle("close", for: .normal)
        closeBtn.setTitleColor(UIColor.red, for: .normal)
        closeBtn.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        closeBtn.addTarget(self, action: #selector(clickCloseAction), for: .touchUpInside)
        let item =  UIBarButtonItem(customView: closeBtn)
        self.navigationItem.rightBarButtonItem = item
    }
}
//MARK: action
extension HSPClientVC{
    /**
     点击关闭按钮
     */
    @objc fileprivate func clickCloseAction(){
        self.dismiss(animated: true, completion: nil)
    }
}

