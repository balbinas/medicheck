//
//  PacienteAppsViewController.h
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paciente.h"

@interface PacienteAppsViewController : UIViewController

@property (strong, nonatomic) Paciente *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *lbNombre;
@property (weak, nonatomic) IBOutlet UILabel *lbOficina;
@property (weak, nonatomic) IBOutlet UILabel *lbTelefono;

@end