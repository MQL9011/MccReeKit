# MccReeKit

[![CI Status](http://img.shields.io/travis/MQL9011/MccReeKit.svg?style=flat)](https://travis-ci.org/MQL9011/MccReeKit)
[![Version](https://img.shields.io/cocoapods/v/MccReeKit.svg?style=flat)](http://cocoapods.org/pods/MccReeKit)
[![License](https://img.shields.io/cocoapods/l/MccReeKit.svg?style=flat)](http://cocoapods.org/pods/MccReeKit)
[![Platform](https://img.shields.io/cocoapods/p/MccReeKit.svg?style=flat)](http://cocoapods.org/pods/MccReeKit)

## Example

一些常用的UIButton,UILabel,UIColor,UIView等扩展类,方便快速开发.

- 比如快速创建btn

```
    UIButton *btn = [UIButton createButtonTitleColor:[UIColor colorWithHexString:@"2E3D4A"]
                                            fontSize:15
                                        cornerRadius:5
                                         borderWidth:1];
```

- 快速创建lab

```
    UILabel *lab = [UILabel createLabelColor:[UIColor redColor] FontSize:15];
    lab.text = @"MccRee";

```

## Requirements

无

## Installation



```
pod 'MccReeKit'
```

## Author

[MccRee](http://cocomccree.cn/)

## License

MccReeKit is available under the MIT license. See the LICENSE file for more info.
