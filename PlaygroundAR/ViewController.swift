//
//  ViewController.swift
//  PlaygroundAR
//
//  Created by Robert Nilsen on 12/12/22.
//

import UIKit
import RealityKit
import SwiftUI

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    // AR Camera Screen
    override func viewDidLoad() {
        super.viewDidLoad()

        @ObservedObject var models = LoadModels()
        
        // Add each anchor + model pair to AR scene
        for i in 0...models.entityList.count - 1 {
            arView.scene.anchors.append(models.entityList[i].anchor)
        }
    }
}
