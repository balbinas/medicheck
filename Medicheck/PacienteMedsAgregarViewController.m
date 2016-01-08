//
//  PacienteMedsAgregarViewController.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "PacienteMedsAgregarViewController.h"

@interface PacienteMedsAgregarViewController ()

@end

@implementation PacienteMedsAgregarViewController

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

- (IBAction)btnAgregarMed:(id)sender {
    if(![self.tfNombreMed.text isEqualToString:@""])
    {
        NSLog(@"Entro Acción");
        NSString *nom = self.tfNombreMed.text;
        NSString *dosi = self.tfDosis.text;
        NSString *comp = self.tfCompuesto.text;
        NSString *uni = self.tfUnidades.text;
        NSInteger peri = (long)self.tfPeriodo.text;
        NSDate * horaIni = self.dpStartTime;
        
       
        
        [self.delegado agregaMedicamento:(NSString *)nom withDosage:(NSInteger)dosi withComponente:(NSString *)comp withUnidades:(NSString *)uni withPeriodo:(NSInteger)peri withStartTime:(NSDate *)horaIni];
        
        [self.delegado quitaVista];
    }
}
@end
