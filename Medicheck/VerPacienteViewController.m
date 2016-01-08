//
//  VerPacienteViewController.m
//  Medicheck
//
//  Created by Balbina Santana on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "VerPacienteViewController.h"

@interface VerPacienteViewController ()

@end

@implementation VerPacienteViewController

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
        self.lbNombre.text = [self.detailItem nombre];
        self.lbApellido.text = [self.detailItem apellido];
        self.lbTelefono.text = [NSString stringWithFormat:@"%ld", (long)[self.detailItem telefono]];
        self.lbUser.text = [self.detailItem usuario];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
