# esp-nodemcu-lua-uploader
Scripts for fast uploading many files at once into NodeMCU ESP modules.

_**Note:** The original Python script for fast file uploading was written and shared by **Markus Gritsch** in article [**Lightning-Fast File Uploads**](http://www.esp8266.com/viewtopic.php?f=22&t=1026&start=16) on [ESP8266 Community Forum](http://www.esp8266.com).
The original scripts along with some usage instructions are stored for convenience at: https://github.com/dev-lab/esp-nodemcu-lua-uploader-org ._

## Installation

1. Make sure that Python 2.7 and pyserial are installed.
2. Copy the content of this repository into some directory on the local drive, e.g.: `C:\Proggy\ESP8266\uploader`.
3. Change the environment variable `ESP_LUA_PYTHON_DIR` in [`uploader.bat`](uploader.bat) to point to the directory where the python scripts are installed.
4. Copy [`uploader.bat`](uploader.bat) to the directory from where you are going to execute it (or make it available in any convenient directory listed in `PATH` environment variable).
5. In case if your NodeMCU module is flashed with older NodeMCU (e.g. `0.9.5`) change [`uploader.bat`](uploader.bat) to invoke [uploader.py](uploader.py) instead of [uploader1.py](uploader1.py) ([uploader1.py](uploader1.py) is a patched script which works ok with new NodeMCU firmware built using [NodeMCU custom builds](http://nodemcu-build.com/)).
6. Modify `com_port` variable in [uploader1.py](uploader1.py) (or [uploader.py](uploader1.py) if required) to point to serial port which is connected with NodeMCU ESP8266 module.

## Usage

* Configure your ESP module to communicate on 115200 baud rate as described in https://github.com/dev-lab/esp-nodemcu-lua-uploader-org , or change the `baud_rate` variable in [uploader1.py](uploader1.py) to baud rate supported by your ESP module.
* Pass to [`uploader.bat`](uploader.bat) the directory with files to upload to NodeMCU ESP module and watch the process in console window. In case of error you will see the corresponding message.



