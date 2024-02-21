#import "@preview/touying:0.2.1": *

#let s = themes.university.register(s, aspect-ratio: "16-9")
#let s = (s.methods.info)(
  self: s,
  title: [C语言程序设计],
  // subtitle: [],
  author: [卓能文],
  date: datetime.today(),
  institution: [智能科技学院],
)
#let (init, slide, slides, title-slide, focus-slide, matrix-slide, touying-outline, alert) = utils.methods(s)
#show: init

#show: slides

== 环境安装

1. msys2: https://www.msys2.org/ https://github.com/msys2/msys2-installer/releases/download/2024-01-13/msys2-x86_64-20240113.exe
2. visual studio code: https://code.visualstudio.com/ 下载并安装合适版本

== 编辑、编译、运行

```c
#include <stdio.h>

int main() {
    printf("Hello, World!");
    return 0;
}
```

== 注释

在C语言中，注释语句用于对代码进行解释和说明，可以提高代码的可读性和可维护性，不会被编译器执行。C语言有两种注释方式：

单行注释：使用\//开头，后面的内容直到该行结束都被视为注释。
        
```c
// 这是一个单行注释
int a = 10; // 定义一个整型变量a并赋值为10
```
    
多行注释：使用\/\*开头，\*\/结尾，中间的内容都被视为注释。

```c
/*
这是一个多行注释
可以跨越多行
*/
int b = 20;
```

== 变量定义

在C语言中，变量定义是指为变量分配内存空间并指定其数据类型。变量定义的基本语法如下：

数据类型 变量名；

例如，定义一个整型变量age，可以这样写：

```c
int age;
```

== 变量赋值

在C语言中，变量赋值是指将一个值赋给变量。变量赋值的基本语法如下：
变量名 = 值；

例如，将变量age的值赋为20，可以这样写：

```c
age = 20;
```

== 变量输出

在C语言中，输出变量可以使用`printf()`函数。例如：

```c
#include <stdio.h>

int main() {
    int num = 10;
    printf("num的值为：%d", num);
    return 0;
}
```
其中，`%d`表示输出整数类型的变量，如果需要输出其他类型的变量，可以使用相应的格式控制符。

== 条件语句

在C语言中，条件语句用于根据指定的条件执行不同的代码块。条件语句的基本语法如下：

if (表达式) {
    // 如果表达式的值为真，则执行这里的代码块
}

例如，定义一个整型变量age，并将其赋值为20，然后使用条件语句判断age是否大于18：

```c
int age = 20;

if (age > 18) {
    printf("你已经成年了！\n");
}
```

在C语言中，条件语句通常使用if、else if和else关键字。例如：

```c
#include <stdio.h>

int main() {
    int num = 10;
    if (num > 5) {
        printf("num大于5");
    } else if (num == 5) {
        printf("num等于5");
    } else {
        printf("num小于5");
    }
    return 0;
}
```
在这个例子中，程序首先判断num是否大于5，如果是则输出“num大于5”，否则继续判断num是否等于5，如果是则输出“num等于5”，否则输出“num小于5”。

== while语句

在C语言中，循环语句用于重复执行一段代码。循环语句的基本语法如下：

while (表达式) {
    // 重复执行这里的代码块
}

例如，定义一个整型变量i，并将其赋值为0，然后使用循环语句重复执行代码块，直到i大于等于10：

```c
int i = 0;

while (i < 10) {
    printf("i的值为：%d\n", i);
    i++;    
}
```

== for语句

在C语言中，for语句用于循环执行一段代码。它的基本语法如下：

```c
for (初始化表达式； 条件表达式； 更新表达式) {
    // 循环体
}
```

其中，初始化表达式用于设置循环变量的初始值；条件表达式用于判断是否继续执行循环体；更新表达式用于更新循环变量的值。例如，下面的代码使用for语句输出1到10的数字：

```c
#include <stdio.h>

int main() {
    for (int i = 1; i <= 10; i++) {
        printf("%d ", i);
    }
    return 0;
}
```

在这个例子中，i是循环变量，初始值为1，每次循环后增加1，直到i大于10时停止循环。

== break语句

在C语言中，break语句用于跳出循环或者switch语句。当程序执行到break语句时，会立即退出当前所在的循环或switch语句，继续执行后面的代码。例如：

