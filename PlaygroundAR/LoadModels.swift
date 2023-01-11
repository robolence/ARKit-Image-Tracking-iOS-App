//
//  LoadModels.swift
//  PlaygroundAR
//
//  Created by Robert Nilsen on 1/10/23.
//

import Foundation
import SwiftUI
import RealityKit

class LoadModels: ObservableObject{
    
    // Initialize entity object array
    @Published var entityList : [EntityStruct] = []
    
    func loadModelsIntoScene() {
        
        // Folder name for asset images goes below
        let groupName = "Pics"
        
        // Number dictates how high from the image will the 3D model float
        var modelOffset = 0.3
        
        // Initialize helper list array
        var imageList : [String] = []

        // Fetch models from folder
        if let modelDirectory = Bundle.main.path(forResource: "Models", ofType: ""),
           let modelContents = try? FileManager.default.contentsOfDirectory(atPath: modelDirectory),
            let imgDirectory = Bundle.main.path(forResource: "img", ofType: ""),
           let imgContents = try? FileManager.default.contentsOfDirectory(atPath: imgDirectory){
            
            // Initialize each entity object with respective 3D model
            for modelFile in modelContents {
                let modelPathRemoved = (modelFile as NSString).deletingPathExtension
                let object = EntityStruct(modelName: modelPathRemoved)
                entityList.append(object)
            }
            
            // Populate helper array to be used later (add image name values to each entity object)
            for imgFile in imgContents {
                let imgPathRemoved = (imgFile as NSString).deletingPathExtension
                imageList.append(imgPathRemoved)
            }
        }

        // Sort lists alphanumerically
        entityList.sort { $0.modelName < $1.modelName }
        imageList.sort { $0 < $1 }

        for i in 0...entityList.count - 1 {
            
            // Combine, Assign image to each model entity object
            entityList[i].imageName = imageList[i]
            
            // Assign 3D models to model property and anchor to scene
            do {
                entityList[i].model = try ModelEntity.load(named: "\(entityList[i].modelName)") as! ModelEntity
                entityList[i].anchor = AnchorEntity(.image(group: "\(groupName)",
                                                           name: "\(entityList[i].imageName)"))
                
                // Adds image / recognized object as anchor for 3D model
                entityList[i].anchor.addChild(entityList[i].model)
                
                // Assigns 3D model to position of anchor in scene (customize with modelOffset variable)
                entityList[i].model.position.z = entityList[i].anchor.position.z + Float(modelOffset)
                
            }
            catch {
                print(error)
            }
            
        }
        
    }
    
}
