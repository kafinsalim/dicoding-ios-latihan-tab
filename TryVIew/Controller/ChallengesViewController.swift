//
//  ChallangesViewController.swift
//  TryVIew
//
//  Created by Admin on 30/05/20.
//  Copyright © 2020 Kafin Code. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {
    
    @IBOutlet weak var arChallenge: UIStackView!
    @IBOutlet weak var guestBookChallenge: UIStackView!
    @IBOutlet weak var educationChallenge: UIStackView!
    @IBOutlet weak var flutterChallange: UIStackView!
    @IBOutlet weak var webChallenge: UIStackView!
    
    var challenges = [ ("Create Your AR Experience", "AR Lorem ipsum dolor sit amet", UIImage(named: "ar")),
                       ("Digital Guest Book", "guest book Lorem ipsum dolor sit amet", UIImage(named: "digital")),
                       ("Expert Developer on Education Impact Applications", "Expert education Lorem ipsum dolor sit amet", UIImage(named: "expert")),
                       ("Create Beautiful Apps Using  Flutter", "Beautiful Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
                       ("Dicoding Web Master", "Web Master Lorem ipsum dolor sit amet", UIImage(named: "web")),
                       ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addTapped(parameter: &arChallenge)
        addTapped(parameter: &guestBookChallenge)
        addTapped(parameter: &educationChallenge)
        addTapped(parameter: &flutterChallange)
        addTapped(parameter: &webChallenge)
    }
    
    func addTapped(parameter: inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
        
        switch gesture.view as? UIStackView {
        case arChallenge:
            controller.detail = challenges[0]
        case guestBookChallenge:
            controller.detail = challenges[1]
        case educationChallenge:
            controller.detail = challenges[2]
        case flutterChallange:
            controller.detail = challenges[3]
        case webChallenge:
            controller.detail = challenges[4]
        default:
            controller.detail = challenges[5]
        }
        
//        self.present(controller, animated: true, completion: nil)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
