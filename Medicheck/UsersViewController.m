//
//  UsersViewController.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "UsersViewController.h"
#import "Users.h"

@interface UsersViewController ()

@property NSMutableArray *listaUsuarios;

@end

@implementation UsersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
    
    Users *use1 = [[Users alloc]	initWithNombre:@"Jaime" apellido:@"Garcia" email:@"jgcia.mail.com" password:@"0000"];
    Users *use2 = [[Users alloc] initWithNombre:@"Antonio" apellido:@"Lopez" email:@"antonio.mail.com" password:@"1111"];
    Users *use3 = [[Users alloc] initWithNombre:@"Rodrigo" apellido:@"Juarez" email:@"rjz.mail.com" password:@"1234"];
    
    self.listaUsuarios	= [[NSMutableArray alloc]	initWithObjects: use1, use2, use3,	nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
//    if ([[segue identifier] isEqualToString: @"showDetail"])
//        [[segue destinationViewController] ];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


- (Boolean)searchArray{

    if([self.listaUsuarios indexOfObject:self.tfUserMail]==[self.listaUsuarios indexOfObject:self.tfUserPswd]){
        return true;
    }
    
    else return false;
}

- (IBAction)btnIniciaSesion:(id)sender {

}
       
       
@end
