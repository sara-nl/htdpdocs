#!/bin/bash 

 # Copyright 2018 SURFsara B.V.
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 #     http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.

#!/bin/bash

# obtain information for the Worker Node
echo `date`
echo ${HOSTNAME}
echo ${HOME}
echo ${PWD}

# print a message
echo "Hi there"

# list final files and exit
ls -allh ${PWD}
exit 0
