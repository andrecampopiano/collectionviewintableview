//
//  FeedbackCell.m
//  ALCCollectionInTableView
//
//  Created by André Campopiano on 17/01/17.
//  Copyright © 2017 André Campopiano. All rights reserved.
//

#import "FeedbackCell.h"
#import "UserFeedbackCell.h"

@interface FeedbackCell() <UICollectionViewDelegate, UICollectionViewDataSource>{
    NSDictionary *userFeedback;
    NSDictionary *userComments;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation FeedbackCell

static NSString *cellUserFeed = @"cellFeedback";

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    userFeedback = @{@"fotos": @[@"baca", @"cleber", @"matheus", @"peao", @"fernando"],
                     @"rating": @[ @1.2 , @4.3, @3.3, @2.3 , @5.0]};
    
    userComments = @{@"comments":
                         @[@"Aqui é Body Builder Ipsum PORRA! Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É nóis caraio é trapezera buscando caraio! Tá comigo porra. Não vai dá não. Vo derrubar tudo essas árvore do parque ibirapuera. Bora caralho, você quer ver essa porra velho.",
                            @" É nóis caraio é trapezera buscando caraio! Sabe o que é isso daí? Trapézio descendente é o nome disso aí. Sai de casa comi pra caralho porra. É 13 porra! Ajuda o maluco que tá doente. Aqui nóis constrói fibra, não é água com músculo.",
                           @"É 13 porra! Sai filho da puta! Negativa Bambam negativa. É 37 anos caralho! É nóis caraio é trapezera buscando caraio! Aqui é bodybuilder porra!",
                           @"Sabe o que é isso daí? Trapézio descendente é o nome disso aí. É 13 porra! Ajuda o maluco que tá doente. É nóis caraio é trapezera buscando caraio! Tá comigo porra. Ó o homem ali porra!, é 13 porra!",
                           @"Ele tá olhando pra gente. É 13 porra! Boraaa, Hora do Show Porra. Aqui é bodybuilder porra! Vai subir árvore é o caralho porra! Sai de casa comi pra caralho porra."],
                     @"name": @[ @"Andre Bacagline" , @"Cleber Dias", @"Matheus Leite", @"André Freitas" , @"Fernando Vergis"]};
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerNib:[UINib nibWithNibName:@"UserFeedbackCell" bundle:nil] forCellWithReuseIdentifier:cellUserFeed];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    UserFeedbackCell *userCell = [collectionView dequeueReusableCellWithReuseIdentifier:cellUserFeed forIndexPath:indexPath];
    [userCell setUserImg:[userFeedback objectForKey:@"fotos"][indexPath.row]];
    [userCell setRatingStar:[[userFeedback objectForKey:@"rating"][indexPath.row] floatValue]];
    
    
    return userCell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    UserFeedbackCell *userCell = (UserFeedbackCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    [userCell showBorder];
    
    NSDictionary * userComment = @{@"user": [userComments objectForKey:@"name"][indexPath.row],
                     @"comments" : [userComments objectForKey:@"comments"][indexPath.row]};
    
    [self.delegate setCommentsCell:userComment];
    
    
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath{
    UserFeedbackCell *userCell = (UserFeedbackCell*)[self.collectionView cellForItemAtIndexPath:indexPath];
    [userCell hideBorder];
    
}

-(void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UserFeedbackCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if(cell.isSelected){
        [cell showBorder];
    }else{
        [cell hideBorder];
    }
}

@end
