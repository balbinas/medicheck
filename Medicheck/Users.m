//
//  Users.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "Users.h"

@implementation Users



- (id) initWithNombre: (NSString*) first apellido: (NSString*) last email: (NSString*) mail password: (NSString*) pswd
{   self	=	[super	init];
    if	(self)
			 {   _nombre        =	first;
                 _apellido      =   last;
                 _email         =   mail;
                 _password	    =   pswd;

                 
             }
    return	self;
    
}

@end
