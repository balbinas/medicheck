//
//  Paciente.m
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "Paciente.h"

@implementation Paciente

- (id) initWithNombre: (NSString*) nom apellido: (NSString*) apel telefono: (NSInteger) tel usuario: (NSString*) user contrasena: (NSString*) pssw dob: (NSDate*) dob
{   self	=	[super	init];
    if	(self)
			 {   _nombre        =	nom;
                 _apellido      =	apel;
                 _usuario       =   user;
                 _contrasena    =   pssw;
                 _telefono      =	tel;
                 _dob           =   dob;
//                 _sexo          =   sex;
                 
             }
    return	self;
    
}

@end