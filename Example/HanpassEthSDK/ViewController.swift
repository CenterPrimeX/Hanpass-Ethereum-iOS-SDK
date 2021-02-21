//
//  ViewController.swift
//  HanpassEthSDK
//
//  Created by Odiljon on 02/17/2021.
//  Copyright (c) 2021 Odiljon. All rights reserved.
//

import UIKit
import HanpassEthSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ethManager = EthManager()
        ethManager.addInfura(infura: "https://ropsten.infura.io/v3/a396c3461ac048a59f389c7778f06689")
        
        do{
            let wallet = try ethManager.createWallet(password: "12345")
            print("**" + wallet!)
        } catch {
            print(error.localizedDescription)
        }
        
//        print("** **" + ethManager.importByPrivateKey(privateKey: "a57aa2514e84997f1f4b76b915b6527dc96c9ee6e076e6dc72ad67119f6eac27"))
     //   print("** **" + ethManager.exportKeystore(walletAddress: "0x1bB791a32c4E2b2a566dF41E42d99FDA6d21d6cb"))
//        print(ethManager.importByKeystore(keystore: "{\"version\":3,\"id\":\"5122fdfc-7aac-4e5f-8a50-e89cda285794\",\"crypto\":{\"ciphertext\":\"51f128d6b3a60a94203aab9c470e0a99b2eadfed4113e1cb8a8233685b10a0eb\",\"cipherparams\":{\"iv\":\"3b06fa1d87d7eaa7b41398735401b030\"},\"kdf\":\"scrypt\",\"kdfparams\":{\"r\":6,\"p\":1,\"n\":4096,\"dklen\":32,\"salt\":\"6e2edcb625da03b7236db6b7be2ee45a50ba3943b3a1274e4cfe1fcad03c6c4f\"},\"mac\":\"a0585b6b81c8f1505148808205e4d35dfd2ea7561aefa65a118b69a057047940\",\"cipher\":\"aes-128-cbc\"},\"address\":\"0x1bb791a32c4e2b2a566df41e42d99fda6d21d6cb\"}", password: "web3swift"))
        
        
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

