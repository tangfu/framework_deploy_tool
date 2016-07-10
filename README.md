# framework_deploy_tool
框架部署工具

【info】
1. 手动编译 cd build && cmake ..
2. 如果需要自动编译请用add_crontab.sh将自动部署添加到crontab中
3. 更新时会强制丢弃本地working copy的修改
4. 默认每小时整点检查更新

【notice】                                  
1. 限定目录 : 
    build_dir : UUUU.../build/{xxxx-1,xxxx-2,xxxx-3,...}
    source_dir : UUUU.../{xxxx-1,xxxx-2,...}
    deploy_dir : UUUU.../framework_deploy_tool

2. 限定用户 :
    ${FRAMEWORK_USER}
