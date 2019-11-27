#!/bin/bash

oc="iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAGKADAAQAAAABAAAAGAAAAADiNXWtAAADo0lEQVRIDe1UTWhcVRT+zn0/82YmaX6oLQSCP2CpFoSqmBqkMBslLUgXVhQquLEWwV0pdFEZBNFFXHXhxoILUcxCakMXIghFF0JbpdXYgGITpWODSUhm4sx77/4czxt5dV6SJuC6F2bOffec833n3HPOBe6tbW6AttHfUT905cqAbaNCUZmbrtVePnCgeUe5xWZbgl2Xbox7IQ5TyX8c5EbJc0yBNwfYywr64u+PPHZ1C3zclWD3l9d2cRi9pcrBMQrVACkHIgN4AJUUKJOeW0Qan1NrS+/N7a+tbEa0KcHuzwV8oPIRhf4EoAHWXUDlO8AXYJEUEFQkH0KmEjvlz4av/Xro4Q3Xptaz7puaCW21/LYgTHA7BicStRUr5YHKFVBFfqEPUgy2GpzGQOC9SC1z5ihY8iquDQS3fTwDq151cQqXATsCqxAw+I1j/SEbc05SmqeynAUZL4uNgVrxTvx4ZvapIrzoCwf1uoRWep6pVHKpBUvwzIKi7ccqDmqNuesnGjf2vO6RrbHmTz0Wc03wrwtQq9zHVe8I6lzAlEv8b/XveXkQDmMQcIkYHARwiZvprK6dar/y5J+55Txwc/Ts7ElVtftVGu2lRQkmFAdST+/b8fPgDLCc2xbZfFOxxo7a1MBJbcULaPJ0L3ju+MebexuYx3m35MOyhbEprDMPxFyq5jaZLGTAmkii+PfeLcGlknoz+998pcrEXta3Uiy2WcryYV0h6MKHSYI2s3eL5W6FDC62sM32xNDxqYH1FPe9MdVndfKs0R0Yo2Gck2azt9vZQc8qEKx99/WKtPxlCAGMjEgikanwCdM3fHrnqW/7c7+R49MVHhw9Kdoxk3YkaCulyxIxPyws3VrN7TK5YdB2fPDLcwj9abbSPtbJHEjBGwsMo78h4guklFPkHxZZU0LfjVBmRPmB8bQ+2nh3/HwvQaEGmaIZ+Zf6U/4MXnisO0QkbTowTG5l8aBy7iBT5iK9r5NsRKCkZkoeK2f1NHTrq17wbL8hg+wwmvz+/qAy9AlTNI4kkXkQwE4Mu/qX9H1bnFwXmLLpDqsgdtec0S+13q/NZv69a1OCzCA6O/dgyN47Dv4L0hxBtx7SvkhiaeFUHj7pHisvK3sXjbOn08lHf+oFzvd3Jega1GfC/r7KIaeiI0jdmDT7CKQCzgUL8k5clYG80El3foFJ+jsHXC+3Jsit6zejStkbVkkyBFciKy9PB2oZ9ZF2bnJP/u8b+Af7gJ79Hq5FhAAAAABJRU5ErkJggg=="
err="iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JQAAgIMAAPn/AACA6QAAdTAAAOpgAAA6mAAAF2+SX8VGAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAAFiUAABYlAUlSJPAAAAAHdElNRQfiBQsGEQIx4ybWAAABbklEQVRIx92WoU/DUBCHvyNTQFKP2X/QgSaVI5hKXBMUUyQ4SJieALeECeZIZhrkzJK6LWjIDHoT+CYMewhgfS1vK+0mFk69l7v78rvfe3mtKOuJrTVx/jOokiwFoE6DfXZyuma80CWC5KhETdAVFwVEtLmxg+o8FJznVCObR43CxhgdhkfULKUxQ6aAi2fJ1uyg3V+FLe3MB69yjZ/JGx2mR2+ZskvtgTi4xDoGkDCrS/dsHqVjpD2QgFdCBhICcLfYrsWgIQDN750nPuioDGgM4uHM9y5Lo7Iw05TYwEAfxCkDSito6RgIyoDM+Do/l/MyHplqeiA+IaVG+4mRdkB87peX5SvqA3CbV5YPmmSuQenRstegtCKHyV9AeYomHGssDgOqqymaagwaMy0y2rsl70kAElifNZglS/M9euQw34tUPOmJTVG3ICbVYYIi2oUwbaJkk/6uwRFnHLCdg/jgeckHcrXYvJ+IzQN9Ak4fWFFvEqRoAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA1LTEwVDIyOjIxOjU5KzA4OjAwVEb/dwAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNS0xMFQyMjoxNzowMiswODowMPsACxMAAAAASUVORK5CYII="

echo "|image=$oc"
#version=$(curl -s https://raw.githubusercontent.com/acidanthera/OpenCorePkg/master/Changelog.md | sed -n 3p | sed 's/#### //g')
version=$(curl -s https://github.com/acidanthera/OpenCorePkg/blob/master/Changelog.md | grep "v[0-9].*" | grep "<h4>" | sed -n 1p | awk -F '<\/a>' '{print $2}' | sed 's/<\/h4>//g')
catalog=$(curl -s https://api.github.com/repos/acidanthera/OpenCorePkg/commits | grep message | awk -F 'message": "' '{print $2}' | sed 's/",//g' | sed -n 1p)
zh_log=$(curl -s "http://translate.google.cn/translate_a/single?client=gtx&dt=t&dj=1&ie=UTF-8&sl=auto&tl=zh_CN&q=$(echo "$catalog"|tr -d '\n'|xxd -ps|sed 's/\(..\)/%\1/g'|tr -d '\n')" | awk -F '"' '{print $6}')

echo "---"
echo "最新版本: " $version
echo "---"
echo "更新日志: " $catalog
echo "---"
echo "中文日志: " $zh_log
