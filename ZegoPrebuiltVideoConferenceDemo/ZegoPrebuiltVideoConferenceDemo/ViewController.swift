//
//  ViewController.swift
//  ZegoPrebuiltVideoConference
//
//  Created by zego on 2022/9/14.
//

import UIKit
import ZegoUIKit
import ZegoUIKitPrebuiltVideoConference

class ViewController: UIViewController {
    
    let appID: UInt32 = <#YourAppID#>
    let appSign: String = <#YourAppSign#>
    var userID: String = "\(arc4random())"
    var userName: String?
    
    
    @IBOutlet weak var conferenceIDTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func joinButtonClick(_ sender: Any) {
        let config: ZegoUIKitPrebuiltVideoConferenceConfig = ZegoUIKitPrebuiltVideoConferenceConfig()
        self.userName = String(format: "n_%@", self.userID)
        guard let conferenceID = self.conferenceIDTextField.text else { return }
        let videoConferenceVC: ZegoUIKitPrebuiltVideoConferenceVC = ZegoUIKitPrebuiltVideoConferenceVC.init(self.appID, appSign: self.appSign, userID: self.userID, userName: self.userName ?? "", conferenceID: conferenceID, config: config)
        videoConferenceVC.modalPresentationStyle = .fullScreen
        self.present(videoConferenceVC, animated: true, completion: nil)
    }
    

}

