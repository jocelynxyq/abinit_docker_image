FROM centos:7
ADD abinit-8.8.4.tar.gz .
RUN yum -y install epel-release
RUN yum -y install netcdf
RUN yum -y install gcc gcc-gfortran automake autoconf libtool make
WORKDIR /abinit-8.8.4
RUN ./configure with_trio_flavor="netcdf"
RUN make
RUN make install 
