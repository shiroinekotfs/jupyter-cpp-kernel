# Install GCC on Windows

## Preface

C++ kernel for Jupyter is mainly supported for Linux and macOS, so keeping on Windows requires additional setup for the C++ kernel on the Windows platform.

We apologize for this extra setup bothers you >.<

## Download and extract GNU Compiler Collection (GCC) for Windows

To install GCC, you may need to download some compilers from [WinLibs](https://winlibs.com/). Scroll down to download one of these compilers:

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/282f685d-16da-46d4-8f02-f72791a76c68)

> I recommend downloading the latest GCC version (in `.zip` format), with all the features.

Once downloaded, extract it into any folder that makes GCC stay for a long time. (`Downloads`, `Documents`, and `temp` folders are not recommended, because any of those can be deleted easily (by accident, or by system cleanup features).

> In this demonstration, I extract the folder into `C:\`

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/479463ed-cfb8-47fc-9a4c-5bac998603f1)

Once extracted, go to the folder you just extracted, then go to the `bin` folder. If you can see the `g++.exe` and `gcc.exe`, you are looking good!

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/b578afca-beb6-4f76-93ab-d1d08a4f7c6e)

## Add to path binary folders of GCC for Windows

On your keyboard, press `Windows key + R` to see the run dialog, then enter `SystemPropertiesAdvanced.exe`. You may see this window appear:

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/67aab7ca-633e-46a2-83f9-da66d7f03925)

Click on the `Environment Variables...`, and you will see the `Environment Variables` dialog open.

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/744ef024-2151-4a94-913e-a56501a0ea6f)

In the `System variables, scroll down to see `Path` Variable, then click `Edit`

Add `New` variable, copy the GCC `bin` path to the variable, then paste it into the variable

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/d7ba803a-453a-45d6-9cdd-80e1340e684e)

Once you have done this, click `Ok` to save all changes.

## Check the installed `GCC`

If you are unsure whether the GCC is installed properly or not, try this command on the Command Prompt

```cmd
gcc -v
g++ -v
```

![image](https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/c1ad1174-82fa-4dac-b7a5-952569f4db75)
