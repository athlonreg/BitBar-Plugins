#!/bin/bash

clover="iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAADMUlEQVQ4EV1TXYhVVRRe++ecs8+5P3MdjdFpNEWxhwgcyHFQKSeKoIeopx5EiZ56MCKCIYLJ+xTRQz31IMFI+GAg+lRBJcwUFBlZgQmalH8z4yTjvd57fva++7e9ryjSejrr51vft9baB8H/bO7r1iTL8AZVwbn2i51+SLePAyNbRvYaS6r2852fH4agh525s+PvN1rwHsKQDDj80V11L5t+0hvdIc+wzM2AA1MV6Fj7wMoRj3MBS+43mD09No2y2mdKJ4zzCGiabBQCFxCjzWkrfbPMI5AqxsZFu/e8ws7/9EX+V8Cidhuw2T9xNGu4twueNYoiG/akCQbRkyeMtrfqG9isEtZTIshSDs16yXmBPr905+Zb9J+xnU89oumc6CPkrNdoCXDBgBoMAx5ZI52FjIESBpJYglYEur2RlETojVqHfUeLPtuYVE1ktfMMgQNA6RiEYSCqAVhpwFYZID0YKhMyDsIhYgR6ZT5Bl27IH0299nvSSietscOi0MSRGMoqio3SETF1AOubisYQjDACdUdcX1viXw6vsOPggYn120YPEYo3WXuvCSEUZCnOGe16aYu9YLRxEFIU+2a2013qnrw8v3CZBsrXD/46iEYp97xiiPeFlGHEe0oai1V9HRFa+gX5uD8xQgi4MZK/O+/91z7Z2hp/En1TX4enwh7uG6tZuHtLnrQKVtY/Fr/DC88czGvG/rPqw9+da2iG6iTdV6lsKl8O+sLrQBBHEjKp/Q5iaZRVpBtBlfurqMRn75FEKdmeC/4S7d5Ouq7ZdBgjFOSniZ/Em60YFJUGqxyQMgKlLAxkApVI/QxeBcew1rFr5Mri6sr49OOpdI1JQmxEiQ4vDrT1xTm54M9W4jjdJwQFZ9FQRV42ZH/Nnvjz/NWPh1cIjFNHnn52y670Kxxh5vzCaUqhuF19aJW52Xy08anm2tP6cj/Bv1fEqz98sHDKw9yDf2H5l+tXN03vzAypTSubkKrnLt5dlrO9lfw3SEb2G5JtVjK2ZUcfXzj67UdhykD8QEFwgj1x+JmZOKNj3Uuri9cWL66GWGvX1ta2Pduf00qXF+a/P+tDKsSD/Qe1opHQFKVV5QAAAABJRU5ErkJggg=="
err="iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAQAAABLCVATAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JQAAgIMAAPn/AACA6QAAdTAAAOpgAAA6mAAAF2+SX8VGAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAAFiUAABYlAUlSJPAAAAAHdElNRQfiBQsGEQIx4ybWAAABbklEQVRIx92WoU/DUBCHvyNTQFKP2X/QgSaVI5hKXBMUUyQ4SJieALeECeZIZhrkzJK6LWjIDHoT+CYMewhgfS1vK+0mFk69l7v78rvfe3mtKOuJrTVx/jOokiwFoE6DfXZyuma80CWC5KhETdAVFwVEtLmxg+o8FJznVCObR43CxhgdhkfULKUxQ6aAi2fJ1uyg3V+FLe3MB69yjZ/JGx2mR2+ZskvtgTi4xDoGkDCrS/dsHqVjpD2QgFdCBhICcLfYrsWgIQDN750nPuioDGgM4uHM9y5Lo7Iw05TYwEAfxCkDSito6RgIyoDM+Do/l/MyHplqeiA+IaVG+4mRdkB87peX5SvqA3CbV5YPmmSuQenRstegtCKHyV9AeYomHGssDgOqqymaagwaMy0y2rsl70kAElifNZglS/M9euQw34tUPOmJTVG3ICbVYYIi2oUwbaJkk/6uwRFnHLCdg/jgeckHcrXYvJ+IzQN9Ak4fWFFvEqRoAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTA1LTEwVDIyOjIxOjU5KzA4OjAwVEb/dwAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0wNS0xMFQyMjoxNzowMiswODowMPsACxMAAAAASUVORK5CYII="

tag=$(curl -s https://api.github.com/repos/CloverHackyColor/CloverBootloader/releases/latest | grep tag_name | sed 's/[^0-9]//g')
#catalog=$(curl -s https://api.github.com/repos/CloverHackyColor/CloverBootloader/releases/latest | grep body | awk -F '"' '{print $4}')
catalog=$(curl -s https://api.github.com/repos/CloverHackyColor/CloverBootloader/commits | grep message | awk -F 'message": "' '{print $2}' | sed 's/",//g' | sed -n 1p)
zh_log=$(curl -s "http://translate.google.cn/translate_a/single?client=gtx&dt=t&dj=1&ie=UTF-8&sl=auto&tl=zh_CN&q=$(echo "$catalog"|tr -d '\n'|xxd -ps|sed 's/\(..\)/%\1/g'|tr -d '\n')" | awk -F '"' '{print $6}')

echo "|image=$clover"
echo "---"
echo "最新版本: " $tag
echo "---"
echo "更新日志: " $catalog
echo "---"
echo "中文日志: " $zh_log
