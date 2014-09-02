//
//  DMMViewController.m
//  SDWebImageCrashExample
//
//  Created by Daniel on 9/2/14.
//  Copyright (c) 2014 Daniel Miedema. All rights reserved.
//

#import "DMMViewController.h"
#import <SDWebImage/SDWebImagePrefetcher.h>
#import <SDWebImage/UIImageView+WebCache.h>

@interface DMMViewController ()
@property (strong, nonatomic) NSArray *kittenURLs;
@property (strong, nonatomic) NSArray *puppyURLs;
@property (strong, nonatomic) NSArray *sealURLs;

@property (weak, nonatomic) NSArray *currentImages;
@end

@implementation DMMViewController
#pragma mark - View Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.currentImages = self.kittenURLs;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setters 
- (void)setCurrentImages:(NSArray *)currentImages {
    _currentImages = currentImages;
    
    NSInteger imageIndex = 0;
    for (NSInteger i = 0; i < self.imageViews.count; i++) {
        UIImageView *imageView = self.imageViews[i];
        imageIndex = arc4random() % _currentImages.count;
        NSURL *url = _currentImages[imageIndex];
        
        [imageView sd_setImageWithURL:url placeholderImage:nil options:SDWebImageRefreshCached];
    }
}

#pragma mark - Getters

- (NSArray *)kittenURLs {
    if (!_kittenURLs) {
        NSURL *image1 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages4.fanpop.com%2Fimage%2Fphotos%2F19700000%2Fbaby-kittens-baby-animals-19797171-1280-800.jpg&f=1"];
        NSURL *image2 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages4.fanpop.com%2Fimage%2Fphotos%2F19700000%2Fbaby-kittens-baby-animals-19799225-1024-768.jpg&f=1"];
        NSURL *image3 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.funnykittensite.com%2Fpictures%2Fbaby_kittens.jpg&f=1"];
        NSURL *image4 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.wonderfluf.com%2FPersian%2FWhite1.jpg&f=1"];
        NSURL *image5 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fa.images.blip.tv%2FTHELITTER-BabyKittensInTheirNewHome575.jpg&f=1"];
        NSURL *image6 = [NSURL URLWithString:@"hhttps://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.babyorbaba.com%2Fwp-content%2Fuploads%2F2014%2F07%2Fcute-baby-kitten-images-6.jpg&f=1"];
        NSURL *image7 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F1.bp.blogspot.com%2F-ZekQzMy1Sng%2FT0anKzwhe4I%2FAAAAAAAAAnk%2F8JyZjVlvJUo%2Fs1600%2Fsleepingwhitkitten.jpg&f=1"];
        NSURL *image8 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages4.fanpop.com%2Fimage%2Fphotos%2F19700000%2Fbaby-kittens-baby-animals-19799542-1024-768.jpg&f=1"];
        NSURL *image9 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fbigbackground.com%2Fwp-content%2Fuploads%2F2013%2F05%2Fbaby-kitten-wallpaper.jpg&f=1"];
        NSURL *image0 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages4.fanpop.com%2Fimage%2Fphotos%2F19700000%2Fbaby-kittens-baby-animals-19797206-1600-900.jpg&f=1"];
        
        _kittenURLs = @[image1, image2, image3, image4, image5, image6, image7, image8, image9, image0];
    }
    return _kittenURLs;
}

