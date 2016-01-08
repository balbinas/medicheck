//
//  Paciente.h
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Paciente : NSObject

@property(nonatomic,strong) NSString *nombre;
@property(nonatomic,strong) NSString *apellido;
@property NSInteger telefono;
@property(nonatomic,strong) NSString *usuario;
@property(nonatomic,strong) NSString *contrasena;
//@property NSDate *dob;
//@property (nonatomic, strong) NSString *sexo;

- (id) initWithNombre:(NSString*)nom apellido: (NSString*) apel telefono: (NSInteger) tel usuario: (NSString*) user contrasena: (NSString*) pssw;

@end