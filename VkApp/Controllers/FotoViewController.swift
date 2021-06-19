//
//  FotoViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit



class FotoViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var fotos = UsersFotoData.shared.userFoto
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

}
extension FotoViewController: UICollectionViewDelegate, UICollectionViewDataSource {

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return fotos.count
    }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "fotoCell", for: indexPath) as! FotoViewCell
        //cell.friendFoto.image = UIImage(systemName: "person")
        cell.configure(fotos[indexPath.item])
        
        
        return cell
    }

}
