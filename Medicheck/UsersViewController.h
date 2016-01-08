//
//  UsersViewController.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UsersViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfUserMail;

@property (weak, nonatomic) IBOutlet UITextField *tfUserPswd;

- (IBAction)btnIniciaSesion:(id)sender;


@end
