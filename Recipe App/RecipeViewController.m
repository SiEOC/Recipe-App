//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"
#import "RecipeDetailViewController.h"

@interface RecipeViewController ()

//step #2
@property (strong ,nonatomic) UITableView *tableView;
@property (strong,nonatomic) RecipesTableViewDataSource *dataSource;

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // add title
    
    self.title = @"Recipe App";
    
    // initialize
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    
    // @property recipes
    self.dataSource = [RecipesTableViewDataSource new];
    
    // @property Recipes
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    //step #2
    
    [self.view addSubview:self.tableView];
    
    // Do any additional setup after loading the view.
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RecipeDetailViewController *detailViewController = [RecipeDetailViewController new];

    
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
