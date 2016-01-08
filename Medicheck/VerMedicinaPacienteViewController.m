//
//  VerMedicinaPacienteViewController.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "VerMedicinaPacienteViewController.h"


@interface VerMedicinaPacienteViewController ()

@end

@implementation VerMedicinaPacienteViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        [self setTitle:[self.detailItem nombre]];
        
        self.tfDosis.text = [NSString stringWithFormat:@"%ld%@",(long)[self.detailItem dosage],[self.detailItem measure]];
        //self.tfFechaInicio.text = [self.detailItem measure];
        //self.lbTelefono.text = [NSString stringWithFormat:@"%ld", (long)[self.detailItem telefono]];
        //self.lbUser.text = [self.detailItem usuario];
        //        self.lbFecha.text = [self.detailItem dob];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
