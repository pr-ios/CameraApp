//
//  PhotoVC.swift
//  CameraApp
//
//  Created by mac on 02/12/2021.
//

import UIKit

class PhotoVC: UIViewController {

    let nameLable = UILabel()
    let showImage = UIImageView()
    let takePicBtn = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // name lable
        
        nameLable.frame = CGRect(x: 50, y: 70, width: 350, height: 100)
        nameLable.textColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        nameLable.textAlignment = .center
        nameLable.numberOfLines = 0
        nameLable.font = .systemFont(ofSize: 40)
        nameLable.text = ""
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
        takePicBtn.backgroundColor = #colorLiteral(red: 0.401073277, green: 0.7664145827, blue: 0.6784854531, alpha: 1)
        takePicBtn.layer.cornerRadius = 15
        takePicBtn.titleLabel?.font = .systemFont(ofSize: 20, weight: .semibold)
        takePicBtn.addTarget(self, action: #selector(takePicture), for: .touchDown)
        view.addSubview(takePicBtn)
    }
    
    @objc func takePicture() {
        let camera = UIImagePickerController()
        camera.sourceType = .camera
        camera.delegate = self
        present(camera, animated: true)
    }
    
}

extension PhotoVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: true, completion: nil)

        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else {
            return
        }
        showImage.image = image
    }
}