- (NSArray *)puppyURLs {
    if (!_puppyURLs) {
        NSURL *image1 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F2.bp.blogspot.com%2F-j-77vM1TlG4%2FTWY2ai4m33I%2FAAAAAAAABRk%2Fg22O_44a-rA%2Fs1600%2Fpuppy-dog-5.jpeg&f=1"];
        NSURL *image2 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fsupermon.files.wordpress.com%2F2010%2F01%2Fpuppies_1.jpg&f=1"];
        NSURL *image3 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fallaboutpuppiesflorida.com%2Fwp-content%2Fuploads%2F2010%2F08%2Fbaby-puppies1.jpg&f=1"];
        NSURL *image4 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F2.bp.blogspot.com%2F-zzJX0XMnZN4%2FTWY2Tt8QvEI%2FAAAAAAAABRE%2FaoUf0dHPjeM%2Fs1600%2Fbaby%252Bdog.jpg&f=1"];
        NSURL *image5 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.wallcoo.net%2Fanimal%2Fwhite_baby_dogs_2_1920x1200%2Fwallpapers%2F1920x1200%2Flovely_white_puppy_dog_83171.jpg&f=1"];
        NSURL *image6 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F2.bp.blogspot.com%2F-CHB_xNJliAE%2FT3XzDwmPJ3I%2FAAAAAAAABBU%2F-uS3SDSOImw%2Fs1600%2Fbaby%252Band%252Bpuppy.jpg&f=1"];
        NSURL *image7 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Ffwallpapers.com%2Ffiles%2Fimages%2Fwhite-baby-dog-25.jpg&f=1"];
        NSURL *image8 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.wallcoo.net%2Fanimal%2Fwhite_baby_dog%2Fimages%2Fwhite_baby_dog_82449.jpg&f=1"];
        NSURL *image9 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimg.designswan.com%2F2012%2F09%2FbabyDog%2F4.jpg&f=1"];
        NSURL *image0 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F25.media.tumblr.com%2Ftumblr_m6ccwcJYg91rovfvjo1_500.jpg&f=1"];
        
        _puppyURLs = @[image1, image2, image3, image4, image5, image6, image7, image8, image9, image0];
    }
    return _puppyURLs;
}

- (NSArray *)sealURLs {
    if (!_sealURLs) {
        NSURL *image1 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F3.bp.blogspot.com%2F-kzqpnow3qwI%2FT4gyarVk4JI%2FAAAAAAAAEbg%2F94AWQ2FmExo%2Fs1600%2FBaby%2BSeal%2B3..jpg&f=1"];
        NSURL *image2 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2F4.bp.blogspot.com%2F-zzbW8iw9UEU%2FT4gyT6z7N4I%2FAAAAAAAAEbY%2F4Mx9ZHhinJA%2Fs1600%2FBaby%2BSeal..jpg&f=1"];
        NSURL *image3 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwallpapers.freewallpapers.im%2Fimages%2F2011%2F01%2F1280x1024%2Fbaby-seal-1092.jpg&f=1"];
        NSURL *image4 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.mrwallpaper.com%2Fwallpapers%2FCute-Baby-Seal.jpg&f=1"];
        NSURL *image5 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fheroeswallpapers.com%2Fwp-content%2Fuploads%2F2012%2F12%2Fbaby-seal-wallpaper.jpg&f=1"];
        NSURL *image6 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fcdn.hdwallpaperspics.com%2Fuploads%2F2013%2F01%2FBaby_Seal.jpg&f=1"];
        NSURL *image7 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fimages.picturesdepot.com%2Fphoto%2Fb%2Fbaby_seal-206419.jpg&f=1"];
        NSURL *image8 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fgailshamezarajgor.files.wordpress.com%2F2011%2F04%2Fifawwhitecoat.jpg&f=1"];
        NSURL *image9 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwtfoodge.com%2Fwp-content%2Fuploads%2F2010%2F06%2Fbaby-white-seal.jpg&f=1"];
        NSURL *image0 = [NSURL URLWithString:@"https://images.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.lovethispic.com%2Fuploaded_images%2F8926-Baby-Seal.jpg&f=1"];
        
        _sealURLs = @[image1, image2, image3, image4, image5, image6, image7, image8, image9, image0];
    }
    return _sealURLs;
}

#pragma mark - Actions
- (IBAction)changeImagesPressed:(UIButton *)sender {
    [self showNextSetOfImages];
}

#pragma mark - Helpers
- (void)showNextSetOfImages {
    if (self.currentImages == self.kittenURLs) {
        self.currentImages = self.puppyURLs;
    } else if (self.currentImages == self.puppyURLs) {
        self.currentImages = self.sealURLs;
    } else {
        self.currentImages = self.kittenURLs;
    }
    [[SDWebImagePrefetcher sharedImagePrefetcher] prefetchURLs:self.currentImages];
}

@end
