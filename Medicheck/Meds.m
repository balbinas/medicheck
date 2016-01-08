//
//  Meds.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "Meds.h"

@implementation Meds

- (id) initWithNombre: (NSString*) nom dosage: (NSInteger*) dose componente: (NSString *) comp measure: (NSString*) meas period: (NSInteger) peri horaInicio: (NSDate *) horaIni
{   self	=	[super	init];
    if	(self)
			 {   _nombre        =	nom;
                 _dosage      	=	(int)dose;
                 _componente    =   comp;
                 _measure	    =   meas;
                 _period        =   peri;
                 _horaInicio    =   horaIni;
                 
             }
    return	self;
    
}


- (id) initWithNombre: (NSString*) nom dosage: (NSInteger*) dose componente: (NSString *) comp measure: (NSString*) meas
{   self	=	[super	init];
    if	(self)
			 {   _nombre        =	nom;
                 _dosage      	=	(int)dose;
                 _componente    =   comp;
                 _measure	    =   meas;
                 
                 
             }
    return	self;
    
}

@end