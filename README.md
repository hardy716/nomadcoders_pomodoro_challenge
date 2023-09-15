|0. nomadcoder_pomodoro_challenge [🔻](https://github.com/hardy716/nomadcoders_pomodoro_challenge#-nomadcoder_pomodoro_challenge)|
|---|

|1. 코드 챌린지 [🔻](https://github.com/hardy716/nomadcoders_pomodoro_challenge#-코드-챌린지)|
|---|

<br></br>

## 🙌🏻 nomadcoder_pomodoro_challenge

using POMO | UIKIT by Omar Sherif

Flutter로 웹툰 앱 만들기 - #5 POMODORO APP 강의를 기반으로 진행했습니다.

노마드 코더와 함께 플러터 2주 챌린지에 도전하고 있습니다.

<br></br>

## 💪🏻 코드 챌린지

<br>

1. 재시작(reset) 기능 구현하기
  
```dart
void onResetPressed() {
  setState(() {
    isRunning = false;
    totalSeconds = twentyFiveMinutes;
  });
  timer.cancel();
}
```

일시정지 기능에서 `totalSeconds = twentyFiveMinutes;` 코드를 추가했습니다.

<br>

2. 재시작(reset) 버튼 생성하기

```dart
import '../widgets/icon_text_button.dart';

IconTextButton(
  buttonIcon: Icons.timer_off_outlined,
  buttonIconSize: 90.0,
  buttonText: 'reset',
  buttonColor: Theme.of(context).cardColor,
  onButtonPressed: onResetPressed,
)
```
```dart
import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData buttonIcon;
  final double buttonIconSize;
  final String buttonText;
  final double buttonTextSize;
  final Color buttonColor;
  final void Function() onButtonPressed;

  final bool isPrivate = true;

  const IconTextButton({
    super.key,
    required this.buttonIcon,
    required this.buttonIconSize,
    required this.buttonText,
    this.buttonTextSize = 16.0,
    required this.buttonColor,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: Icon(buttonIcon),
          iconSize: buttonIconSize,
          color: buttonColor,
          onPressed: onButtonPressed,
        ),
        Text(
          buttonText,
          style: TextStyle(
            fontSize: buttonTextSize,
            color: buttonColor,
          ),
        ),
      ],
    );
  }
}
```

`IconTextButton` 커스텀 위젯을 생성해서 재시작(reset) 버튼을 추가했습니다.

버튼 아이콘 하단에 기능을 설명하는 키워드 텍스트를 추가해 사용자가 버튼의 기능을 쉽게 이해할 수 있도록 했습니다.


<br></br>

완성된 결과는 아래와 같습니다.

코드 챌린지 이외에도 자유롭게 UI 변경 및 기능 추가를 해보았습니다.

<br>

|  |  |  |  |
|:---:|:---:|:---:|:---:|
| 1. pomodoro 타이머 시작 | 2. pomodoro 타이머 일시정지 | 3. pomodoro 타이머 재시작(리셋) | 4. pomodoro 카운트 초기화(삭제) |
| ![image1](https://github.com/hardy716/nomadcoders_pomodoro_challenge/assets/101140679/33d4d3a8-5636-4e52-ade9-c37c51033ede) | ![image2](https://github.com/hardy716/nomadcoders_pomodoro_challenge/assets/101140679/3db321b5-32c3-451f-a117-626f47a1c028) | ![image3](https://github.com/hardy716/nomadcoders_pomodoro_challenge/assets/101140679/fe56d446-9b34-4adf-83cd-4e7f8c1d63ae) | ![image4](https://github.com/hardy716/nomadcoders_pomodoro_challenge/assets/101140679/033c3820-bf89-4565-b59c-7bfc5f0e539f) |

