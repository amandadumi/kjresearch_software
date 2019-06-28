#!/bin/sh

export CAML_LD_LIBRARY_PATH=/opt/quantum_package/external/opam/4.07.0/lib/stublibs:/opt/quantum_package/external/opam/4.07.0/lib/ocaml/stublibs:/opt/quantum_package/external/opam/4.07.0/lib/ocaml:$CAML_LD_LIBRARY_PATH
export OCAML_TOPLEVEL_PATH=/opt/quantum_package/external/opam/4.07.0/lib/toplevel
export QP_PYTHON=:/opt/quantum_package/external/ezfio/Python:/opt/quantum_package/scripts:/opt/quantum_package/scripts/ezfio_interface:/opt/quantum_package/scripts/utility:/opt/quantum_package/scripts/module:/opt/quantum_package/scripts/compilation:/opt/quantum_package/external/Python:/opt/quantum_package/external/Python/resultsFile
export QP_EZFIO=/opt/quantum_package/external/ezfio
export OPAM_SWITCH_PREFIX=/opt/quantum_package/external/opam/4.07.0
export QP_ROOT=/opt/quantum_package
export IRPF90=/opt/quantum_package/external/irpf90-v1.7.5/bin/irpf90
export IRPF90_PATH=/opt/quantum_package/external/irpf90-v1.7.5
export PYTHONPATH=/opt/quantum_package/external/ezfio/Python::/opt/quantum_package/external/ezfio/Python:/opt/quantum_package/scripts:/opt/quantum_package/scripts/ezfio_interface:/opt/quantum_package/scripts/utility:/opt/quantum_package/scripts/module:/opt/quantum_package/scripts/compilation:/opt/quantum_package/external/Python:/opt/quantum_package/external/Python/resultsFile:
export LIBRARY_PATH=/opt/quantum_package/lib:/opt/quantum_package/lib64:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/quantum_package/lib:/.singularity.d/libs
export PATH=/opt/quantum_package/external/opam/4.07.0/bin::/opt/quantum_package/external/ezfio/Python:/opt/quantum_package/scripts:/opt/quantum_package/scripts/ezfio_interface:/opt/quantum_package/scripts/utility:/opt/quantum_package/scripts/module:/opt/quantum_package/scripts/compilation:/opt/quantum_package/external/Python:/opt/quantum_package/external/Python/resultsFile:/opt/quantum_package/bin:/opt/quantum_package/ocaml:/opt/quantum_package/external/opam/4.07.0/bin::/opt/quantum_package/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/quantum_package/external/irpf90-v1.7.5/bin:/opt/quantum_package/external/irpf90-v1.7.5/bin:$PATH
export OPAMNOENVNOTICE=true
export C_INCLUDE_PATH=/opt/quantum_package/include:
export OPAMROOT=/opt/quantum_package/external/opam
export NINJA=/opt/quantum_package/bin/ninja
