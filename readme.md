# ADDON-glslCanvas

* shift + command + p

* 变量解释

    - uniform: uniform变量是外部程序传递给（vertex和fragment）shader的变量。因此它是application通过函数glUniform**（）函数赋值的。在（vertex和fragment）shader程序内部，uniform变量就像是C语言里面的常量（const ），它不能被shader程序修改。（shader只能用，不能改）。

      一般用来表示：变换矩阵，材质，光照参数和颜色等信息。

    - attribute: 只能在vertex shader中使用的变量。（它不能在fragment shader中声明attribute变量，也不能被fragment shader中使用）。
      来表示一些顶点的数据，如：顶点坐标，法线，纹理坐标，顶点颜色等。
    
    - varying: 在顶点着色器上和片面着色器上定义同一名字的变量，可实现 vertex shader 向 fragment shader 的变量传递。比如顶点传颜色值到片面。 
      顶点着色器中赋值给varying变量的值经过内插传给了片元着色器的varying变量。