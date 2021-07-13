# custom_loading_button 

Add the plugin:

```yaml
dependencies:
  ...
  custom_loading_button: ^0.0.1
```
 
![](/screenshots/demo1.gif)

![For more detailed reading](https://github-readme-medium-recent-article.vercel.app/medium/@edvaldonuniomartins/flutter-customloadingbutton-93a4c76b31d0)

![Also visit customized to see the other customizations](https://github.com/EdvaldoMartins/customized)

<a target="_blank" href="https://github-readme-medium-recent-article.vercel.app/medium/@edvaldonuniomartins/flutter-customloadingbutton-93a4c76b31d0"><img src="https://github-readme-medium-recent-article.vercel.app/medium/@edvaldonuniomartins/flutter-customloadingbutton-93a4c76b31d0" alt="Flutter - CustomLoadingButton"> 

# Basic Usage 

```dart
    CustomLoadingButton(
      text: 'UPLOAD',
      isLoading: _isLoading,
      borderRadius: BorderRadius.circular(16.0), 
      onPressed:(){},
    )
```

There are situations where you want to use a different icon or other widget in place of ```Text``` that is used here to display the text on the button

**buildCustom**
  - **Note:** When you use ```buildCustom``` to replace ```Text``` with another widget the text field should be null

```dart
    CustomLoadingButton( 
      isLoading: _isLoading,
      borderRadius: BorderRadius.circular(16.0),
      buildCustom: (context){
        return //Widget...
      },
      onPressed:(){},
    )
```
For loading ```CircularProgressIndicator``` is used but you can make the case the if you want to use another widget for example: ```flutter_spinkit```

![](/screenshots/demo2.gif)

**buildCustomLoading**

```dart
    CustomLoadingButton(
      text: 'UPLOAD',
      isLoading: _isLoading,
      borderRadius: BorderRadius.circular(16.0),
      buildCustomLoading: (context) {
        return SpinKitThreeBounce(
        color: Colors.blue,
        size: 30.0,
        );
      },
      onPressed:(){},
    )
```

You use the ```buildCustom``` and ```buildCustomLoading``` at the same time

## Don't forget to give it a ⭐ this motivates me to share more open source.
