# SwiftUI 계산기 예제

## 프로젝트 소개

이 프로젝트는 SwiftUI를 사용하여 구현된 간단한 계산기 애플리케이션입니다. 기본적인 사칙연산 기능을 제공하며, iOS 기기에서 동작하도록 설계되었습니다. MVVM(Model-View-ViewModel) 디자인 패턴을 적용하여 코드의 유지보수성과 확장성을 높였습니다.

## 주요 기능

- **기본 사칙연산**: 덧셈, 뺄셈, 곱셈, 나눗셈을 포함한 기본적인 계산 기능을 수행합니다.
- **숫자 및 소수점 입력**: 숫자와 소수점을 입력하여 정확한 계산을 할 수 있습니다.
- **지우기(Clear) 기능**: 현재 입력된 값 또는 전체 계산 기록을 지울 수 있습니다.
- **부호 변경**: 현재 숫자의 부호를 양수에서 음수로, 또는 그 반대로 변경할 수 있습니다.
- **퍼센트 계산**: 입력된 숫자의 퍼센트를 계산할 수 있습니다.
- **반응형 UI**: SwiftUI를 활용하여 다양한 화면 크기 및 방향에 유연하게 대응하는 사용자 인터페이스를 제공합니다.

## 사용된 기술

- **SwiftUI**: Apple의 선언형 UI 프레임워크로, 사용자 인터페이스를 구축하는 데 사용되었습니다.
- **Swift**: Apple 플랫폼을 위한 강력하고 직관적인 프로그래밍 언어입니다.
- **MVVM 패턴**: Model-View-ViewModel 디자인 패턴을 적용하여 UI와 비즈니스 로직을 분리하고, 테스트 및 유지보수를 용이하게 합니다.

## 프로젝트 구조

```
SwiftUICalculatorExample/
├───SwiftUICalculatorExampleApp.swift  // 앱 진입점
├───Model/
│   └───CalculatorKey.swift           // 계산기 키의 데이터 모델 정의
├───View/
│   ├───ButtonView.swift              // 개별 계산기 버튼 UI 컴포넌트
│   ├───CalculatorButton.swift        // 계산기 버튼의 스타일 및 동작 정의
│   ├───Color+Extension.swift         // 앱에서 사용되는 커스텀 색상 정의
│   ├───ContentView.swift             // 메인 계산기 UI 뷰
│   └───DisplayValueView.swift        // 계산 결과를 표시하는 뷰
└───ViewModel/
    └───CalculatorViewModel.swift     // 계산 로직 및 상태 관리
```