```c
#include <stdio.h>

int main() {
    for (int i = 0; i < 10; i++) {
        if (i == 5) {
            break;
        }
        printf("%d ", i);
    }
    return 0;
}
```

这个例子中，程序使用for语句输出0到9的数字。当i等于5时，程序执行到break语句，立即退出循环，不再输出数字。因此，程序只输出0到4的数字。

== continue语句

在C语言中，continue语句用于跳过当前循环的剩余部分，直接进入下一次循环。当程序执行到continue语句时，会立即跳过当前循环体中continue后面的代码，并开始下一次循环。例如：

```c
#include <stdio.h>

int main() {
    for (int i = 0; i < 10; i++) {
        if (i % 2 == 0) {
            continue;
        }
        printf("%d ", i);
    }
    return 0;
}
```

这个例子中，程序使用for语句输出0到9的数字。当i是偶数时，程序执行到continue语句，跳过本次循环的剩余部分，直接进入下一次循环。因此，程序只输出奇数0到9的数字。

== 函数

在C语言中，函数是指一组语句的集合，用于完成特定的任务。函数的基本语法如下：

返回值类型 函数名(参数列表) {
    // 函数体
    return 返回值;
}

例如，定义一个函数add，用于计算两个整数的和，可以这样写：

```c
int add(int a, int b) {
    int sum = a + b;
    return sum;
}
```

== 数组

在C语言中，数组是指一组相同数据类型的元素的集合。数组的基本语法如下：

数据类型 数组名[元素个数];

例如，定义一个包含5个整型元素的数组numbers，可以这样写：

```c
int numbers[5];
```

== 指针

在C语言中，指针是指向内存地址的变量。指针的基本语法如下：

数据类型 \*变量名;

例如，定义一个指向整型变量的指针p，可以这样写：

```c
int num = 10;
int *p = &num;
```

== 字符串

在C语言中，字符串是指一组由空字符'\0'分隔的字符。字符串的基本语法如下：

char 数组名[字符个数 + 1];

例如，定义一个包含5个字符的字符串str，可以这样写：

```c
char str[6] = "Hello";
```

== 结构体

在C语言中，结构体是指一组不同数据类型的元素的集合。结构体的基本语法如下：

struct 结构体名 {
    成员1类型 成员1名;
    成员2类型 成员2名;
    ...
};

例如，定义一个包含两个整型变量的结构体Person，可以这样写：

```c
struct Person {
    int age;
    char name[20];
};
```

== 文件操作

在C语言中，文件操作是指对文件进行读取、写入、删除等操作。文件操作的基本语法如下：

```c
FILE *fopen(char *filename, char *mode);
```

例如，打开一个名为"example.txt"的文件，可以这样写：

```c
FILE *file = fopen("example.txt", "r");
```

== 指针和数组

在C语言中，指针和数组是两种不同的数据类型，但它们之间存在一些相似之处。指针和数组都可以用来存储多个相同数据类型的元素。指针和数组都可以通过下标来访问其中的元素。

例如，定义一个包含5个整型元素的数组numbers，可以这样写：

```c
int numbers[5];
```

定义一个指向整型变量的指针p，可以这样写：

```c
int num = 10;
int *p = &num;
```

== 函数和指针

在C语言中，函数和指针是两种不同的概念，但它们之间存在一些相似之处。函数可以作为参数传递给其他函数，也可以作为返回值返回。指针可以指向函数，也可以通过函数指针调用函数。

例如，定义一个函数add，用于计算两个整数的和，可以这样写：

```c
int add(int a, int b) {
    return a + b;
}
```

定义一个指向函数的指针p，可以这样写：

```c
int (*p)(int, int);
```

== 函数和数组

在C语言中，函数和数组是两种不同的概念，但它们之间存在一些相似之处。函数可以作为参数传递给其他函数，也可以作为返回值返回。数组可以作为参数传递给其他函数，也可以作为返回值返回。

例如，定义一个函数printArray，用于打印数组中的元素，可以这样写：

```c
void printArray(int arr[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
}
```

定义一个函数sumArray，用于计算数组中的元素之和，可以这样写：

```c
int sumArray(int arr[], int size) {
    int sum = 0;
    for (int i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum;
}
```
