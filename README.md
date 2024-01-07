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
         - activate_new.bat    The revision of activate. bat created by venv .
## Script Description 
- run.bat calls activate_new.Bat and the original deactivate.Bat.
- run.bat automatically generates the correct miss v2/venv/pyvenv. cfg
- The modification of the activate_new.bat is relative to the activate.bat created by pyvenv 
	- Change line 11 to: set VIRTUAL_ ENV=%~dp0 
	- Change lines 18 and 27 to use the first command line parameter passed in as the prompt for venv. 
		- 18 set PROMPT=(% 1) 
		- 27 set VIRTUAL_ ENV_ PROMPT=(% 1) 

## Usage
- Download the pyvenv - clone package and unzip it.
- Copy your project source code to the src subdirectory of pyvenv clone.
- Copy the complete directory and files under the virtual environment directory created by the venv that your project depends on from the Python installation directory to the venv subdirectory of the pyvenv clone.
- Install the Python version used in your project to a new directory. After installation is complete, copy the complete directories and files from that directory to the Python 3 subdirectory of pyvenv clone.
- Modify run BAT, usually you only need to modify the two lines in Section 1.
- Run run Bat, observe if the project can run normally.
- Congratulations! You have received a green version of the project.

## 概览
- pyevnv-clone 是一个使得 python venv 建立的环境可以独立运行的脚本。它通过自动获取和配置相关路径和生成正确的 pyvenv. cfg 文件，来适配 pyvenv 的需要，从而使得 pyvenv 能顺利运行。
- 目前只在 windows 下运行。
## 目录和文件说明
- run. bat          主文件，可根据需要编辑。
   - python3           python 安装包的绿色版。
   - src               你的项目的源文件。
   - venv              python venv 建立的虚拟环境下的所有目录和文件。
      - Scripts
         - activate_new.bat    pyvenv 的 activate. bat 的改版。
 ## 脚本说明
- run.bat 调用 activate_new.bat 和原版的 deactivate.bat 
- activate_new.bat相对于pyvenv 创建的activate. bat 的修改 
	- 11 行改为了：set VIRTUAL_ENV=%~dp0\..
	- 18，27 行改为使用传入的第一个命令行参数作为 venv 的提示。
		 - 18 set PROMPT=(%1) ...
		 - 27 set VIRTUAL_ENV_PROMPT=(%1)
 - run. bat 自动生成正确的 mist-v2/venv/pyvenv. cfg
 ## 使用方法
- 下载 pyvenv-clone 包并解压。
- 复制你的项目源代码到 pyvenv-clone 的  src 子目录。
- 从 python 安装目录中，将你的项目所依赖的 venv 建立的虚拟环境目录之下的目录和文件完整地复制到 pyvenv-clone 的 venv 子目录。
- 安装你的项目所使用 python 版本到一个新的目录，安装完成后，把该目录的文件完整地复制到 pyvenv-clone 的 python3 子目录。
- 修改 run. bat，通常你只需要修改第 1 节的那两行。
- 运行 run. bat，观察项目是否能正常运行。
- 祝贺！你获得了该项目一个绿色版的安装包。
