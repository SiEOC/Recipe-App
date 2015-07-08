//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "DataSource.h"
#import "DetailViewController.h"
#import "Recipes.h"

@interface RecipeViewController ()

//step #2
@property (strong ,nonatomic) UITableView *tableView;
@property (strong,nonatomic) DataSource *dataSource;


@end

@implementation RecipeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Lunch Choices";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor redColor]};
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.dataSource = [DataSource new];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    DetailViewController *detailViewController = [DetailViewController new];
    detailViewController.title = [Recipes titleAtIndex:indexPath.row];
    detailViewController.recipeIndex = indexPath.row;
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
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
