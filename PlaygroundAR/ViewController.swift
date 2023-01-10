//
//  ViewController.swift
//  PlaygroundAR
//
//  Created by Robert Nilsen on 12/12/22.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    // AR Camera Screen
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image Tracking & Model Entity - each catalog by numerical order
        
        // Note: I tried to get a dictionary to work to incorporate each pair (making each model & tracking image pair a struct), but I couldn't get it to work, so this code is not as pretty or concise as it can be:
        
        // 1 - Slide
        var entityCollection = ["1_slide", "2_junglegym", "3_swing", "4_seesaw"]
        var imgCollection = [
        
//        let entity = try? ModelEntity.load(named: "1_slide")
//                let anchor = AnchorEntity(.image(group: "Pics",
//                                                  name: "Image"))
//        anchor.addChild(entity!)
//
//        entity!.position.z = anchor.position.z + 0.3
//                arView.scene.anchors.append(anchor)
//
//
//        // 2 - Jungle Gym Hangers
//        let entity2 = try? ModelEntity.load(named: "2_junglegym")
//                let anchor2 = AnchorEntity(.image(group: "Pics",
//                                                  name: "Image2"))
//        anchor2.addChild(entity2!)
//
//        entity2!.position.z = anchor2.position.z + 0.3
//                arView.scene.anchors.append(anchor2)
//
//
//        // 3 - Swing
//        let entity3 = try? ModelEntity.load(named: "3_swing")
//                let anchor3 = AnchorEntity(.image(group: "Pics",
//                                                  name: "Image3"))
//        anchor3.addChild(entity3!)
//
//        entity3!.position.z = anchor3.position.z + 0.3
//                arView.scene.anchors.append(anchor3)
//
//
//        // 4 - Seesaw
//        let entity4 = try? ModelEntity.load(named: "4_seesaw")
//                let anchor4 = AnchorEntity(.image(group: "Pics",
//                                                  name: "Image4"))
//        anchor4.addChild(entity4!)
//
//        entity4!.position.z = anchor4.position.z + 0.3
//                arView.scene.anchors.append(anchor4)
        
        
        // 5 - Net
        let entity5 = try? ModelEntity.load(named: "5_net")
                let anchor5 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image5"))
        anchor5.addChild(entity5!)
                
        entity5!.position.z = anchor5.position.z + 0.3
                arView.scene.anchors.append(anchor5)
        
        
        // 6 - House
        let entity6 = try? ModelEntity.load(named: "6_house")
                let anchor6 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image6"))
        anchor6.addChild(entity6!)
                
        entity6!.position.z = anchor6.position.z + 0.3
                arView.scene.anchors.append(anchor6)
        
        
        // 7 - Ladder
        let entity7 = try? ModelEntity.load(named: "7_ladder")
                let anchor7 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image7"))
        anchor7.addChild(entity7!)
                
        entity7!.position.z = anchor7.position.z + 0.3
                arView.scene.anchors.append(anchor7)
        
        
        // 8 - Trampoline
        let entity8 = try? ModelEntity.load(named: "8_trampoline")
                let anchor8 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image8"))
        anchor8.addChild(entity8!)
                
        entity8!.position.z = anchor8.position.z + 0.3
                arView.scene.anchors.append(anchor8)
        
        
        // 9 - Tree
        let entity9 = try? ModelEntity.load(named: "9_tree")
                let anchor9 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image9"))
        anchor9.addChild(entity9!)
                
        entity9!.position.z = anchor9.position.z + 0.3
                arView.scene.anchors.append(anchor9)
        
        
        // 10 - Rock Wall
        let entity10 = try? ModelEntity.load(named: "10_rockwall")
                let anchor10 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image10"))
        anchor10.addChild(entity10!)
                
        entity10!.position.z = anchor10.position.z + 0.3
                arView.scene.anchors.append(anchor10)
        
        
        // 11 - Bench
        let entity11 = try? ModelEntity.load(named: "11_bench")
                let anchor11 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image11"))
        anchor11.addChild(entity11!)
                
        entity11!.position.z = anchor11.position.z + 0.3
                arView.scene.anchors.append(anchor11)
        
        
        // 12 - Bridge
        let entity12 = try? ModelEntity.load(named: "12_bridge")
                let anchor12 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image12"))
        anchor12.addChild(entity12!)

        entity12!.position.z = anchor12.position.z + 0.3
                arView.scene.anchors.append(anchor12)
        
        
        // 13 - Sandbox
        let entity13 = try? ModelEntity.load(named: "13_sandbox")
                let anchor13 = AnchorEntity(.image(group: "Pics",
                                                  name: "Image13"))
        anchor13.addChild(entity13!)

        entity13!.position.z = anchor13.position.z + 0.3
                arView.scene.anchors.append(anchor13)
    }
}
