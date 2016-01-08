//
//  OfertaDetailViewController.m
//  Medicheck
//
//  Created by Balbina Santana on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "OfertaDetailViewController.h"

@interface OfertaDetailViewController ()

@end

@implementation OfertaDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
//        self.lbOferta.text = [self.detailItem description];
        self.lbOferta.text = [self.detailItem objectForKey:@"Oferta"];
        self.lbOwner.text = [self.detailItem objectForKey:@"Owner"];
        self.lbContact.text = [self.detailItem objectForKey:@"Contact"];
        self.lbDiscount.text = [self.detailItem objectForKey:@"Discount"];
        self.lbDetails.text = [self.detailItem objectForKey:@"Details"];
//        NSString *stringUrl = [self.detailItem objectForKey:@"urlFoto"];
//        NSURL *nsUrl = [NSURL URLWithString:stringUrl];
//        NSData *data = [[NSData alloc] initWithContentsOfURL:nsUrl];
//        UIImage *imagen = [UIImage imageWithData:data];
//        self.img.image = imagen;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureView];
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

@end
