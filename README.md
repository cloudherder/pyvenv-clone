# pyvenv-clone
Pyevnv clone is a script that allows Python's venv environment to run independently. 
pyevnv-clone 是一个使得 python venv 建立的环境可以独立运行的脚本。
## Overview 
- Pyevnv clone is a script that allows Python's venv environment to run independently. It automatically obtains and configures relevant paths and generates the correct pyvenv. cfg files are used to adapt to the needs of pyvenv, so that pyvenv can run smoothly. 
- Currently, it only runs under Windows. 
## Directory and file description 
- run. bat          The bat main file can be edited as needed. 
   - python3           Green version of Python installation package 
   - src               source files for your project 
   - venv              Python All directories and files of virtual environment created by venv
      - Scripts
         - activate.bat    The revision of activate. bat created by venv .
## Script Description 
- run.bat calls activate Bat and the original deactivate Bat.
- run.bat automatically generates the correct miss v2/venv/pyvenv. cfg
- Modification of activate.bat created by pyvenv
	- Change line 11 to: set VIRTUAL_ ENV=%~dp0 
	- Change lines 18 and 27 to use the first command line parameter passed in as the prompt for venv. 
		- 18 set PROMPT=(% 1) 
		- 27 set VIRTUAL_ ENV_ PROMPT=(% 1) 

## 概览
- pyevnv-clone 是一个使得 python venv 建立的环境可以独立运行的脚本。它通过自动获取和配置相关路径和生成正确的 pyvenv. cfg 文件，来适配 pyvenv 的需要，从而使得 pyvenv 能顺利运行。
- 目前只在 windows 下运行。
## 目录和文件说明
- run. bat          主文件，可根据需要编辑。
   - python3           python 安装包的绿色版。
   - src               你的项目的源文件。
   - venv              python venv 建立的虚拟环境下的所有目录和文件。
      - Scripts
         - activate.bat    pyvenv 的 activate. bat 的改版。
 ## 脚本说明
- run. bat 调用 activate. bat 和原版的 deactivate. bat 
-  pyvenv 创建的activate. bat 的修改 
	- 11 行改为了：set VIRTUAL_ENV=%~dp0\..
	- 18，27 行改为使用传入的第一个命令行参数作为 venv 的提示。
		 - 18 set PROMPT=(%1) ...
		 - 27 set VIRTUAL_ENV_PROMPT=(%1)
 - run. bat 自动生成正确的 mist-v2/venv/pyvenv. cfg
 
