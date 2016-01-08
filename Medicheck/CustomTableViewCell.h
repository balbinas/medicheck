//
//  CustomTableViewCell.h
//  Medicheck
//
//  Created by Balbina Santana on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lbOferta;
@property (weak, nonatomic) IBOutlet UILabel *lbOwner;
@property (weak, nonatomic) IBOutlet UILabel *lbDiscount;
//@property (weak, nonatomic) IBOutlet UIImageView *img;

@end