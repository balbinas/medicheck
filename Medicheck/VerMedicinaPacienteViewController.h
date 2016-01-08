//
//  VerMedicinaPacienteViewController.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Meds.h"

@interface VerMedicinaPacienteViewController : UIViewController

@property (strong, nonatomic) Meds *detailItem;

@property (weak, nonatomic) NSString * nombre;

@property (weak, nonatomic) IBOutlet UITextField *tfDosis;


@property (weak, nonatomic) IBOutlet UITextField *tfPeriodo;


@property (weak, nonatomic) IBOutlet UITextField *tfFechaInicio;

@property (weak, nonatomic) IBOutlet UITextField *tfFechaFin;

@property (weak, nonatomic) IBOutlet UITextField *tfHoraInicio;

@property (weak, nonatomic) IBOutlet UIImageView *imgvCaja;

@property (weak, nonatomic) IBOutlet UIImageView *imgvPildora;

@end
