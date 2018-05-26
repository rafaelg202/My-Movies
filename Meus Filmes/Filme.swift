//
//  Filme.swift
//  Meus Filmes
//
//  Created by Rafael Goncalves on 19/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import UIKit

class Filme{
    
    var titulo: String!
    var descricao: String!
    var imagem: UIImage!
    
    init(titulo: String, descricao: String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
    
}
