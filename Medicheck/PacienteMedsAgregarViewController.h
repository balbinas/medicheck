//
//  PacienteMedsAgregarViewController.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProtocoloAgregarMedicamento <NSObject>

-(void) agregaMedicamento: (NSString *)nombre withDosis:(NSInteger) dos withUnidades:(NSString *) uni withPeriodo:(NSInteger) per withStartTime:(NSDate *) strtTime withStartDate:(NSDate *) strtDate withEndDate:(NSInteger) endDate;

-(void) agregaMedicamento: (NSString *)nombre withCompuesto:(NSString *) comp withDosis:(NSInteger)dos withUnidades:(NSString *) uni withPeriodo:(NSInteger) per withStartTime:(NSDate *) strtTime withStartDate:(NSDate *) strtDate withEndDate:(NSInteger) endDate;


-(void) agregaMedicamento: (NSString *)nombre withCompuesto:(NSString *) comp withDosis:(NSInteger)dos withUnidades:(NSString *) uni;



-(void) quitaVista;

@end

@interface PacienteMedsAgregarViewController : UIViewController

@property(nonatomic, strong) id <ProtocoloAgregarMedicamento> delegado;

@property (weak, nonatomic) IBOutlet UITextField *tfNombreMed;

@property (weak, nonatomic) IBOutlet UITextField *tfCompuesto;

@property (weak, nonatomic) IBOutlet UITextField *tfDosis;

@property (weak, nonatomic) IBOutlet UITextField *tfUnidades;

@property (weak, nonatomic) IBOutlet UITextField *tfPeriodo;

@property (weak, nonatomic) IBOutlet UIDatePicker *dpStartTime;

- (IBAction)btnAgregarMed:(id)sender;

@end
