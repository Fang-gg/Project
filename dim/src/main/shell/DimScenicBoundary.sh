#!/usr/bin/env bash
#***********************************************************************************
# **  文件名称: DimScenicBoundary.sh
# **  创建日期: 2021年11月19日
# **  编写人员: fangshitao
# **  输入信息:
# **  输出信息:
# **
# **  功能描述:景区配置表
# **  处理过程:
# **  Copyright(c) 2016 TianYi Cloud Technologies (China), Inc.
# **  All Rights Reserved.
#***********************************************************************************

#***********************************************************************************
#==修改日期==|===修改人=====|======================================================|
#
#***********************************************************************************
#获取脚本所在目录
shell_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#进入脚本目录
cd $shell_home

# 时间参数
day_id=$1

# \表示换行
spark-submit \
 --master yarn-client \
 --class com.fst.dim.DimScenicBoundary \
 --num-executors 1 \
 --executor-memory 4G \
 --executor-cores 2 \
 --jars common-1.0.jar \
 dim-1.0.jar $day_id