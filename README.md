A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## 概述

基于 Dio 的 Restful API 的封装。大概参照 Swift 中 Moya 对 Alamfire 的封装。

## 框架结构

- target_type
- task
- endpoint

## 开发记录

当前开发进度和下一步计划。

- 1.2
  进度：

基本完成 request 的组装。

待处理：

- [ ] 完善基础框架
- [ ] 输出 Dio 的结构图，输出 Dio 相关文章
- [ ] 画出一份架构图
- [ ] HTTP 相关基础的构建，输出一批 HTPP 相关的文章

下一步计划：

完成 response 的部分。

## Usage

A simple usage example:

```dart
import 'package:noya/noya.dart';

main() {
  var awesome = new Awesome();
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
