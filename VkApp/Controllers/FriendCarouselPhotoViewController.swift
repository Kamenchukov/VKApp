//
//  FriendCarouselPhotoViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 01.07.2021.
//

import UIKit

class FriendCarouselPhotoViewController: UIViewController {
    @IBOutlet weak var FriendLargePhotoView: CarouselView!
    
    var userId: Int?
    var userPhotos = UserGalleryDataStorage.userGallery
    var photoId: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if userId != nil && userPhotos[userId!].imageNames != nil {
            FriendLargePhotoView.imageNames = userPhotos[userId!].imageNames
            FriendLargePhotoView.visibleIndex = photoId!
        } else {
            FriendLargePhotoView.imageNames = ["defaultAvatar"]
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

   
   

}
