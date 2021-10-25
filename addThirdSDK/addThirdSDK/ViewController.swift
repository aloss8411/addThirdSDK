//
//  ViewController.swift
//  addThirdSDK
//
//  Created by Lan Ran on 2021/10/21.
//

import UIKit
import ViewAnimator
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let data = ["animation1","animation2","animaton3","animation1","animation2","animaton3","animation1","animation2","animaton3","animation1","animation2","animaton3","animation1","animation2","animaton3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        cell.backgroundColor = .link
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .systemRed
            
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //點選第一個Cell會出現的特效
        if indexPath.row == 0 {
            let vc = TryTwoViewController()
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
     
    }
    
    private let tableView = UITableView()
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
           /*第一種用法
            let animation  = AnimationType.from(direction: .bottom, offset: 200).self
            UIView.animate(views:tableView.visibleCells,animations:.init(arrayLiteral: animation))
            */
            //第二種用法
        let animation  = AnimationType.from(direction: .bottom, offset: 200).self
        tableView.animate(animations: .init(arrayLiteral: animation), duration: 2, options: .allowAnimatedContent, completion: nil)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
   
}

