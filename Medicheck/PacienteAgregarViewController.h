//
//  PacienteAgregarViewController.h
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ProtocoloAgregarPaciente <NSObject>

- (void) agregaPaciente: (NSString *)nombre withApellido:(NSString *) apel withTelefono: (NSInteger) tel withUsuario: (NSString*) user withContrasena: (NSString*) pssw withDob: (NSDate*) dob;
- (void) quitaVista;

@end


@interface PacienteAgregarViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfNombre;
@property (weak, nonatomic) IBOutlet UITextField *tfApellido;
@property (weak, nonatomic) IBOutlet UITextField *tfUsuario;
@property (weak, nonatomic) IBOutlet UITextField *tfContrasena;
@property (weak, nonatomic) IBOutlet UITextField *tfTelefono;
//@property (weak, nonatomic) IBOutlet UISegmentedControl *segSex;
@property (weak, nonatomic) IBOutlet UIDatePicker *dpDob;

@property(nonatomic, strong) id <ProtocoloAgregarPaciente> delegado;

- (IBAction)btAgregar:(id)sender;



@end
