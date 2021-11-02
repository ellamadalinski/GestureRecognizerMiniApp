//
//  ViewController.swift
//  GestureRecognizerMiniApp
//
//  Created by Ella Madalinski on 9/26/21.
//

import UIKit

class ViewController: UIViewController , UINavigationControllerDelegate , UIImagePickerControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var eyesOutlet: UIImageView!
    @IBOutlet weak var mouthOutlet: UIImageView!
    @IBOutlet weak var handOutlet: UIImageView!
    @IBOutlet weak var lightsaberOutlet: UIImageView!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    
    @IBAction func eyesTapRecognizerOutlet(_ sender: UITapGestureRecognizer) {
        
        var tappedLoc = sender.location(in: view)
        eyesOutlet.center = tappedLoc
    }
    
    
    @IBAction func mouthPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        mouthOutlet.center = pannedLoc
    }
    
    @IBAction func handPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        handOutlet.center = pannedLoc
    }
    
    @IBAction func lightsaberPanOutlet(_ sender: UIPanGestureRecognizer) {
        var pannedLoc = sender.location(in: view)
        lightsaberOutlet.center = pannedLoc
    }
    
    @IBAction func cameraButtonAction(_ sender: UIButton) {
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            present(imagePicker, animated: true, completion: nil)
        }
        else{
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            present(imagePicker, animated: true, completion: nil)
        }
    }
    
    @IBAction func photosButtonAction(_ sender: UIButton) {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true) {
            self.imageViewOutlet.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        }
    }
    
}

