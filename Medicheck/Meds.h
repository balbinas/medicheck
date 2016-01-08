//
//  Meds.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Meds : NSObject

@property(nonatomic,strong) NSString *nombre;
@property NSInteger dosage;
@property(nonatomic,strong) NSString *componente;
@property(nonatomic,strong) NSString *measure;

//@property (nonatomic, strong) NSString *sexo;

- (id) initWithNombre: (NSString*) nom dosage: (NSInteger*) dose componente: (NSString*) comp measure: (NSString*) meas;
@end
