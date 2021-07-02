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
    var userId: Int?
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
        
        
        cell.configure(fotos[indexPath.item])
        
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let friendCarouselPhotoViewController = segue.destination as? FriendCarouselPhotoViewController,
              let indexCell = collectionView.indexPathsForSelectedItems?[0].row

        else { return }
        //friendCarouselPhotoViewController.userId = userId!
        friendCarouselPhotoViewController.photoId = indexCell
        
    }

}
