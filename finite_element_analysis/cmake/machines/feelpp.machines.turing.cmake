###  TEMPLATE.txt.tpl; coding: utf-8 ---

#  Author(s): Christophe Prud'homme <christophe.prudhomme@feelpp.org>
#       Date: 2012-04-12
#
#  Copyright (C) 2013 Feel++ Consortium
#
# Distributed under the GPL(GNU Public License):
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#
#

# enable the CCC script generation
OPTION(FEELPP_ENABLE_SCHED_LOADLEVELER "Enable Feel++ loadleveler scripts generation" ON)

# disable NLOPT for now
OPTION( FEELPP_ENABLE_NLOPT "Enable NLOPT (NonLinear Optimisation Library)" OFF)


set(FEELPP_ENABLE_MANUAL OFF)
#set(FEELPP_ENABLE_BENCHMARKS OFF)
set(FEELPP_ENABLE_OPENGL OFF)

# Disable use of standard c headers in ginac-excompiler
set(USE_STANDARD_HEADERS_IN_GINAC_EXCOMPILER OFF)

set(CMAKE_CXX_FLAGS "-Wno-redeclared-class-member")
set( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXEC_LINKER_FLAGS} -dynamic -Bdynamic -Wl,--allow-multiple-definition  -stdlib=libstdc++ -Wl,-rpath,/opt/ibmcmp/xlf/bg/14.1/bglib64/../../../../lib64/bg/bglib64/" )
set( CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -dynamic  -Wl,-rpath,/opt/ibmcmp/xlf/bg/14.1/bglib64/../../../../lib64/bg/bglib64/" )

set(MPI_CXX_COMPILER "mpicxx")
set(MPI_C_COMPILER "mpicc")
set(MPI_CXX_COMPILER_FLAGS "-cxx=${CMAKE_CXX_COMPILER}")
set(MPI_C_COMPILER_FLAGS "-cxx=${CMAKE_C_COMPILER}")
