# generated using pypi2nix tool (version: 2.0.1)
# See more at: https://github.com/nix-community/pypi2nix
#
# COMMAND:
#   pypi2nix -r requirements.txt -r requirements-dev.txt -s pytest-runner --no-default-overrides -E 'openssl libffi'
#

{ pkgs ? import <nixpkgs> {},
  overrides ? ({ pkgs, python }: self: super: {})
}:

let

  inherit (pkgs) makeWrapper;
  inherit (pkgs.stdenv.lib) fix' extends inNixShell;

  pythonPackages =
  import "${toString pkgs.path}/pkgs/top-level/python-packages.nix" {
    inherit pkgs;
    inherit (pkgs) stdenv;
    python = pkgs.python3;
  };

  commonBuildInputs = with pkgs; [ openssl libffi ];
  commonDoCheck = false;

  withPackages = pkgs':
    let
      pkgs = builtins.removeAttrs pkgs' ["__unfix__"];
      interpreterWithPackages = selectPkgsFn: pythonPackages.buildPythonPackage {
        name = "python3-interpreter";
        buildInputs = [ makeWrapper ] ++ (selectPkgsFn pkgs);
        buildCommand = ''
          mkdir -p $out/bin
          ln -s ${pythonPackages.python.interpreter} \
              $out/bin/${pythonPackages.python.executable}
          for dep in ${builtins.concatStringsSep " "
              (selectPkgsFn pkgs)}; do
            if [ -d "$dep/bin" ]; then
              for prog in "$dep/bin/"*; do
                if [ -x "$prog" ] && [ -f "$prog" ]; then
                  ln -s $prog $out/bin/`basename $prog`
                fi
              done
            fi
          done
          for prog in "$out/bin/"*; do
            wrapProgram "$prog" --prefix PYTHONPATH : "$PYTHONPATH"
          done
          pushd $out/bin
          ln -s ${pythonPackages.python.executable} python
          ln -s ${pythonPackages.python.executable} \
              python3
          popd
        '';
        passthru.interpreter = pythonPackages.python;
      };

      interpreter = interpreterWithPackages builtins.attrValues;
    in {
      __old = pythonPackages;
      inherit interpreter;
      inherit interpreterWithPackages;
      mkDerivation = args: pythonPackages.buildPythonPackage (args // {
        nativeBuildInputs = (args.nativeBuildInputs or []) ++ args.buildInputs;
      });
      packages = pkgs;
      overrideDerivation = drv: f:
        pythonPackages.buildPythonPackage (
          drv.drvAttrs // f drv.drvAttrs // { meta = drv.meta; }
        );
      withPackages = pkgs'':
        withPackages (pkgs // pkgs'');
    };

  python = withPackages {};

  generated = self: {
    "appdirs" = python.mkDerivation {
      name = "appdirs-1.4.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/48/69/d87c60746b393309ca30761f8e2b49473d43450b150cb08f3c6df5c11be5/appdirs-1.4.3.tar.gz";
        sha256 = "9e5896d1372858f8dd3344faf4e5014d21849c756c8d5701f78f8a103b372d92";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://github.com/ActiveState/appdirs";
        license = licenses.mit;
        description = "A small Python module for determining appropriate platform-specific dirs, e.g. a \"user data dir\".";
      };
    };

    "attrs" = python.mkDerivation {
      name = "attrs-19.3.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/98/c3/2c227e66b5e896e15ccdae2e00bbc69aa46e9a8ce8869cc5fa96310bf612/attrs-19.3.0.tar.gz";
        sha256 = "f7b7ce16570fe9965acd6d30101a28f62fb4a7f9e926b3bbc9b61f8b04247e72";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."wheel"
      ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://www.attrs.org/";
        license = licenses.mit;
        description = "Classes Without Boilerplate";
      };
    };

    "black" = python.mkDerivation {
      name = "black-19.10b0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/b0/dc/ecd83b973fb7b82c34d828aad621a6e5865764d52375b8ac1d7a45e23c8d/black-19.10b0.tar.gz";
        sha256 = "c2edb73a08e9e0e6f65a0e6af18b059b8b1cdd5bef997d7a0b181df93dc81539";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."appdirs"
        self."attrs"
        self."click"
        self."pathspec"
        self."regex"
        self."toml"
        self."typed-ast"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/psf/black";
        license = licenses.mit;
        description = "The uncompromising code formatter.";
      };
    };

    "bleach" = python.mkDerivation {
      name = "bleach-3.1.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/78/5a/0df03e8735cd9c75167528299c738702437589b9c71a849489d00ffa82e8/bleach-3.1.0.tar.gz";
        sha256 = "3fdf7f77adcf649c9911387df51254b813185e32b2c6619f690b593a617e19fa";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."six"
        self."webencodings"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/mozilla/bleach";
        license = licenses.asl20;
        description = "An easy safelist-based HTML-sanitizing tool.";
      };
    };

    "bumpv" = python.mkDerivation {
      name = "bumpv-0.3.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/2a/9d/bc43d47c45c789241fe71741e13fe7c741db3a0bf446ac390f96380dd02d/bumpv-0.3.0.tar.gz";
        sha256 = "aebae7e77807b70c0155c7a677c8ad915dc2cb625d4243479876c695e07de44f";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."click"
        self."pyaml"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/kylie-a/bumpv";
        license = licenses.mit;
        description = "Version-bump your software with a single command!";
      };
    };

    "certifi" = python.mkDerivation {
      name = "certifi-2019.11.28";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/41/bf/9d214a5af07debc6acf7f3f257265618f1db242a3f8e49a9b516f24523a6/certifi-2019.11.28.tar.gz";
        sha256 = "25b64c7da4cd7479594d035c08c2d809eb4aab3a26e5a990ea98cc450c320f1f";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://certifi.io/";
        license = licenses.mpl20;
        description = "Python package for providing Mozilla's CA Bundle.";
      };
    };

    "cffi" = python.mkDerivation {
      name = "cffi-1.13.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/2d/bf/960e5a422db3ac1a5e612cb35ca436c3fc985ed4b7ed13a1b4879006f450/cffi-1.13.2.tar.gz";
        sha256 = "599a1e8ff057ac530c9ad1778293c665cb81a791421f46922d80a86473c13346";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."pycparser"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://cffi.readthedocs.org";
        license = licenses.mit;
        description = "Foreign Function Interface for Python calling C code.";
      };
    };

    "chardet" = python.mkDerivation {
      name = "chardet-3.0.4";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz";
        sha256 = "84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/chardet/chardet";
        license = licenses.lgpl2;
        description = "Universal encoding detector for Python 2 and 3";
      };
    };

    "click" = python.mkDerivation {
      name = "click-7.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f8/5c/f60e9d8a1e77005f664b76ff8aeaee5bc05d0a91798afd7f53fc998dbc47/Click-7.0.tar.gz";
        sha256 = "5b94b49521f6456670fdb30cd82a4eca9412788a93fa6dd6df72c94d5a8ff2d7";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://palletsprojects.com/p/click/";
        license = licenses.bsdOriginal;
        description = "Composable command line interface toolkit";
      };
    };

    "coverage" = python.mkDerivation {
      name = "coverage-4.5.4";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/85/d5/818d0e603685c4a613d56f065a721013e942088047ff1027a632948bdae6/coverage-4.5.4.tar.gz";
        sha256 = "e07d9f1a23e9e93ab5c62902833bf3e4b1f65502927379148b6622686223125c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/nedbat/coveragepy";
        license = licenses.asl20;
        description = "Code coverage measurement for Python";
      };
    };

    "cryptography" = python.mkDerivation {
      name = "cryptography-2.8";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/be/60/da377e1bed002716fb2d5d1d1cab720f298cb33ecff7bf7adea72788e4e4/cryptography-2.8.tar.gz";
        sha256 = "3cda1f0ed8747339bbdf71b9f38ca74c7b592f24f65cdb3ab3765e4b02871651";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."cffi"
        self."setuptools"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."cffi"
        self."six"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pyca/cryptography";
        license = licenses.asl20;
        description = "cryptography is a package which provides cryptographic recipes and primitives to Python developers.";
      };
    };

    "docutils" = python.mkDerivation {
      name = "docutils-0.15.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/93/22/953e071b589b0b1fee420ab06a0d15e5aa0c7470eb9966d60393ce58ad61/docutils-0.15.2.tar.gz";
        sha256 = "a2aeea129088da402665e92e0b25b04b073c04b2dce4ab65caaa38b7ce2e1a99";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://docutils.sourceforge.net/";
        license = licenses.publicDomain;
        description = "Docutils -- Python Documentation Utilities";
      };
    };

    "effect" = python.mkDerivation {
      name = "effect-1.1.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/31/7a/3c7a4568ed3a8fa463ffabbc70ed9471d82daad4e479b305d299bec72b49/effect-1.1.0.tar.gz";
        sha256 = "7affb603707c648b07b11781ebb793a4b9aee8acf1ac5764c3ed2112adf0c9ea";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."attrs"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://github.com/python-effect/effect/";
        license = licenses.mit;
        description = "pure effects for Python";
      };
    };

    "entrypoints" = python.mkDerivation {
      name = "entrypoints-0.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/b4/ef/063484f1f9ba3081e920ec9972c96664e2edb9fdc3d8669b0e3b8fc0ad7c/entrypoints-0.3.tar.gz";
        sha256 = "c70dd71abe5a8c85e55e12c19bd91ccfeec11a6e99044204511f9ed547d48451";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."flit"
      ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/takluyver/entrypoints";
        license = licenses.mit;
        description = "Discover and load entry points from installed packages.";
      };
    };

    "fancycompleter" = python.mkDerivation {
      name = "fancycompleter-0.8";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/fd/e3/da39a6cfaffe578a01221261ac1d5d99c48d44f6377ff0de3a12dd332cec/fancycompleter-0.8.tar.gz";
        sha256 = "d2522f1f3512371f295379c4c0d1962de06762eb586c199620a2a5d423539b12";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://bitbucket.org/antocuni/fancycompleter";
        license = licenses.bsdOriginal;
        description = "colorful TAB completion for Python prompt";
      };
    };

    "flake8" = python.mkDerivation {
      name = "flake8-3.7.9";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/a5/bb/7e707d8001aca96f15f684b02176ecb0575786f041293f090b44ea04f2d0/flake8-3.7.9.tar.gz";
        sha256 = "45681a117ecc81e870cbf1262835ae4af5e7a8b08e40b944a8a6e6b895914cfb";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."entrypoints"
        self."mccabe"
        self."pycodestyle"
        self."pyflakes"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://gitlab.com/pycqa/flake8";
        license = licenses.mit;
        description = "the modular source code checker: pep8, pyflakes and co";
      };
    };

    "flake8-debugger" = python.mkDerivation {
      name = "flake8-debugger-3.2.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/d5/e8/b3785700b0a7300fbce7e46df081cbe497f9d0dd0498fe8eaccc0dbb76f5/flake8-debugger-3.2.1.tar.gz";
        sha256 = "712d7c1ff69ddf3f0130e94cc88c2519e720760bce45e8c330bfdcb61ab4090d";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."flake8"
        self."pycodestyle"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/jbkahn/flake8-debugger";
        license = licenses.mit;
        description = "ipdb/pdb statement checker plugin for flake8";
      };
    };

    "flake8-unused-arguments" = python.mkDerivation {
      name = "flake8-unused-arguments-0.0.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/9b/e5/7ba4be2e85cda6377c47f71d6781934a2eefca9411e62b1f76328695e158/flake8-unused-arguments-0.0.3.tar.gz";
        sha256 = "d98a924ebb1d710e4245adc2731d417662395c18232c45bee74a767f7dde7a30";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."flake8"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/nhoad/flake8-unused-arguments";
        license = licenses.mit;
        description = "flake8 extension to warn on unused function arguments";
      };
    };

    "flit" = python.mkDerivation {
      name = "flit-1.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/1f/87/9ea76ab4cdf1fd36710d9688ec36a0053067c47e753b32272f952ff206c5/flit-1.3.tar.gz";
        sha256 = "6f6f0fb83c51ffa3a150fa41b5ac118df9ea4a87c2c06dff4ebf9adbe7b52b36";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."docutils"
        self."intreehooks"
        self."pytoml"
        self."requests"
      ];
      propagatedBuildInputs = [
        self."docutils"
        self."pytoml"
        self."requests"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/takluyver/flit";
        license = licenses.bsdOriginal;
        description = "A simple packaging tool for simple packages.";
      };
    };

    "idna" = python.mkDerivation {
      name = "idna-2.8";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/ad/13/eb56951b6f7950cadb579ca166e448ba77f9d24efc03edd7e55fa57d04b7/idna-2.8.tar.gz";
        sha256 = "c357b3f628cf53ae2c4c05627ecc484553142ca23264e593d327bcde5e9c3407";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/kjd/idna";
        license = licenses.bsdOriginal;
        description = "Internationalized Domain Names in Applications (IDNA)";
      };
    };

    "importlib-metadata" = python.mkDerivation {
      name = "importlib-metadata-1.2.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/9b/42/86a31ce5fd7e3c5fc9071cec95d0aab11deb2fd63eed27315f520d120bfd/importlib_metadata-1.2.0.tar.gz";
        sha256 = "41e688146d000891f32b1669e8573c57e39e5060e7f5f647aa617cd9a9568278";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."zipp"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://importlib-metadata.readthedocs.io/";
        license = licenses.asl20;
        description = "Read metadata from Python packages";
      };
    };

    "intreehooks" = python.mkDerivation {
      name = "intreehooks-1.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f9/a5/5dacebf93232a847970921af2b020f9f2a8e0064e3a97727cd38efc77ba0/intreehooks-1.0.tar.gz";
        sha256 = "87e600d3b16b97ed219c078681260639e77ef5a17c0e0dbdd5a302f99b4e34e1";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."pytoml"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/takluyver/intreehooks";
        license = licenses.mit;
        description = "Load a PEP 517 backend from inside the source tree";
      };
    };

    "isort" = python.mkDerivation {
      name = "isort-4.3.21";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/43/00/8705e8d0c05ba22f042634f791a61f4c678c32175763dcf2ca2a133f4739/isort-4.3.21.tar.gz";
        sha256 = "54da7e92468955c4fceacd0c86bd0ec997b0e1ee80d97f67c35a78b719dccab1";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/timothycrosley/isort";
        license = licenses.mit;
        description = "A Python utility / library to sort Python imports.";
      };
    };

    "jeepney" = python.mkDerivation {
      name = "jeepney-0.4.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/3a/b6/28c665d48e48b5b7e6a26853d6b4595c4031de7798a6c4985b14492ebd14/jeepney-0.4.1.tar.gz";
        sha256 = "13806f91a96e9b2623fd2a81b950d763ee471454aafd9eb6d75dbe7afce428fb";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."flit"
      ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://gitlab.com/takluyver/jeepney";
        license = licenses.mit;
        description = "Low-level, pure Python DBus protocol wrapper.";
      };
    };

    "jinja2" = python.mkDerivation {
      name = "jinja2-2.10.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/7b/db/1d037ccd626d05a7a47a1b81ea73775614af83c2b3e53d86a0bb41d8d799/Jinja2-2.10.3.tar.gz";
        sha256 = "9fe95f19286cfefaa917656583d020be14e7859c6b0252588391e47db34527de";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."markupsafe"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://palletsprojects.com/p/jinja/";
        license = licenses.bsdOriginal;
        description = "A very fast and expressive template engine.";
      };
    };

    "jsonschema" = python.mkDerivation {
      name = "jsonschema-3.2.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/69/11/a69e2a3c01b324a77d3a7c0570faa372e8448b666300c4117a516f8b1212/jsonschema-3.2.0.tar.gz";
        sha256 = "c8a85b28d377cc7737e46e2d9f2b4f44ee3c0e1deac6bf46ddefc7187d30797a";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."attrs"
        self."importlib-metadata"
        self."pyrsistent"
        self."setuptools"
        self."six"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/Julian/jsonschema";
        license = licenses.mit;
        description = "An implementation of JSON Schema validation for Python";
      };
    };

    "keyring" = python.mkDerivation {
      name = "keyring-19.3.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/a7/74/01d60aefd5719d00379f663565c49b81d3452b0d87b14fbc40b48d5bc94f/keyring-19.3.0.tar.gz";
        sha256 = "ee3d35b7f1ac3cb69e9a1e4323534649d3ab2fea402738a77e4250c152970fed";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."importlib-metadata"
        self."secretstorage"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/jaraco/keyring";
        license = licenses.mit;
        description = "Store and access your passwords safely.";
      };
    };

    "markupsafe" = python.mkDerivation {
      name = "markupsafe-1.1.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/b9/2e/64db92e53b86efccfaea71321f597fa2e1b2bd3853d8ce658568f7a13094/MarkupSafe-1.1.1.tar.gz";
        sha256 = "29872e92839765e546828bb7754a68c418d927cd064fd4708fab9fe9c8bb116b";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://palletsprojects.com/p/markupsafe/";
        license = licenses.bsdOriginal;
        description = "Safely add untrusted strings to HTML/XML markup.";
      };
    };

    "mccabe" = python.mkDerivation {
      name = "mccabe-0.6.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz";
        sha256 = "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pycqa/mccabe";
        license = licenses.mit;
        description = "McCabe checker, plugin for flake8";
      };
    };

    "more-itertools" = python.mkDerivation {
      name = "more-itertools-8.0.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/4e/b2/e9e512cccde6c54bf66a8e5820a2af779eb8235028627002ca90d4f75bea/more-itertools-8.0.2.tar.gz";
        sha256 = "b84b238cce0d9adad5ed87e745778d20a3f8487d0f0cb8b8a586816c7496458d";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/erikrose/more-itertools";
        license = licenses.mit;
        description = "More routines for operating on iterables, beyond itertools";
      };
    };

    "mypy" = python.mkDerivation {
      name = "mypy-0.750";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/31/50/c780996be1df46a39799521d6a798ef649f1e2215852e2c877259bfe4453/mypy-0.750.tar.gz";
        sha256 = "6ecbd0e8e371333027abca0922b0c2c632a5b4739a0c61ffbd0733391e39144c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."mypy-extensions"
        self."typed-ast"
        self."typing-extensions"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://www.mypy-lang.org/";
        license = licenses.mit;
        description = "Optional static typing for Python";
      };
    };

    "mypy-extensions" = python.mkDerivation {
      name = "mypy-extensions-0.4.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/63/60/0582ce2eaced55f65a4406fc97beba256de4b7a95a0034c6576458c6519f/mypy_extensions-0.4.3.tar.gz";
        sha256 = "2d82818f5bb3e369420cb3c4060a7970edba416647068eb4c5343488a6c604a8";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/python/mypy_extensions";
        license = licenses.mit;
        description = "Experimental type system extensions for programs checked with the mypy typechecker.";
      };
    };

    "nix-prefetch-github" = python.mkDerivation {
      name = "nix-prefetch-github-2.3.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/c8/6c/c4af9353c0d59cb68aa3bb4b9ad0d6cbaa05a6088577641c4d1a64899678/nix-prefetch-github-2.3.2.tar.gz";
        sha256 = "bdd5d879294bf5e1b72d445b8f08072fe2d801b5cea4e4ce8a2368f95130b2a3";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."attrs"
        self."click"
        self."effect"
        self."jinja2"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/seppeljordan/nix-prefetch-github";
        license = "GPLv3";
        description = "Prefetch source code from github for nix build tool";
      };
    };

    "packaging" = python.mkDerivation {
      name = "packaging-19.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/5a/2f/449ded84226d0e2fda8da9252e5ee7731bdf14cd338f622dfcd9934e0377/packaging-19.2.tar.gz";
        sha256 = "28b924174df7a2fa32c1953825ff29c61e2f5e082343165438812f00d3a7fc47";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."pyparsing"
        self."six"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pypa/packaging";
        license = licenses.asl20;
        description = "Core utilities for Python packages";
      };
    };

    "parsley" = python.mkDerivation {
      name = "parsley-1.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/06/52/cac2f9e78c26cff8bb518bdb4f2b5a0c7058dec7a62087ed48fe87478ef0/Parsley-1.3.tar.gz";
        sha256 = "9444278d47161d5f2be76a767809a3cbe6db4db822f46a4fd7481d4057208d41";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://launchpad.net/parsley";
        license = licenses.mit;
        description = "Parsing and pattern matching made easy.";
      };
    };

    "pathspec" = python.mkDerivation {
      name = "pathspec-0.6.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/7a/68/5902e8cd7f7b17c5879982a3a3ee2ad0c3b92b80c79989a2d3e1ca8d29e1/pathspec-0.6.0.tar.gz";
        sha256 = "e285ccc8b0785beadd4c18e5708b12bb8fcf529a1e61215b3feff1d1e559ea5c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/cpburnz/python-path-specification";
        license = licenses.mpl20;
        description = "Utility library for gitignore style pattern matching of file paths.";
      };
    };

    "pdbpp" = python.mkDerivation {
      name = "pdbpp-0.10.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/3f/82/4b6c5b9128bbbad48a52c6d639c84e3c453e75953ed123b6e9338420dcec/pdbpp-0.10.2.tar.gz";
        sha256 = "73ff220d5006e0ecdc3e2705d8328d8aa5ac27fef95cc06f6e42cd7d22d55eb8";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."fancycompleter"
        self."pygments"
        self."wmctrl"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://github.com/antocuni/pdb";
        license = licenses.bsdOriginal;
        description = "pdb++, a drop-in replacement for pdb";
      };
    };

    "pkginfo" = python.mkDerivation {
      name = "pkginfo-1.5.0.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/6c/04/fd6683d24581894be8b25bc8c68ac7a0a73bf0c4d74b888ac5fe9a28e77f/pkginfo-1.5.0.1.tar.gz";
        sha256 = "7424f2c8511c186cd5424bbf31045b77435b37a8d604990b79d4e70d741148bb";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://code.launchpad.net/~tseaver/pkginfo/trunk";
        license = licenses.mit;
        description = "Query metadatdata from sdists / bdists / installed packages.";
      };
    };

    "pluggy" = python.mkDerivation {
      name = "pluggy-0.13.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f8/04/7a8542bed4b16a65c2714bf76cf5a0b026157da7f75e87cc88774aa10b14/pluggy-0.13.1.tar.gz";
        sha256 = "15b2acde666561e1298d71b523007ed7364de07029219b604cf808bfa1c765b0";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."importlib-metadata"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pytest-dev/pluggy";
        license = licenses.mit;
        description = "plugin and hook calling mechanisms for python";
      };
    };

    "py" = python.mkDerivation {
      name = "py-1.8.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f1/5a/87ca5909f400a2de1561f1648883af74345fe96349f34f737cdfc94eba8c/py-1.8.0.tar.gz";
        sha256 = "dc639b046a6e2cff5bbe40194ad65936d6ba360b52b3c3fe1d08a82dd50b5e53";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://py.readthedocs.io/";
        license = licenses.mit;
        description = "library with cross-python path, ini-parsing, io, code, log facilities";
      };
    };

    "pyaml" = python.mkDerivation {
      name = "pyaml-19.4.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/bf/0c/bf62f049446da78498eb607bc8cbb0604cf1e8d618f2f733e538dcb6e0bc/pyaml-19.4.1.tar.gz";
        sha256 = "c79ae98ececda136a034115ca178ee8bf3aa7df236c488c2f55d12f177b88f1e";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."pyyaml"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/mk-fg/pretty-yaml";
        license = "WTFPL";
        description = "PyYAML-based module to produce pretty and readable YAML-serialized data";
      };
    };

    "pycodestyle" = python.mkDerivation {
      name = "pycodestyle-2.5.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/1c/d1/41294da5915f4cae7f4b388cea6c2cd0d6cd53039788635f6875dfe8c72f/pycodestyle-2.5.0.tar.gz";
        sha256 = "e40a936c9a450ad81df37f549d676d127b1b66000a6c500caa2b085bc0ca976c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://pycodestyle.readthedocs.io/";
        license = licenses.mit;
        description = "Python style guide checker";
      };
    };

    "pycparser" = python.mkDerivation {
      name = "pycparser-2.19";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/68/9e/49196946aee219aead1290e00d1e7fdeab8567783e83e1b9ab5585e6206a/pycparser-2.19.tar.gz";
        sha256 = "a988718abfad80b6b157acce7bf130a30876d27603738ac39f140993246b25b3";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/eliben/pycparser";
        license = licenses.bsdOriginal;
        description = "C parser in Python";
      };
    };

    "pyflakes" = python.mkDerivation {
      name = "pyflakes-2.1.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/52/64/87303747635c2988fcaef18af54bfdec925b6ea3b80bcd28aaca5ba41c9e/pyflakes-2.1.1.tar.gz";
        sha256 = "d976835886f8c5b31d47970ed689944a0262b5f3afa00a5a7b4dc81e5449f8a2";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/PyCQA/pyflakes";
        license = licenses.mit;
        description = "passive checker of Python programs";
      };
    };

    "pygments" = python.mkDerivation {
      name = "pygments-2.5.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/cb/9f/27d4844ac5bf158a33900dbad7985951e2910397998e85712da03ce125f0/Pygments-2.5.2.tar.gz";
        sha256 = "98c8aa5a9f778fcd1026a17361ddaf7330d1b7c62ae97c3bb0ae73e0b9b6b0fe";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://pygments.org/";
        license = licenses.bsdOriginal;
        description = "Pygments is a syntax highlighting package written in Python.";
      };
    };

    "pyparsing" = python.mkDerivation {
      name = "pyparsing-2.4.5";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/00/32/8076fa13e832bb4dcff379f18f228e5a53412be0631808b9ca2610c0f566/pyparsing-2.4.5.tar.gz";
        sha256 = "4ca62001be367f01bd3e92ecbb79070272a9d4964dce6a48a82ff0b8bc7e683a";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pyparsing/pyparsing/";
        license = licenses.mit;
        description = "Python parsing module";
      };
    };

    "pyrsistent" = python.mkDerivation {
      name = "pyrsistent-0.15.6";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/6c/6f/c1a2e8da80a0029f6b618d7e20e1a6f2a61dd04e2e54225309c2cc4268f7/pyrsistent-0.15.6.tar.gz";
        sha256 = "f3b280d030afb652f79d67c5586157c5c1355c9a58dfc7940566e28d28f3df1b";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."six"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://github.com/tobgu/pyrsistent/";
        license = licenses.mit;
        description = "Persistent/Functional/Immutable data structures";
      };
    };

    "pytest" = python.mkDerivation {
      name = "pytest-5.3.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/58/76/45329365ccc901e954cbc6d4c4a7cb6162600a34ed060a6b7b4f127d8183/pytest-5.3.1.tar.gz";
        sha256 = "f67403f33b2b1d25a6756184077394167fe5e2f9d8bdaab30707d19ccec35427";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."attrs"
        self."importlib-metadata"
        self."more-itertools"
        self."packaging"
        self."pluggy"
        self."py"
        self."wcwidth"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://docs.pytest.org/en/latest/";
        license = licenses.mit;
        description = "pytest: simple powerful testing with Python";
      };
    };

    "pytest-cov" = python.mkDerivation {
      name = "pytest-cov-2.8.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/13/8a/51f54b43a043c799bceca846594b9a310823a3e52df5ec27109cccba90f4/pytest-cov-2.8.1.tar.gz";
        sha256 = "cc6742d8bac45070217169f5f72ceee1e0e55b0221f54bcf24845972d3a47f2b";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."coverage"
        self."pytest"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pytest-dev/pytest-cov";
        license = licenses.bsdOriginal;
        description = "Pytest plugin for measuring coverage.";
      };
    };

    "pytest-runner" = python.mkDerivation {
      name = "pytest-runner-5.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/5b/82/1462f86e6c3600f2471d5f552fcc31e39f17717023df4bab712b4a9db1b3/pytest-runner-5.2.tar.gz";
        sha256 = "96c7e73ead7b93e388c5d614770d2bae6526efd997757d3543fe17b557a0942b";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pytest-dev/pytest-runner/";
        license = licenses.mit;
        description = "Invoke py.test as distutils command with dependency resolution";
      };
    };

    "pytoml" = python.mkDerivation {
      name = "pytoml-0.1.21";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f4/ba/98ee2054a2d7b8bebd367d442e089489250b6dc2aee558b000e961467212/pytoml-0.1.21.tar.gz";
        sha256 = "8eecf7c8d0adcff3b375b09fe403407aa9b645c499e5ab8cac670ac4a35f61e7";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/avakar/pytoml";
        license = licenses.mit;
        description = "A parser for TOML-0.4.0";
      };
    };

    "pyyaml" = python.mkDerivation {
      name = "pyyaml-5.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/8d/c9/e5be955a117a1ac548cdd31e37e8fd7b02ce987f9655f5c7563c656d5dcb/PyYAML-5.2.tar.gz";
        sha256 = "c0ee8eca2c582d29c3c2ec6e2c4f703d1b7f1fb10bc72317355a746057e7346c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/yaml/pyyaml";
        license = licenses.mit;
        description = "YAML parser and emitter for Python";
      };
    };

    "readme-renderer" = python.mkDerivation {
      name = "readme-renderer-24.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/44/de/a567140b13a0fc8d3b04d85a510b5a7d9869b44b2939fa8ac07c5e421485/readme_renderer-24.0.tar.gz";
        sha256 = "bb16f55b259f27f75f640acf5e00cf897845a8b3e4731b5c1a436e4b8529202f";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."bleach"
        self."docutils"
        self."pygments"
        self."six"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pypa/readme_renderer";
        license = licenses.asl20;
        description = "readme_renderer is a library for rendering \"readme\" descriptions for Warehouse";
      };
    };

    "regex" = python.mkDerivation {
      name = "regex-2019.11.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/fc/1d/13cc7d174cd2d05808abac3f5fb37433e30c4cd93b152d2a9c09c926d7e8/regex-2019.11.1.tar.gz";
        sha256 = "720e34a539a76a1fedcebe4397290604cc2bdf6f81eca44adb9fb2ea071c0c69";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://bitbucket.org/mrabarnett/mrab-regex";
        license = licenses.psfl;
        description = "Alternative regular expression module, to replace re.";
      };
    };

    "requests" = python.mkDerivation {
      name = "requests-2.22.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/01/62/ddcf76d1d19885e8579acb1b1df26a852b03472c0e46d2b959a714c90608/requests-2.22.0.tar.gz";
        sha256 = "11e007a8a2aa0323f5a921e9e6a2d7e4e67d9877e85773fba9ba6419025cbeb4";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."certifi"
        self."chardet"
        self."idna"
        self."urllib3"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://python-requests.org";
        license = licenses.asl20;
        description = "Python HTTP for Humans.";
      };
    };

    "requests-toolbelt" = python.mkDerivation {
      name = "requests-toolbelt-0.9.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/28/30/7bf7e5071081f761766d46820e52f4b16c8a08fef02d2eb4682ca7534310/requests-toolbelt-0.9.1.tar.gz";
        sha256 = "968089d4584ad4ad7c171454f0a5c6dac23971e9472521ea3b6d49d610aa6fc0";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."requests"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://toolbelt.readthedocs.org";
        license = licenses.asl20;
        description = "A utility belt for advanced users of python-requests";
      };
    };

    "secretstorage" = python.mkDerivation {
      name = "secretstorage-3.1.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/a6/89/df343dbc2957a317127e7ff2983230dc5336273be34f2e1911519d85aeb5/SecretStorage-3.1.1.tar.gz";
        sha256 = "20c797ae48a4419f66f8d28fc221623f11fc45b6828f96bdb1ad9990acb59f92";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [
        self."cryptography"
        self."jeepney"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/mitya57/secretstorage";
        license = licenses.bsdOriginal;
        description = "Python bindings to FreeDesktop.org Secret Service API";
      };
    };

    "setuptools" = python.mkDerivation {
      name = "setuptools-42.0.2";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/f7/b6/5b98441b6749ea1db1e41e5e6e7a93cbdd7ffd45e11fe1b22d45884bc777/setuptools-42.0.2.zip";
        sha256 = "c5b372090d7c8709ce79a6a66872a91e518f7d65af97fca78135e1cb10d4b940";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pypa/setuptools";
        license = licenses.mit;
        description = "Easily download, build, install, upgrade, and uninstall Python packages";
      };
    };

    "setuptools-scm" = python.mkDerivation {
      name = "setuptools-scm-3.3.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/83/44/53cad68ce686585d12222e6769682c4bdb9686808d2739671f9175e2938b/setuptools_scm-3.3.3.tar.gz";
        sha256 = "bd25e1fb5e4d603dcf490f1fde40fb4c595b357795674c3e5cb7f6217ab39ea5";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pypa/setuptools_scm/";
        license = licenses.mit;
        description = "the blessed package to manage your versions by scm tags";
      };
    };

    "six" = python.mkDerivation {
      name = "six-1.13.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/94/3e/edcf6fef41d89187df7e38e868b2dd2182677922b600e880baad7749c865/six-1.13.0.tar.gz";
        sha256 = "30f610279e8b2578cab6db20741130331735c781b56053c59c4076da27f06b66";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/benjaminp/six";
        license = licenses.mit;
        description = "Python 2 and 3 compatibility utilities";
      };
    };

    "toml" = python.mkDerivation {
      name = "toml-0.10.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/b9/19/5cbd78eac8b1783671c40e34bb0fa83133a06d340a38b55c645076d40094/toml-0.10.0.tar.gz";
        sha256 = "229f81c57791a41d65e399fc06bf0848bab550a9dfd5ed66df18ce5f05e73d5c";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/uiri/toml";
        license = licenses.mit;
        description = "Python Library for Tom's Obvious, Minimal Language";
      };
    };

    "tqdm" = python.mkDerivation {
      name = "tqdm-4.40.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/4c/45/830c5c4bfaba60ef7d356a53c7751a86c81d148a16fda0daf3ac5ca8e288/tqdm-4.40.1.tar.gz";
        sha256 = "e405d16c98fcf30725d0c9d493ed07302a18846b5452de5253030ccd18996f87";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/tqdm/tqdm";
        license = licenses.mit;
        description = "Fast, Extensible Progress Meter";
      };
    };

    "twine" = python.mkDerivation {
      name = "twine-3.1.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/7e/2f/e2a91a8ab97e8c9830ce297132631aef5dcd599f076123d1ebb26f1941b6/twine-3.1.1.tar.gz";
        sha256 = "d561a5e511f70275e5a485a6275ff61851c16ffcb3a95a602189161112d9f160";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."importlib-metadata"
        self."keyring"
        self."pkginfo"
        self."readme-renderer"
        self."requests"
        self."requests-toolbelt"
        self."setuptools"
        self."tqdm"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://twine.readthedocs.io/";
        license = licenses.asl20;
        description = "Collection of utilities for publishing packages on PyPI";
      };
    };

    "typed-ast" = python.mkDerivation {
      name = "typed-ast-1.4.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/34/de/d0cfe2ea7ddfd8b2b8374ed2e04eeb08b6ee6e1e84081d151341bba596e5/typed_ast-1.4.0.tar.gz";
        sha256 = "66480f95b8167c9c5c5c87f32cf437d585937970f3fc24386f313a4c97b44e34";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/python/typed_ast";
        license = licenses.asl20;
        description = "a fork of Python 2 and 3 ast modules with type comment support";
      };
    };

    "typing-extensions" = python.mkDerivation {
      name = "typing-extensions-3.7.4.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/e7/dd/f1713bc6638cc3a6a23735eff6ee09393b44b96176d3296693ada272a80b/typing_extensions-3.7.4.1.tar.gz";
        sha256 = "091ecc894d5e908ac75209f10d5b4f118fbdb2eb1ede6a63544054bb1edb41f2";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/python/typing/blob/master/typing_extensions/README.rst";
        license = licenses.psfl;
        description = "Backported and Experimental Type Hints for Python 3.5+";
      };
    };

    "urllib3" = python.mkDerivation {
      name = "urllib3-1.25.7";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/ad/fc/54d62fa4fc6e675678f9519e677dfc29b8964278d75333cf142892caf015/urllib3-1.25.7.tar.gz";
        sha256 = "f3c5fd51747d450d4dcf6f923c81f78f811aab8205fda64b0aba34a4e48b0745";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://urllib3.readthedocs.io/";
        license = licenses.mit;
        description = "HTTP library with thread-safe connection pooling, file post, and more.";
      };
    };

    "wcwidth" = python.mkDerivation {
      name = "wcwidth-0.1.7";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/55/11/e4a2bb08bb450fdbd42cc709dd40de4ed2c472cf0ccb9e64af22279c5495/wcwidth-0.1.7.tar.gz";
        sha256 = "3df37372226d6e63e1b1e1eda15c594bca98a22d33a23832a90998faa96bc65e";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/jquast/wcwidth";
        license = licenses.mit;
        description = "Measures number of Terminal column cells of wide-character codes";
      };
    };

    "webencodings" = python.mkDerivation {
      name = "webencodings-0.5.1";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/0b/02/ae6ceac1baeda530866a85075641cec12989bd8d31af6d5ab4a3e8c92f47/webencodings-0.5.1.tar.gz";
        sha256 = "b36a1c245f2d304965eb4e0a82848379241dc04b865afcc4aab16748587e1923";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/SimonSapin/python-webencodings";
        license = licenses.bsdOriginal;
        description = "Character encoding aliases for legacy web content";
      };
    };

    "wheel" = python.mkDerivation {
      name = "wheel-0.33.6";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/59/b0/11710a598e1e148fb7cbf9220fd2a0b82c98e94efbdecb299cb25e7f0b39/wheel-0.33.6.tar.gz";
        sha256 = "10c9da68765315ed98850f8e048347c3eb06dd81822dc2ab1d4fde9dc9702646";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/pypa/wheel";
        license = licenses.mit;
        description = "A built-package format for Python.";
      };
    };

    "wmctrl" = python.mkDerivation {
      name = "wmctrl-0.3";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/01/c6/001aefbde5782d6f359af0a8782990c3f4e751e29518fbd59dc8dfc58b18/wmctrl-0.3.tar.gz";
        sha256 = "d806f65ac1554366b6e31d29d7be2e8893996c0acbb2824bbf2b1f49cf628a13";
};
      doCheck = commonDoCheck;
      format = "setuptools";
      buildInputs = commonBuildInputs ++ [ ];
      propagatedBuildInputs = [ ];
      meta = with pkgs.stdenv.lib; {
        homepage = "http://bitbucket.org/antocuni/wmctrl";
        license = licenses.bsdOriginal;
        description = "A tool to programmatically control windows inside X";
      };
    };

    "zipp" = python.mkDerivation {
      name = "zipp-0.6.0";
      src = pkgs.fetchurl {
        url = "https://files.pythonhosted.org/packages/57/dd/585d728479d97d25aeeb9aa470d36a4ad8d0ba5610f84e14770128ce6ff7/zipp-0.6.0.tar.gz";
        sha256 = "3718b1cbcd963c7d4c5511a8240812904164b7f381b647143a89d3b98f9bcd8e";
};
      doCheck = commonDoCheck;
      format = "pyproject";
      buildInputs = commonBuildInputs ++ [
        self."setuptools"
        self."setuptools-scm"
        self."wheel"
      ];
      propagatedBuildInputs = [
        self."more-itertools"
      ];
      meta = with pkgs.stdenv.lib; {
        homepage = "https://github.com/jaraco/zipp";
        license = licenses.mit;
        description = "Backport of pathlib-compatible object wrapper for zip files";
      };
    };
  };
  localOverridesFile = ./requirements_override.nix;
  localOverrides = import localOverridesFile { inherit pkgs python; };
  commonOverrides = [
    
  ];
  paramOverrides = [
    (overrides { inherit pkgs python; })
  ];
  allOverrides =
    (if (builtins.pathExists localOverridesFile)
     then [localOverrides] else [] ) ++ commonOverrides ++ paramOverrides;

in python.withPackages
   (fix' (pkgs.lib.fold
            extends
            generated
            allOverrides
         )
   )