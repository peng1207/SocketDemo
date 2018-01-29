//
//  HSPServerVC.swift
//  StockDemo
//
//  Created by okdeer on 2018/1/29.
//  Copyright © 2018年 okdeer. All rights reserved.
//

import UIKit
import SnapKit

class HSPServerVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.edgesForExtendedLayout = .all
        self.view.backgroundColor = UIColor.white
        self.setupUI()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension HSPServerVC{
    /**
     创建UI
     */
    fileprivate func setupUI(){
        self.title = "Server"
        setupNavView()
        setupPortView()
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
    /**
     创建端口号的view
     */
    fileprivate func setupPortView(){
        let portLabel = UILabel()
        portLabel.text = "port"
        portLabel.textColor = UIColor.black
        self.view.addSubview(portLabel)
        
        let portTextField = UITextField()
        portTextField.text = "8000"
        portTextField.placeholder = "please input port"
        portTextField.textColor = UIColor.black
        self.view.addSubview(portTextField)
        
        portLabel.snp.makeConstraints { (maker) in
            maker.left.equalTo(self.view).offset(20)
            maker.top.equalTo(self.view).offset(20)
            maker.height.equalTo(30)
            maker.width.greaterThanOrEqualTo(0)
        }
        
        portTextField.snp.makeConstraints { (maker) in
            maker.left.equalTo(portLabel.snp.right).offset(20)
            maker.top.equalTo(portLabel.snp.top).offset(0)
            maker.height.equalTo(portLabel.snp.height).offset(0)
            maker.width.equalTo(100)
        }
        
    }
    
}

extension HSPServerVC{
    /**
     点击关闭按钮
     */
    @objc fileprivate func clickCloseAction(){
        self.dismiss(animated: true, completion: nil)
    }
}
