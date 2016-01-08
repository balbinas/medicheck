//
//  Users.h
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Users : NSObject

@property (nonatomic,strong) NSString *nombre;
@property (nonatomic,strong) NSString * apellido;
@property (nonatomic,strong) NSString *email;
@property (nonatomic,strong) NSString *password;


- (id) initWithNombre: (NSString*) first apellido: (NSString*) last email: (NSString*) mail password: (NSString*) pswd;
@end
