//
//  PacienteAgregarViewController.m
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "PacienteAgregarViewController.h"

@interface PacienteAgregarViewController ()

@end

@implementation PacienteAgregarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btAgregar:(id)sender {
    if(![self.tfNombre.text isEqualToString:@""])
    {
        NSString *nom = self.tfNombre.text;
        NSString *apel = self.tfApellido.text;
        NSString *user = self.tfUsuario.text;
        NSString *pssw = self.tfContrasena.text;
//        NSString *sex = self.segSex.seg;
        NSInteger tel = [self.tfTelefono.text integerValue];
//        NSDate *dob = self.dpDob.date;
        
        
        [self.delegado agregaPaciente:nom withApellido: apel withTelefono: tel withUsuario: user withContrasena: pssw];
        
        [self.delegado quitaVista];
    }
}
@end
