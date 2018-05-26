//
//  DEtalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Rafael Goncalves on 26/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import Foundation
import UIKit

class DetalhesFilmeViewController: UIViewController{
    
    var filme: Filme!
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var descricaoLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        tituloLabel.text = filme.titulo
        descricaoLabel.text = filme.descricao
        
        
    }
    
}

