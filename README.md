MRCircularProgressView
--------------------

Custom circular `UIView` that allow set progress similar to AppStore control.

<p align="center"><img src="https://raw.github.com/martinezdelariva/MRCircularProgressView/master/video.gif"><p>


## API Reference

- Custom animation duration.
- Custom color.
- Custom progress width.

Please refer to the header file [`MRCircularProgressView.h`] for a complete overview of the capabilities of the class.

## Installation

Copy files `MRCircularProgressView.h` and `MRCircularProgressView.m` from folder `/MRCircularProgressView/MRCircularProgressView/` into your project.

## Usage

Create `MRCircularProgressView` as any other `UIView` item.

```objc
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    MRCircularProgressView *circularProgressView = [[MRCircularProgressView alloc] initWithFrame:self.view.frame];
    [circularProgressView setBackgroundColor:[UIColor whiteColor]];
    [circularProgressView setProgress:1.0f animated:YES];
    
    [self.view addSubview:circularProgressView];
}
```

## Requirements

- iOS >= 7.0
- ARC


## License

MRCircularProgressView is available under the MIT license. See the LICENSE file for more info.