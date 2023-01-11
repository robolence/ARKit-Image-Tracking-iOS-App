//
//  EntityStruct.swift
//  PlaygroundAR
//
//  Created by Robert Nilsen on 1/10/23.
//

import Foundation
import RealityKit

struct EntityStruct: Identifiable{
    let id = UUID().uuidString
    var modelName: String
    var imageName: String = ""
    var model: ModelEntity = ModelEntity()
    var anchor: AnchorEntity = AnchorEntity()
}
