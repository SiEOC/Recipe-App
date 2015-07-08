//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Gamaliel Tellez on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DetailViewController.h"
#import "Recipes.h"
#import "RecipeViewController.h"

static int margin =15;
static int topMargin = 20;

@interface DetailViewController ()

@property (nonatomic, assign) int yValueSpacing;

@end

@implementation DetailViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.yValueSpacing = 0;
    
     self.view.backgroundColor = [UIColor purpleColor];
     UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
     [self.view addSubview:scrollView];
    
 
    UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0,0.0,320,90)];
    descriptionLabel.backgroundColor = [UIColor whiteColor];
    descriptionLabel.text = [Recipes descriptionAtIndex:self.recipeIndex];  // Method that houses an Array with its index value passed in.
    descriptionLabel.numberOfLines = 5;
    [descriptionLabel setTextAlignment:NSTextAlignmentJustified];
    [descriptionLabel setFont:[UIFont fontWithName:@"Arial" size:15]];
    descriptionLabel.textColor = [UIColor purpleColor];
    [scrollView addSubview:descriptionLabel];
    
    
    //creating ingredients label
    
    for (int i = 0; i < [Recipes ingredientCountAtIndex:self.recipeIndex]; i++)
    {
        UILabel *ingredients = [[UILabel alloc] initWithFrame:CGRectMake(0.0,-45.0 + self.yValueSpacing,400, 330)];
        
        ingredients.numberOfLines = 0;
        ingredients.text = [Recipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.recipeIndex];;
        ingredients.font = [UIFont boldSystemFontOfSize:16];
        ingredients.textColor = [UIColor redColor];
        
        [scrollView addSubview:ingredients];
        
        
        UILabel *type = [[UILabel alloc] initWithFrame:CGRectMake(0.0,-45.0 + self.yValueSpacing,340,300)];
        
        type.numberOfLines = 0;
        type.textColor = [UIColor whiteColor];
//        type.backgroundColor = [UIColor yellowColor];
        type.font = [UIFont systemFontOfSize:15];
        type.text = [Recipes ingredientTypeAtIndex:i inRecipeAtIndex:self.recipeIndex];
        [scrollView addSubview:type];
        self.yValueSpacing = self.yValueSpacing + 30;
        

        
    }
   
}


- (CGFloat)heightOfReferenceString:(NSString *)reference {
    
    CGRect bounding = [reference boundingRectWithSize:CGSizeMake(self.view.frame.size.width, 0)
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}
                                              context:nil];
    
    return bounding.size.height;
    
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
