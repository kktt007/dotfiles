###
 # @Author: your name
 # @Date: 2021-09-29 14:16:05
 # @LastEditTime: 2021-09-29 14:20:41
 # @LastEditors: Please set LastEditors
 # @Description: In User Settings Edit
 # @FilePath: \ssr-decoded:\github\script\sort name.sh
### 
for filename in `ls | sort -n`
do
  echo "${filename}"
done