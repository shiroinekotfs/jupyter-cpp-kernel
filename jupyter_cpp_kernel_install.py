"""
jupyter_cpp_kernel_install - register C++ Jupyter kernels for the current interpreter.

Usage (after pip install):
    jupyter-cpp-kernel-install [--user] [--sys-prefix] [--prefix PREFIX]

  or equivalently:
    python -m jupyter_cpp_kernel_install [--user] [--sys-prefix] [--prefix PREFIX]

Running this command rewrites the installed kernelspecs so they launch the
exact Python interpreter that is currently active. The default (no flags) is
--sys-prefix, which installs into the current conda environment or virtualenv.

This is necessary because pip's wheel-based install path cannot run setuptools
hooks, so the kernel.json files shipped by pip still contain 'python3' as a
generic fallback launcher.
"""

import argparse
import json
import os
import shutil
import sys
import tempfile
from pathlib import Path
from typing import Optional

# (kernel_name, launch_module, display_name)
_KERNELS = [
    ('cpp98', 'jupyter-cpp-kernel-98', 'C++ 98'),
    ('cpp03', 'jupyter-cpp-kernel-03', 'C++ 03'),
    ('cpp11', 'jupyter-cpp-kernel-11', 'C++ 11'),
    ('cpp14', 'jupyter-cpp-kernel-14', 'C++ 14'),
    ('cpp17', 'jupyter-cpp-kernel-17', 'C++ 17'),
    ('cpp20', 'jupyter-cpp-kernel-20', 'C++ 20'),
    ('cpp23', 'jupyter-cpp-kernel-23', 'C++ 23'),
]


def _copy_existing_logos(ksm, kernel_name, dest_dir):
    # type: (object, str, str) -> None
    """Copy logo assets from the currently registered kernelspec into dest_dir.

    data_files puts the logos under share/jupyter/kernels/cppXX/ at install
    time. Reading them back from the registered spec is the only reliable
    location - the source tree / script location is not guaranteed to exist
    in a wheel install.
    """
    try:
        spec_dir = Path(ksm.get_kernel_spec(kernel_name).resource_dir)
    except Exception:
        return
    for asset in spec_dir.glob('logo-*.png'):
        shutil.copy(str(asset), dest_dir)
    for asset in spec_dir.glob('logo-*.svg'):
        shutil.copy(str(asset), dest_dir)


def install(user=False, prefix=None):
    # type: (bool, Optional[str]) -> None
    from jupyter_client.kernelspec import KernelSpecManager

    ksm = KernelSpecManager()

    for kernel_name, module, display_name in _KERNELS:
        kernel_json = {
            "argv": [sys.executable, "-m", module, "-f", "{connection_file}"],
            "display_name": display_name,
            "language": "c++",
        }

        with tempfile.TemporaryDirectory() as td:
            with open(os.path.join(td, 'kernel.json'), 'w') as f:
                json.dump(kernel_json, f, indent=4)

            # Preserve logos from the already-installed kernelspec so that
            # replace=True does not silently delete them.
            _copy_existing_logos(ksm, kernel_name, td)

            ksm.install_kernel_spec(
                td,
                kernel_name=kernel_name,
                user=user,
                replace=True,
                prefix=prefix,
            )
            print('  Installed kernel: {} ({})'.format(display_name, kernel_name))


def main():
    # type: () -> None
    parser = argparse.ArgumentParser(
        prog='jupyter-cpp-kernel-install',
        description='Register C++ Jupyter kernels for the current Python interpreter',
    )
    group = parser.add_mutually_exclusive_group()
    group.add_argument('--user', action='store_true',
                       help='Install in the user Jupyter data directory')
    group.add_argument('--sys-prefix', action='store_true', dest='sys_prefix',
                       help='Install relative to sys.prefix (current conda env / venv)')
    group.add_argument('--prefix',
                       help='Install kernels under this prefix directory')
    args = parser.parse_args()

    if args.prefix:
        prefix = args.prefix
    elif args.user:
        prefix = None
    else:
        # Default: install into the current environment (same as --sys-prefix)
        prefix = sys.prefix

    install(user=args.user, prefix=prefix)
    print('Done. Restart VS Code or JupyterLab to pick up the new kernels.')


if __name__ == '__main__':
    main()
