# konglog

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


#data
models/: 앱의 데이터 구조를 정의하는 모델 클래스.
datasources/local/: Hive와 직접 상호작용하여 데이터를 읽고 씀.
datasources/remote/: Server와 직접 상호작용하여 데이터를 읽고 씀.

#domain
repositories/: 데이터 소스를 추상화하여 ViewModel과 데이터 소스 간의 중간 역할.
viewmodels/: 상태 관리 및 로직 처리.

#view
views/: UI와 사용자 상호작용 처리.