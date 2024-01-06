# pyvenv-clone

## 概览
- pyevnv-clone 是一个使得 python 的 venv 建立的环境可以独立运行的脚本。它通过自动获取和配置相关路径和生成正确的 pyvenv. cfg 文件，来适配 pyvenv 的需要，从而使得 pyvenv 能顺利运行。
- 目前只在 windows 下运行。
## 目录和文件说明
- \\--run. bat          主文件，可根据需要编辑。
   └--python3           python 安装包的绿色版
   └--src               你的项目的源文件
   └--venv              python venv 建立的虚拟环境的所有目录和文件
      └--Scripts
         └--activate. bat    pyvenv 的activate. bat 的改版，
 ## 脚本说明
- run. bat 调用 activate. bat 和原版的 deactivate. bat 
-  pyvenv 的activate. bat 的修改 
	- 11 行改为了：set VIRTUAL_ENV=%~dp0\..
	- 18，27 行改为使用传入的第一个命令行参数作为 venv 的提示。
		 - 18 set PROMPT=(%1) ...
		 - 27 set VIRTUAL_ENV_PROMPT=(%1)
 - run. bat 自动生成正确的 mist-v2/venv/pyvenv. cfg
 
