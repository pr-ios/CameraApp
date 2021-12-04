//
//  LaunchVC.swift
//  CameraApp
//
//  Created by Abdullah AlRashoudi on 12/4/21.
//

import UIKit

class LaunchVC: UIViewController {
    
    let logoLC = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(logoLC)
        view.backgroundColor = .white
        logoLC.image = UIImage(named: "logo")
        logoLC.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
            self.animate()
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.mainPage()
        }

    }
  
    
    private func animate() {
        UIView.animate(withDuration: 1) {
            let size = self.view.frame.size.width * 2
            let diffX = size - self.view.frame.size.width
            let diffY = self.view.frame.size.height - size
            self.logoLC.frame = CGRect(x: -(diffX/2) , y: diffY/2 , width: size, height: size)
            self.logoLC.alpha = 0
        }
        
        UIView.animate(withDuration: 1.5) {
            self.logoLC.alpha = 0
        }

    }
    
    private func mainPage() {
        let vc = LoginVC()
        vc.modalTransitionStyle = .flipHorizontal
             vc.modalPresentationStyle = .fullScreen
             present(vc, animated: true, completion: nil)
    }
}
