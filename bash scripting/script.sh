#!/bin/bash
docker pull python

docker run -it python /bin/bash -c 'cat /etc/hosts && /HELLO_FROM_PYTHON_CONTAINER ' > temp_file
#Error message
echo "error messgae is " && cat temp_file | tail -1

#IP of container
echo "IP is " && cat temp_file | grep -i 172 | cut -f1

x=$(cat temp_file | grep -i 172 | cut -f2)

docker inspect -f '{{.Name}}' $x


#for GO
docker pull golang

docker run -it golang /bin/bash -c 'cat /etc/hosts && /HELLO_FROM_PYTHON_CONTAINER ' > temp_file
#Error message
echo "error messgae is " && cat temp_file | tail -1

#IP of container
echo "IP is " && cat temp_file | grep -i 172 | cut -f1

x=$(cat temp_file | grep -i 172 | cut -f2)

docker inspect -f '{{.Name}}' $x

#for c++
docker pull gcc

docker run -it gcc /bin/bash -c 'cat /etc/hosts && /HELLO_FROM_PYTHON_CONTAINER ' > temp_file
#Error message
echo "error messgae is " && cat temp_file | tail -1

#IP of container
echo "IP is " && cat temp_file | grep -i 172 | cut -f1

x=$(cat temp_file | grep -i 172 | cut -f2)

docker inspect -f '{{.Name}}' $x

#for NodeJS

docker pull node

docker run -it node /bin/bash -c 'cat /etc/hosts && /HELLO_FROM_PYTHON_CONTAINER ' > temp_file
#Error message
echo "error messgae is " && cat temp_file | tail -1

#IP of container
echo "IP is " && cat temp_file | grep -i 172 | cut -f1

x=$(cat temp_file | grep -i 172 | cut -f2)

docker inspect -f '{{.Name}}' $x

# for JULIA
docker pull julia

docker run -it julia /bin/bash -c 'cat /etc/hosts && /HELLO_FROM_PYTHON_CONTAINER ' > temp_file
#Error message
echo "error messgae is " && cat temp_file | tail -1

#IP of container
echo "IP is " && cat temp_file | grep -i 172 | cut -f1

x=$(cat temp_file | grep -i 172 | cut -f2)

docker inspect -f '{{.Name}}' $x
