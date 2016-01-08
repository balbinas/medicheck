//
//  OfertaDetailViewController.h
//  Medicheck
//
//  Created by Balbina Santana on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OfertaDetailViewController : UIViewController

@property (strong, nonatomic) NSDictionary * detailItem;

//@property (weak, nonatomic) IBOutlet UIImageView *img;
@property (weak, nonatomic) IBOutlet UILabel *lbOferta;
@property (weak, nonatomic) IBOutlet UILabel *lbDiscount;
@property (weak, nonatomic) IBOutlet UILabel *lbContact;
@property (weak, nonatomic) IBOutlet UILabel *lbDetails;
@property (weak, nonatomic) IBOutlet UILabel *lbOwner;

@end
