//
//  ListaPacientesTableViewController.m
//  Medicheck
//
//  Created by Balbina Santana on 1/7/16.
//  Copyright © 2016 Balbina Santana. All rights reserved.
//

#import "ListaPacientesTableViewController.h"
#import "PacienteAppsViewController.h"
#import "VerPacienteViewController.h"
#import "Paciente.h"

@interface ListaPacientesTableViewController ()

@property NSMutableArray *listaPacientes;

@end

@implementation ListaPacientesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Paciente *pac1 = [[Paciente alloc]	initWithNombre:@"Luis Jorge" apellido:@"Gutierrez Valadares" telefono:55341233 usuario:@"alberto" contrasena:@"1234"];
    Paciente *pac2 = [[Paciente alloc]	initWithNombre:@"Luis Alberto" apellido:@"Remes Quiroz" telefono:55341233 usuario:@"jorge" contrasena:@"1234"];
    Paciente *pac3 = [[Paciente alloc]	initWithNombre:@"Alejandra" apellido:@"Granada Torres" telefono:55341233 usuario:@"alejandra" contrasena:@"1234"];
    self.listaPacientes	= [[NSMutableArray alloc]	initWithObjects: pac1,	pac2, pac3,	nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showApp"])
    {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Paciente *object = self.listaPacientes[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
    else
        if ([[segue identifier] isEqualToString: @"agrega"]) [[segue destinationViewController] setDelegado:self];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.listaPacientes.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Paciente *object = self.listaPacientes[indexPath.row];
    cell.textLabel.text = [object nombre];
    return cell;
}

#pragma mark - Métodos de Protocolo Agregar Paciente

- (void) agregaPaciente:(NSString *)nombre withApellido:(NSString *)apel withTelefono:(NSInteger)tel withUsuario:(NSString *)user withContrasena:(NSString *)pssw
{
    Paciente *tmp = [[Paciente alloc] initWithNombre:nombre apellido:apel telefono:tel usuario:user contrasena:pssw ];
    [self.listaPacientes addObject: tmp];
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
