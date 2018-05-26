//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Rafael Goncalves on 19/05/2018.
//  Copyright © 2018 BlessCode. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var filmes:[Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "Lorem ipsum bibendum aenean imperdiet non est nibh erat sit facilisis accumsan semper potenti molestie auctor risus tempor, magna aptent iaculis mollis viverra aliquam libero dapibus interdum lobortis etiam id litora maecenas proin sit. nisl lacinia habitasse porta molestie ultrices aliquam nisi lorem, ac sollicitudin lectus eget fringilla fermentum egestas curae, condimentum quam adipiscing augue at egestas vivamus. felis luctus fringilla scelerisque tellus neque adipiscing dictum himenaeos, maecenas conubia nunc duis etiam senectus ligula, phasellus auctor curabitur tellus facilisis ac pretium. malesuada etiam feugiat suscipit in elit purus mi lobortis suspendisse libero primis, euismod ante phasellus a velit libero ullamcorper ipsum auctor mi, dapibus in nulla torquent elit lorem ligula orci gravida enim.", imagem: #imageLiteral(resourceName: "filme1"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Star Wars", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Deadpool", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme4"))
        filmes.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme5"))
        filmes.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme6"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Caçadores de Emoção", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme7"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme8"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme9"))
        filmes.append(filme)
        
        filme = Filme(titulo: "Hardcore", descricao: "descricao", imagem: #imageLiteral(resourceName: "filme10"))
        filmes.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[ indexPath.row ]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        
        celula.filmeimageview.image = filme.imagem
        celula.tituloLabel.text = filme.titulo
        celula.descricaoLabel.text = filme.descricao
        
        /*
        //formatacao da celula de imagem
        celula.filmeimageview.layer.cornerRadius = 42
        celula.filmeimageview.clipsToBounds = true
        */
        /*celula.textLabel?.text = filme.titulo
        celula.imageView?.image = filme.imagem*/
        
        return celula
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detalheFilme"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
                
                let filmeSelecionado = self.filmes[ indexPath.row]
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmeSelecionado
                
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

