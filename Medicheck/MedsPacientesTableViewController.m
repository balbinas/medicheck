//
//  MedsPacientesTableViewController.m
//  Medicheck
//
//  Created by José Antonio Ruiz del Moral Cervantes on 1/8/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "MedsPacientesTableViewController.h"
#import "VerMedicinaPacienteViewController.h"


@interface MedsPacientesTableViewController ()

@property NSMutableArray * listaMedicinas;

@end

@implementation MedsPacientesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Meds *med1 =  [[Meds alloc] initWithNombre:@"Remeron" dosage:30 componente:@"Mirtazopina" measure:@"ml"];
    Meds *med2 =  [[Meds alloc] initWithNombre:@"Haldol" dosage:120 componente:@"Haloperidol" measure:@"ml"];
    Meds *med3 =  [[Meds alloc] initWithNombre:@"Vasotec" dosage:20 componente:@"Enalapril" measure:@"ml"];
    
    self.listaMedicinas = [[NSMutableArray alloc] initWithObjects:med1, med2, med3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"verMed"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Meds *object = self.listaMedicinas[indexPath.row];
        //NSLog((int)indexPath.row);
        [[segue destinationViewController] setDetailItem:object];
    }
    else
        if ([[segue identifier] isEqualToString: @"agregaMed"]) [[segue destinationViewController] setDelegado:self];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.listaMedicinas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Meds *object = self.listaMedicinas[indexPath.row];
    cell.textLabel.text = [object nombre];
    return cell;
}

#pragma mark - Métodos de Protocolo Agregar Paciente

- (void) agregaMedicamento:(NSString *)nombre withCompuesto:(NSString *)comp withDosis:(NSInteger)dos withUnidades:(NSString *)uni
{
    Meds *tmp = [[Meds alloc] initWithNombre:nombre dosage:&dos componente:comp measure:uni];
    NSLog(@"Agrego A Arreglo");
    [self.listaMedicinas addObject:tmp];
    [self.tableView reloadData];
}

- (void) quitaVista
{
    [self.navigationController popViewControllerAnimated:YES];
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
