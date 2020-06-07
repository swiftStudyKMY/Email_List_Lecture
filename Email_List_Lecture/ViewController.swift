//
//  ViewController.swift
//  Email_List_Lecture
//
//  Created by 김민영 on 6/8/20.
//  Copyright © 2020 MINYOUNGKIM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var emailData : NSMutableArray = ["title","long Title","long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long text"]
    
    @IBOutlet weak var emailTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //1. 테이블 데이터 크기만큼 테이블뷰의 셀이 커진다.
//        emailTableView.rowHeight = UITableView.automaticDimension
    }


}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    
    //2. 테이블 데이터 크기만큼 테이블뷰의 셀이 커진다.
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    //열의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return emailData.count
        return 20
    }
    
    //셀의 표현
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emailCell", for: indexPath) as! MyCell
        
//        cell.titleLabel.text = emailData[indexPath.row] as? String
//        cell.subTitleLabel.text = emailData[indexPath.row] as? String
//        cell.longContentsLabel.text = emailData[indexPath.row] as? String
        cell.longContentsLabel.text = emailData[indexPath.row % emailData.count] as? String
        
        return cell
    }
    
    
}
