//
//  PhotoVC.swift
//  CameraApp
//
//  Created by mac on 02/12/2021.
//

import UIKit

class PhotoVC: UIViewController {

    var nameLable = UILabel()
    
    var showImage = UIImageView()
    
    var takePicBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // name lable
        nameLable.frame = CGRect(x: 125, y: 100, width: 300, height: 30)
        nameLable.textColor = #colorLiteral(red: 0.401060462, green: 0.7664279342, blue: 0.6784901619, alpha: 0.8980392157)
        nameLable.textAlignment = .center
        nameLable.numberOfLines = 0
        nameLable.font = .systemFont(ofSize: 37)
        nameLable.text = "The legend"
        nameLable.sizeToFit()
        view.addSubview(nameLable)

        // image view
        
        showImage.frame = CGRect(x: 50, y: 200, width: 350, height: 500)
        showImage.image = UIImage(named: "moh")
        showImage.contentMode = .scaleAspectFit
        showImage.layer.cornerRadius = 15
        view.addSubview(showImage)
        
        // open camera
        
        takePicBtn.frame = CGRect(x: 125, y: 725, width: 200, height: 35)
        takePicBtn.setTitle("Take a picture", for: .normal)
        takePicBtn.backgroundColor = #colorLiteral(red: 0.401060462, green: 0.7664279342, blue: 0.6784901619, alpha: 0.8980392157)
        takePicBtn.layer.cornerRadius = 15
        takePicBtn.titleLabel?.font = .systemFont(ofSize: 20)
        view.addSubview(takePicBtn)
    }
    
}
