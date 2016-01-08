//
//  VerPacienteViewController.h
//  Medicheck
//
//  Created by Balbina Santana on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Paciente.h"

@interface VerPacienteViewController : UIViewController

@property (strong, nonatomic) Paciente *detailItem;

@property (weak, nonatomic) IBOutlet UILabel *lbNombre;
@property (weak, nonatomic) IBOutlet UILabel *lbApellido;
@property (weak, nonatomic) IBOutlet UILabel *lbTelefono;
@property (weak, nonatomic) IBOutlet UILabel *lbUser;
//@property (weak, nonatomic) IBOutlet UILabel *lbFecha;

@end
