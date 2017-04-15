//
//  GameScene.swift
//  FIreEmblemLike
//
//  Created by Gordon RASS-KWASI on 4/15/17.
//  Copyright © 2017 Gordon RASS-KWASI. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    private var BattleField: SKTileMapNode?
    private var player: SKSpriteNode?
    private var deplacement = Bool(booleanLiteral: false)
    
    override func didMove(to view: SKView) {
        BattleField = self.childNode(withName: "//BattleField") as? SKTileMapNode
        // je recuper la position de depart de mon joueur

        // Get label node from scene and store it for use later
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
        let column = BattleField?.tileColumnIndex(fromPosition: pos)
        let row = BattleField?.tileRowIndex(fromPosition: pos)
        print("\(pos) col \(column) row \(row) ")
        
        // je convertie se point en position dans la tile map
        // je recuper ensuite la case
        
        // si elle contient le joueur on va consider que on le deplace
        // on modifie la couleur de la case ou est le joeur en attandant
        // le status du joueur est modifier en mode deplacement
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
        // Si on est entrain de modifier la position du joeur on va modifier sa position avec le centre de la case
        // le status deplacement passe en false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    

}
