//
//  CellServiços.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 13/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "CellServicos.h"
#import "CollectionCell.h"

@interface CellServicos() <UICollectionViewDelegate, UICollectionViewDataSource>{
    NSDictionary *listServicos;
}

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CellServicos

static NSString *cellCollection = @"cellCollection";

- (void)awakeFromNib {
    [super awakeFromNib];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    
    
    listServicos = @{@"listImg":  @[@"icon_wifi", @"icon_desk", @"icon_pc", @"icon_coffee",@"icon_food",@"icon_not_disturb",@"icon_car"],
                   @"listName":  @[@"WiFi", @"Sala Reuniões", @"Computadores", @"Café",@"Restaurente",@"Sala de Descanso",@"Estacionamento"]};
    
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionCell" bundle:nil] forCellWithReuseIdentifier:cellCollection];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [[listServicos objectForKey:@"listImg"] count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellCollection forIndexPath:indexPath];
   
    [cell setLblCellText:[listServicos objectForKey:@"listName"][indexPath.row]];
    [cell setImageCell:[listServicos objectForKey:@"listImg"][indexPath.row]];
    return cell;
}

@end
