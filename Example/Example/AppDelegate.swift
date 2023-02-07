//
//  AppDelegate.swift
//  Example
//
//  Created by leven on 2023/2/5.
//

import UIKit
import Zip
import Libecdsa_swift
@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let rx = "9f33277ad75d57d5eae71fb98d0adabd4bf1c142e0cd307a8459b592901a9354"
        let ry = "3f2f61a53c12cdbaca022eddc46464238a12ec6b63e25317f85243e2440dc4a2"
        let shares = "[\"7dd2d71e34ece3ca21bf5f01e196ff5d1c8f7247fa6961ac47df7cccc8cd52c8\",\"df7619ce57f46d8c4052fca8bc31b98d27900550dd6557f01cd03404c75d4a05\",\"c2bb50507dfa4b8fce1c08e1a6e734690b59c25b7d79b85ff4314c355a1da853\",\"a6477b92bbc27d986698e499c2f0af43ca39dcf2708e54057f5e18e352def0ec\",\"fe8d6e04ac355dd124cdd45c4bd77e9e65e83e2d619a86ba1f4f5b138bd3df02\",\"c1b86ab48a477628839ee699b32720c246a91d2819ae55479c31cc33e810a3d7\",\"4d428fe0a40884b1c023237d3e32f9d5896bf5c272c6428f3abe81230c48359f\",\"af31d661cfd3c5ac3d08a8fd261519003757f34052b06ddb8914e72e39a2fd89\",\"439799bbc553d2cd195d936bd8964411e2725e6a3272f7d5e5d3a8657710326f\",\"ef11ae7dee26f65260d0ad20bb4cf5209b0773f756a68ba663e29597f162aa05\"]"
        let res = combine_signature(rx, ry: ry, shares: shares)
        print(res)
        /**
         r: 9f33277ad75d57d5eae71fb98d0adabd4bf1c142e0cd307a8459b592901a9354
         s: 4a50bbfadb8dfe0a4971eedd013577f71645dcae3b4c8bb79d76b25952120046
         recid: 1
         */
        
        return true
    }

}

