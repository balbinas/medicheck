//
//  MedsPacientesTableViewController.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PacienteMedsAgregarViewController.h"
#import "Meds.h"

@interface MedsPacientesTableViewController : UITableViewController <ProtocoloAgregarMedicamento>

@property (strong, nonatomic) Meds *detailItem;

@end
