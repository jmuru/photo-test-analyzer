//
//  ViewController.swift
//  photo-text-analyzer
//
//  Created by Joseph Muruguru on 11/21/16.
//  Copyright © 2016 Joseph Muruguru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBOutlet weak var imageView: UIImageView!

    @IBAction func activateCmera(_ sender: Any) {
        //check if camera is available on device
        if (UIImagePickerController.isSourceTypeAvailable(.camera)) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    

    @IBAction func activatePhotoLib(_ sender: Any) {
        if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }

  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
    if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
        self.imageView.contentMode = .scaleAspectFit
        self.imageView.image = image
    }
    
        picker.dismiss(animated: true, completion: nil);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

