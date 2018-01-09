//
//  ViewPanicPhoto.swift
//  Alarm Buttons
//
//  Created by OSX I+D on 22-05-17.
//  Copyright © 2017 Jose David Bustos H. All rights reserved.
//

import UIKit

class ViewPanicPhoto: UIViewController , UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    @IBOutlet weak var photoView: UIImageView!
    
    //VARIABLE A LA CLASE UIImagePickerController
    var miControladorImagen: UIImagePickerController!
    
    @IBAction func takePhoto(_ sender: UIButton) {
        
        //COMPROBAMOS SI EL DISPOSITIVO TIENE CÁMARA
        if (UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)){
            miControladorImagen =  UIImagePickerController()
            miControladorImagen.delegate = self
            miControladorImagen.sourceType = .camera
            
            present(miControladorImagen, animated: true, completion: nil)
        }else{
            
            //println ("No hay cámara")
            
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [AnyHashable: Any]) {
        
        var guardaImagen: UIImage?
        
        miControladorImagen.dismiss(animated: true, completion: nil)
        photoView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        guardaImagen = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        UIImageWriteToSavedPhotosAlbum(guardaImagen!, nil, nil, nil);
    }
   /* override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
    
    
}
