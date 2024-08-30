//
//  Board.swift
//  Calculator
//
//  Created by 陈炫羽 on 2024/8/29.
//

import Foundation
import UIKit

class Board: UIView{
    var dataArray = ["0",".","%","="
                    ,"1","2","3","+"
                    ,"4","5","6","-"
                    ,"7","8","9","*"
                    ,"AC","Delete","^","/"
                    ]
    override init(frame: CGRect){
        super.init(frame: frame)
        installUI()
    }
    required init?(coder aDecoder:NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    func installUI(){
        var frontBtn:FuncButton!
        //创建一个变量，用于保存当前布局的上一个按钮
        for index in 0..<20{
            //进行按钮的循环创建
            let btn = FuncButton()
            //创建一个功能按钮
            self.addSubview(btn)
            //在布局之前，添加到父视图上
            btn.snp.makeConstraints({(maker) in  //使用snapkit进行约束添加
                //当按钮为每行第一个时，将其靠父视图左侧进行摆放
                if index%4 == 0{
                    maker.left.equalTo(0)
                }
                //否则放在上一个按钮的右边
                    else{
                    maker.left.equalTo(frontBtn.snp.right)
                }
                //当按钮为第一行时，按底部摆放
                if index/4 == 0 {
                    maker.bottom.equalTo(0)
                }else if index%4 == 0{
                    maker.bottom.equalTo(frontBtn.snp.top)
                }else{
                    maker.bottom.equalTo(frontBtn.snp.bottom)
                }
                maker.width.equalTo(btn.superview!.snp.width).multipliedBy(0.25)
                maker.height.equalTo(btn.superview!.snp.height).multipliedBy(0.2)
                })
            btn.tag = index+100
            btn.addTarget(self, action: #selector(btnClick(button:)), for: .touchUpInside)
            btn.setTitle(dataArray[index], for: UIControl.State.normal)
            frontBtn = btn
        }
    }
    @objc func btnClick(button:FuncButton){
        print(button.title(for: .normal) ?? " ")
    }
}
