#!/bin/sh                                                                                                                           
                                                                                                                                    
exec 1>deploy.log                                                                                                                   
exec 2>deploy.err                                                                                                                   
                                                                                                                                    
base_dir=UUUU..../framework_deploy_tool                                                                       
                                                                                                                                    
svn up                                                                                                                         
cd build                                                                                                                            
cmake ..                                                                                                                            
make
