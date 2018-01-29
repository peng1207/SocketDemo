//
//  ViewController.swift
//  StockDemo
//
//  Created by okdeer on 2018/1/24.
//  Copyright © 2018年 okdeer. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var serverBtn : UIButton?
    var clientBtn : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
        // Dispose of any resources that can be recreated.
    }
}
//MARK: UI
extension ViewController {
    fileprivate func setupUI() {
        serverBtn = UIButton(type: .custom)
        serverBtn?.addTarget(self, action: #selector(clickServerAction), for: .touchUpInside)
        serverBtn?.setTitle("Server", for: .normal)
        serverBtn?.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(serverBtn!)
        
        clientBtn = UIButton(type: .custom)
        clientBtn?.addTarget(self, action: #selector(clickClientAction), for: .touchUpInside)
        clientBtn?.setTitle("Client", for: .normal)
        clientBtn?.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(clientBtn!)
        
        self.addconstraint()
    }
    /**
     添加约束
     */
    fileprivate func addconstraint(){
        serverBtn?.snp.makeConstraints({ (maker) in
            maker.size.equalTo(CGSize(width: 100, height: 40))
            maker.top.equalTo(40)
            maker.centerX.equalTo(self.view.snp.centerX).offset(0)
        })
        clientBtn?.snp.makeConstraints({ (maker) in
            maker.size.equalTo(CGSize(width: 100, height: 40))
            maker.top.equalTo((serverBtn?.snp.bottom)!).offset(40)
            maker.centerX.equalTo(self.view.snp.centerX).offset(0)
        })
    }
    
}
//MARK: action
extension ViewController {
    /**
     点击服务的事件
     */
    @objc  fileprivate func clickServerAction() {
        let serverVC = HSPServerVC()
        let serverNav = UINavigationController(rootViewController: serverVC)
        self.present(serverNav, animated: true, completion: nil)
    }
    /**
     点击客户端的事件
     */
    @objc  fileprivate func clickClientAction(){
        let clientVC = HSPClientVC()
        let clientNav = UINavigationController(rootViewController: clientVC)
        self.present(clientNav, animated: true, completion: nil)
    }
}

