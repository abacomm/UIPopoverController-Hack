#import "MainViewController.h"
#import "PopoverViewController.h"

@interface MainViewController ()

@property (nonatomic, strong) UIPopoverController *popoverCtrl; //_popoverController is already declared by UIViewController.

@end

@implementation MainViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUIElements];
}

- (void)initUIElements {
    UIBarButtonItem *popoverButton = [[UIBarButtonItem alloc] initWithTitle:@"Open" style:UIBarButtonItemStylePlain target:self action:@selector(popoverButtonTapped:)];
    self.navigationItem.rightBarButtonItem = popoverButton;
}

- (void)popoverButtonTapped:(UIBarButtonItem *)barButtonItem {
    if (!self.popoverCtrl || !self.popoverCtrl.isPopoverVisible) {
        PopoverViewController *popoverViewController = [[PopoverViewController alloc] init];
        self.popoverCtrl = [[UIPopoverController alloc] initWithContentViewController:popoverViewController];
        [self.popoverCtrl presentPopoverFromBarButtonItem:barButtonItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    } else {
        [self.popoverCtrl dismissPopoverAnimated:YES];
    }
}

- (NSString *)title {
    return @"PopoverHack";
}

@end
