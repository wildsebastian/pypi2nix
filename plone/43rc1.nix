{ pkgs, python, buildPythonPackage }:

let plone43rc1Packages = python.modules // rec {
  inherit python;
  inherit (pkgs) fetchurl stdenv;

  plone_app_portlets = buildPythonPackage rec {
    name = "plone.app.portlets-2.4.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.portlets/plone.app.portlets-2.4.2.zip";
      md5 = "712f14bb916d63e53fc06c76c02986dc";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ five_customerize plone_portlets plone_app_i18n products_cmfdynamicviewfti products_pluggableauthservice feedparser ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope2 = buildPythonPackage rec {
    name = "Zope2-2.13.19";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/Z/Zope2/Zope2-2.13.19.zip";
      md5 = "26fee311aace7c12e406543ea91eb42a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ accesscontrol acquisition datetime documenttemplate extensionclass missing multimapping persistence products_ofsp products_zcatalog products_zctextindex record restrictedpython zconfig zodb3 zopeundo docutils initgroups pytz tempstorage transaction zdaemon zexceptions zlog zope_browser zope_browsermenu zope_browserpage zope_browserresource zope_configuration zope_container zope_contentprovider zope_contenttype zope_deferredimport zope_exceptions zope_i18n zope_lifecycleevent zope_location zope_pagetemplate zope_processlifetime zope_proxy zope_ptresource zope_publisher zope_schema zope_security zope_sendmail zope_sequencesort zope_site zope_size zope_structuredtext zope_tal zope_tales zope_testbrowser zope_testing zope_traversing zope_viewlet products_btreefolder2 products_externalmethod products_mailhost products_mimetools products_pythonscripts products_standardcachemanagers ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_btreefolder2 = buildPythonPackage rec {
    name = "Products.BTreeFolder2-2.13.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.BTreeFolder2/Products.BTreeFolder2-2.13.3.tar.gz";
      md5 = "f57c85673036af7ccd34c3fa251f6bb2";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_pythonscripts = buildPythonPackage rec {
    name = "Products.PythonScripts-2.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PythonScripts/Products.PythonScripts-2.13.2.zip";
      md5 = "04c86f2c45a29a162297a80dac61d14f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zopeundo = buildPythonPackage rec {
    name = "ZopeUndo-2.12.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/Z/ZopeUndo/ZopeUndo-2.12.0.zip";
      md5 = "2b8da09d1b98d5558f62e12f6e52c401";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zconfig = buildPythonPackage rec {
    name = "ZConfig-2.9.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/Z/ZConfig/ZConfig-2.9.0.zip";
      md5 = "5c932690a70c8907efd240cdd76a7bc4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_session = buildPythonPackage rec {
    name = "plone.session-3.5.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.session/plone.session-3.5.3.zip";
      md5 = "f95872454735abc8f27c3dcbc9434c11";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_keyring plone_protect ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_container = buildPythonPackage rec {
    name = "zope.container-3.11.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.container/zope.container-3.11.2.tar.gz";
      md5 = "fc66d85a17b8ffb701091c9328983dcc";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_lifecycleevent zope_filerepresentation zope_size zope_broken ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_folder = buildPythonPackage rec {
    name = "plone.folder-1.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.folder/plone.folder-1.0.4.zip";
      md5 = "1674ff18b7a9452d0c2063cf11c679b7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_plonepas = buildPythonPackage rec {
    name = "Products.PlonePAS-4.1.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PlonePAS/Products.PlonePAS-4.1.1.zip";
      md5 = "32db1808c3ad42e82542b65eb95c3c71";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_session ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_registry = buildPythonPackage rec {
    name = "plone.registry-1.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.registry/plone.registry-1.0.1.zip";
      md5 = "6be3d2ec7e2d170e29b8c0bc65049aff";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_sequencesort = buildPythonPackage rec {
    name = "zope.sequencesort-3.4.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.sequencesort/zope.sequencesort-3.4.0.tar.gz";
      md5 = "cfc35fc426a47f5c0ee43c416224b864";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_genericsetup = buildPythonPackage rec {
    name = "Products.GenericSetup-1.7.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.GenericSetup/Products.GenericSetup-1.7.3.tar.gz";
      md5 = "c48967c81c880ed33ee16a14caab3b11";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_formlib ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_theme = buildPythonPackage rec {
    name = "plone.theme-2.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.theme/plone.theme-2.1.zip";
      md5 = "c592d0d095e9fc76cc81597cdf6d0c37";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_tal = buildPythonPackage rec {
    name = "zope.tal-3.5.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.tal/zope.tal-3.5.2.zip";
      md5 = "13869f292ba36b294736b7330b1396fd";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_cachepurging = buildPythonPackage rec {
    name = "plone.cachepurging-1.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.cachepurging/plone.cachepurging-1.0.4.zip";
      md5 = "886814ac4deef0f1ed99a2eb60864264";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_stringinterp = buildPythonPackage rec {
    name = "plone.stringinterp-1.0.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.stringinterp/plone.stringinterp-1.0.7.zip";
      md5 = "81909716210c6ac3fd0ee87f45ea523d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_portaltransforms = buildPythonPackage rec {
    name = "Products.PortalTransforms-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PortalTransforms/Products.PortalTransforms-2.1.2.zip";
      md5 = "9f429f3c3b9e0019d0f6c9b7a8a9376e";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_intelligenttext markdown ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_memoize = buildPythonPackage rec {
    name = "plone.memoize-1.1.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.memoize/plone.memoize-1.1.1.zip";
      md5 = "d07cd14b976160e1f26a859e3370147e";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_ramcache ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  docutils = buildPythonPackage rec {
    name = "docutils-0.9.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/d/docutils/docutils-0.9.1.tar.gz";
      md5 = "b0d5cd5298fedf9c62f5fd364a274d56";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  five_formlib = buildPythonPackage rec {
    name = "five.formlib-1.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/f/five.formlib/five.formlib-1.0.4.zip";
      md5 = "09fcecbb7e0ed4a31a4f19787c1a78b4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_app_form ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zexceptions = buildPythonPackage rec {
    name = "zExceptions-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zExceptions/zExceptions-2.13.0.zip";
      md5 = "4c679696c959040d8e656ef85ae40136";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_publisher zope_security ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfuid = buildPythonPackage rec {
    name = "Products.CMFUid-2.2.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFUid/Products.CMFUid-2.2.1.tar.gz";
      md5 = "e20727959351dffbf0bac80613eee110";
    };
    buildInputs = [ eggtestinfo ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  restrictedpython = buildPythonPackage rec {
    name = "RestrictedPython-3.6.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/R/RestrictedPython/RestrictedPython-3.6.0.zip";
      md5 = "aa75a7dcc7fbc966357837cc66cacec6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_theming = buildPythonPackage rec {
    name = "plone.app.theming-1.1b2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.theming/plone.app.theming-1.1b2.zip";
      md5 = "0cefd88b1c810833c03762cba7bd194d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ diazo roman plone_subrequest plone_resource plone_resourceeditor repoze_xmliter ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  feedparser = buildPythonPackage rec {
    name = "feedparser-5.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/f/feedparser/feedparser-5.0.1.zip";
      md5 = "cefffeba66b658d3cc7c1d66b92c6a1a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_browser = buildPythonPackage rec {
    name = "zope.browser-1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.browser/zope.browser-1.3.zip";
      md5 = "4ff0ddbf64c45bfcc3189e35f4214ded";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfdefault = buildPythonPackage rec {
    name = "Products.CMFDefault-2.2.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFDefault/Products.CMFDefault-2.2.3.tar.gz";
      md5 = "fe7d2d3906ee0e3b484e4a02401576ab";
    };
    buildInputs = [ eggtestinfo ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  python_dateutil = buildPythonPackage rec {
    name = "python-dateutil-1.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/python-dateutil/python-dateutil-1.5.tar.gz";
      md5 = "0dcb1de5e5cad69490a3b6ab63f0cfa5";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_error = buildPythonPackage rec {
    name = "zope.error-3.7.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.error/zope.error-3.7.4.tar.gz";
      md5 = "281445a906458ff5f18f56923699a127";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_mimetools = buildPythonPackage rec {
    name = "Products.MIMETools-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.MIMETools/Products.MIMETools-2.13.0.zip";
      md5 = "ad5372fc1190599a19493db0864448ec";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_deprecation = buildPythonPackage rec {
    name = "zope.deprecation-3.4.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.deprecation/zope.deprecation-3.4.1.tar.gz";
      md5 = "8a47b0f8e1fa4e833007e5b8351bb1d4";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_subrequest = buildPythonPackage rec {
    name = "plone.subrequest-1.6.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.subrequest/plone.subrequest-1.6.7.zip";
      md5 = "cc12f68a22565415b10dbeef0020baa4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_contentmigration = buildPythonPackage rec {
    name = "Products.contentmigration-2.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.contentmigration/Products.contentmigration-2.1.3.zip";
      md5 = "e15b9777593157f060b50638b0253be1";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  unidecode = buildPythonPackage rec {
    name = "Unidecode-0.04.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/U/Unidecode/Unidecode-0.04.1.tar.gz";
      md5 = "c4c9ed8d40cff25c390ff5d5112b9308";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfcore = buildPythonPackage rec {
    name = "Products.CMFCore-2.2.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFCore/Products.CMFCore-2.2.7.tar.gz";
      md5 = "9320a4023b8575097feacfd4a400e930";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope2 five_localsitemanager products_genericsetup products_zsqlmethods zope_app_publication ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  five_localsitemanager = buildPythonPackage rec {
    name = "five.localsitemanager-2.0.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/f/five.localsitemanager/five.localsitemanager-2.0.5.zip";
      md5 = "5e3a658e6068832bd802018ebc83f2d4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_configuration = buildPythonPackage rec {
    name = "zope.configuration-3.7.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.configuration/zope.configuration-3.7.4.zip";
      md5 = "5b0271908ef26c05059eda76928896ea";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_schema ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  z3c_form = buildPythonPackage rec {
    name = "z3c.form-3.0.0a2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/z3c.form/z3c.form-3.0.0a2.zip";
      md5 = "c4468ed0273901fb887cca9cfd1bb2cb";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ six ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfcalendar = buildPythonPackage rec {
    name = "Products.CMFCalendar-2.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFCalendar/Products.CMFCalendar-2.2.2.tar.gz";
      md5 = "49458e68dc3b6826ea9a3576ac014419";
    };
    buildInputs = [ eggtestinfo ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_extendedpathindex = buildPythonPackage rec {
    name = "Products.ExtendedPathIndex-3.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ExtendedPathIndex/Products.ExtendedPathIndex-3.1.zip";
      md5 = "00c048a4b103200bdcbda61fa22c66df";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  archetypes_schemaextender = buildPythonPackage rec {
    name = "archetypes.schemaextender-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/a/archetypes.schemaextender/archetypes.schemaextender-2.1.2.zip";
      md5 = "865aa5b4b6b26e3bb650d89ddfe77c87";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  datetime = buildPythonPackage rec {
    name = "DateTime-3.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/D/DateTime/DateTime-3.0.2.zip";
      md5 = "d2dce6ce3b8d93bc65713e40b5d89ae0";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ pytz ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_contentmenu = buildPythonPackage rec {
    name = "plone.app.contentmenu-2.0.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.contentmenu/plone.app.contentmenu-2.0.8.zip";
      md5 = "8ba463f1a164c454c70d26507e5bd22a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_pluginregistry = buildPythonPackage rec {
    name = "Products.PluginRegistry-1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PluginRegistry/Products.PluginRegistry-1.3.tar.gz";
      md5 = "5b166193ca1eb84dfb402051f779ebab";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfeditions = buildPythonPackage rec {
    name = "Products.CMFEditions-2.2.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFEditions/Products.CMFEditions-2.2.8.zip";
      md5 = "1806f2e17e2527fad9364670b343bd11";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_copy products_cmfdifftool products_cmfuid products_zopeversioncontrol ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_outputfilters = buildPythonPackage rec {
    name = "plone.outputfilters-1.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.outputfilters/plone.outputfilters-1.8.zip";
      md5 = "a5ef28580f7fa7f2dc1768893995b0f7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_publisher = buildPythonPackage rec {
    name = "zope.publisher-3.12.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.publisher/zope.publisher-3.12.6.tar.gz";
      md5 = "495131970cc7cb14de8e517fb3857ade";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_browser zope_configuration zope_contenttype zope_exceptions zope_i18n zope_location zope_proxy zope_security ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_security = buildPythonPackage rec {
    name = "zope.security-3.7.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.security/zope.security-3.7.4.tar.gz";
      md5 = "072ab8d11adc083eace11262da08630c";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zdaemon = buildPythonPackage rec {
    name = "zdaemon-2.0.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zdaemon/zdaemon-2.0.7.tar.gz";
      md5 = "291a875f82e812110557eb6704af8afe";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_annotation = buildPythonPackage rec {
    name = "zope.annotation-3.5.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.annotation/zope.annotation-3.5.0.tar.gz";
      md5 = "4238153279d3f30ab5613438c8e76380";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  repoze_xmliter = buildPythonPackage rec {
    name = "repoze.xmliter-0.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/r/repoze.xmliter/repoze.xmliter-0.5.zip";
      md5 = "99da76bcbad6fbaced4a273bde29b10e";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_form = buildPythonPackage rec {
    name = "plone.app.form-2.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.form/plone.app.form-2.2.2.zip";
      md5 = "6101e6a5bd4de6cc8cdef09ced2743eb";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ five_formlib plone_locking plone_app_vocabularies products_cmfdefault ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_structuredtext = buildPythonPackage rec {
    name = "zope.structuredtext-3.5.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.structuredtext/zope.structuredtext-3.5.1.tar.gz";
      md5 = "eabbfb983485d0879322bc878d2478a0";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zodb3 = buildPythonPackage rec {
    name = "ZODB3-3.10.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/Z/ZODB3/ZODB3-3.10.5.tar.gz";
      md5 = "6f180c6897a1820948fee2a6290503cd";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ transaction zc_lockfile zconfig zdaemon ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_batching = buildPythonPackage rec {
    name = "plone.batching-1.0b1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.batching/plone.batching-1.0b1.zip";
      md5 = "813a7d2d89fedf4f8e90e0c8da949c48";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  documenttemplate = buildPythonPackage rec {
    name = "DocumentTemplate-2.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/D/DocumentTemplate/DocumentTemplate-2.13.2.zip";
      md5 = "07bb086c77c1dfe94125ad2efbba94b7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_sequencesort zope_structuredtext ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_jquery = buildPythonPackage rec {
    name = "plone.app.jquery-1.7.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.jquery/plone.app.jquery-1.7.2.tar.gz";
      md5 = "e204cf45456d26217263531832b5bdac";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  diazo = buildPythonPackage rec {
    name = "diazo-1.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/d/diazo/diazo-1.0.3.zip";
      md5 = "d3c2b017af521db4c86fb360c86e0bc8";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ experimental_cssselect ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_globalrequest = buildPythonPackage rec {
    name = "zope.globalrequest-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.globalrequest/zope.globalrequest-1.0.zip";
      md5 = "ae6ff02db5ba89c1fb96ed7a73ca1cfa";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_customerize = buildPythonPackage rec {
    name = "plone.app.customerize-1.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.customerize/plone.app.customerize-1.2.2.zip";
      md5 = "6a3802c4e8fbd955597adc6a8298febf";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_browserlayer ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfdifftool = buildPythonPackage rec {
    name = "Products.CMFDiffTool-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFDiffTool/Products.CMFDiffTool-2.0.2.zip";
      md5 = "c12ba4fb9912a9a5a046b07b5b1cf69d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_testbrowser = buildPythonPackage rec {
    name = "zope.testbrowser-3.11.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.testbrowser/zope.testbrowser-3.11.1.tar.gz";
      md5 = "64abbee892121e7f1a91aed12cfc155a";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ mechanize ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_discussion = buildPythonPackage rec {
    name = "plone.app.discussion-2.2.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.discussion/plone.app.discussion-2.2.4.zip";
      md5 = "e40ef3d26f024fc1555b30b52489b445";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ collective_monkeypatcher plone_app_uuid plone_indexer ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_intelligenttext = buildPythonPackage rec {
    name = "plone.intelligenttext-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.intelligenttext/plone.intelligenttext-2.0.2.zip";
      md5 = "51688fa0815b49e00334e3ef948328ba";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plonetheme_classic = buildPythonPackage rec {
    name = "plonetheme.classic-1.3.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plonetheme.classic/plonetheme.classic-1.3.1.zip";
      md5 = "8f78a3e79dce692a568c5fbc58ba742a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_authentication = buildPythonPackage rec {
    name = "zope.authentication-3.7.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.authentication/zope.authentication-3.7.1.zip";
      md5 = "7d6bb340610518f2fc71213cfeccda68";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_i18n = buildPythonPackage rec {
    name = "zope.i18n-3.7.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.i18n/zope.i18n-3.7.4.tar.gz";
      md5 = "a6fe9d9ad53dd7e94e87cd58fb67d3b7";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_componentvocabulary = buildPythonPackage rec {
    name = "zope.componentvocabulary-1.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.componentvocabulary/zope.componentvocabulary-1.0.1.tar.gz";
      md5 = "1c8fa82ca1ab1f4b0bd2455a31fde22b";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_ofsp = buildPythonPackage rec {
    name = "Products.OFSP-2.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.OFSP/Products.OFSP-2.13.2.zip";
      md5 = "c76d40928753c2ee56db873304e65bd5";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_datetime = buildPythonPackage rec {
    name = "zope.datetime-3.4.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.datetime/zope.datetime-3.4.1.tar.gz";
      md5 = "4dde22d34f41a0a4f0c5a345e6d11ee9";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  experimental_cssselect = buildPythonPackage rec {
    name = "experimental.cssselect-0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/e/experimental.cssselect/experimental.cssselect-0.3.zip";
      md5 = "3fecdcf1fbc3ea6025e115a56a262957";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_passwordresettool = buildPythonPackage rec {
    name = "Products.PasswordResetTool-2.0.12";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PasswordResetTool/Products.PasswordResetTool-2.0.12.zip";
      md5 = "db87c166732a5800f25e33f27a23b7b4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_jquerytools = buildPythonPackage rec {
    name = "plone.app.jquerytools-1.5.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.jquerytools/plone.app.jquerytools-1.5.4.zip";
      md5 = "fcc0c48d49deb211d5aadf4e12d3c1a0";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_viewletmanager = buildPythonPackage rec {
    name = "plone.app.viewletmanager-2.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.viewletmanager/plone.app.viewletmanager-2.0.3.zip";
      md5 = "1dbc51c7664ce3e6ca4dcca1b7b86082";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_validation = buildPythonPackage rec {
    name = "Products.validation-2.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.validation/Products.validation-2.0.zip";
      md5 = "afa217e2306637d1dccbebf337caa8bf";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_portlet_static = buildPythonPackage rec {
    name = "plone.portlet.static-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.portlet.static/plone.portlet.static-2.0.2.zip";
      md5 = "ec0dc691b4191a41ff97779b117f9985";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_viewlet = buildPythonPackage rec {
    name = "zope.viewlet-3.7.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.viewlet/zope.viewlet-3.7.2.tar.gz";
      md5 = "367e03096df57e2f9b74fff43f7901f9";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_portlet_collection = buildPythonPackage rec {
    name = "plone.portlet.collection-2.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.portlet.collection/plone.portlet.collection-2.1.3.zip";
      md5 = "5f0006dbb3e0b56870383dfdedc49228";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_users = buildPythonPackage rec {
    name = "plone.app.users-1.2a2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.users/plone.app.users-1.2a2.zip";
      md5 = "a96e42e34d97162363cb3bbc8483d2ba";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_querystring = buildPythonPackage rec {
    name = "plone.app.querystring-1.0.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.querystring/plone.app.querystring-1.0.7.zip";
      md5 = "b501910b23def9b58e8309d1e469eb6f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_contentlisting ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_i18nmessageid = buildPythonPackage rec {
    name = "zope.i18nmessageid-3.5.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.i18nmessageid/zope.i18nmessageid-3.5.3.tar.gz";
      md5 = "cb84bf61c2b7353e3b7578057fbaa264";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_folder = buildPythonPackage rec {
    name = "plone.app.folder-1.0.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.folder/plone.app.folder-1.0.5.zip";
      md5 = "8ea860daddb4c93c0b7f2b5f7106fef0";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_folder ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_zcatalog = buildPythonPackage rec {
    name = "Products.ZCatalog-2.13.23";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ZCatalog/Products.ZCatalog-2.13.23.zip";
      md5 = "d425171516dfc70e543a4e2b852301cb";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ products_zctextindex zope_dottedname ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  python_openid = buildPythonPackage rec {
    name = "python-openid-2.2.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/python-openid/python-openid-2.2.5.zip";
      md5 = "f89d9d4f4dccfd33b5ce34eb4725f751";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  z3c_autoinclude = buildPythonPackage rec {
    name = "z3c.autoinclude-0.3.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/z3c.autoinclude/z3c.autoinclude-0.3.4.zip";
      md5 = "6a615ae18c12b459bceb3ae28e8e7709";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zc_buildout ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_processlifetime = buildPythonPackage rec {
    name = "zope.processlifetime-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.processlifetime/zope.processlifetime-1.0.tar.gz";
      md5 = "69604bfd668a01ebebdd616a8f26ccfe";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_marshall = buildPythonPackage rec {
    name = "Products.Marshall-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.Marshall/Products.Marshall-2.1.2.zip";
      md5 = "bde4d7f75195c1ded8371554b04d2541";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_uuid ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_dexterity = buildPythonPackage rec {
    name = "plone.dexterity-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.dexterity/plone.dexterity-2.1.2.zip";
      md5 = "3404947376be89f18e54bbfb5c0d3595";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_alterego plone_synchronize ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_synchronize = buildPythonPackage rec {
    name = "plone.synchronize-1.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.synchronize/plone.synchronize-1.0.1.zip";
      md5 = "d25e86ace8daa0816861296c3288c4fb";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_traversing = buildPythonPackage rec {
    name = "zope.traversing-3.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.traversing/zope.traversing-3.13.2.zip";
      md5 = "eaad8fc7bbef126f9f8616b074ec00aa";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  python_gettext = buildPythonPackage rec {
    name = "python-gettext-1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/python-gettext/python-gettext-1.2.zip";
      md5 = "cd4201d440126d1296d1d2bc2b4795f3";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ unittest2 ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_securemailhost = buildPythonPackage rec {
    name = "Products.SecureMailHost-1.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.SecureMailHost/Products.SecureMailHost-1.1.2.zip";
      md5 = "7db0f1fa867bd0df972082f502a7a707";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_plonelanguagetool = buildPythonPackage rec {
    name = "Products.PloneLanguageTool-3.2.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PloneLanguageTool/Products.PloneLanguageTool-3.2.7.zip";
      md5 = "bd9eb6278bf76e8cbce99437ca362164";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  eggtestinfo = buildPythonPackage rec {
    name = "eggtestinfo-0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/e/eggtestinfo/eggtestinfo-0.3.tar.gz";
      md5 = "6f0507aee05f00c640c0d64b5073f840";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  mailinglogger = buildPythonPackage rec {
    name = "mailinglogger-3.7.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/m/mailinglogger/mailinglogger-3.7.0.tar.gz";
      md5 = "f865f0df6059ce23062b7457d01dbac5";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  missing = buildPythonPackage rec {
    name = "Missing-2.13.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/M/Missing/Missing-2.13.1.zip";
      md5 = "9823cff54444cbbcaef8fc45d8e42572";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_deferredimport = buildPythonPackage rec {
    name = "zope.deferredimport-3.5.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.deferredimport/zope.deferredimport-3.5.3.tar.gz";
      md5 = "68fce3bf4f011d4a840902fd763884ee";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_search = buildPythonPackage rec {
    name = "plone.app.search-1.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.search/plone.app.search-1.1.3.zip";
      md5 = "396677c3fba762077360ed97b14071e6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_tales = buildPythonPackage rec {
    name = "zope.tales-3.5.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.tales/zope.tales-3.5.2.tar.gz";
      md5 = "1c5060bd766a0a18632b7879fc9e4e1e";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_tal ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_zsqlmethods = buildPythonPackage rec {
    name = "Products.ZSQLMethods-2.13.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ZSQLMethods/Products.ZSQLMethods-2.13.4.zip";
      md5 = "bd1ad8fd4a9d4f8b4681401dd5b71dc1";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_statusmessages = buildPythonPackage rec {
    name = "Products.statusmessages-4.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.statusmessages/Products.statusmessages-4.0.zip";
      md5 = "265324b0a58a032dd0ed038103ed0473";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_i18n = buildPythonPackage rec {
    name = "plone.i18n-2.0.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.i18n/plone.i18n-2.0.5.zip";
      md5 = "ef36aa9a294d507abb37787f9f7700bd";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ unidecode ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  archetypes_querywidget = buildPythonPackage rec {
    name = "archetypes.querywidget-1.0.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/a/archetypes.querywidget/archetypes.querywidget-1.0.8.zip";
      md5 = "3416b6b4948c624e1b5b8dd8d7e33f59";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_querystring ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_transformchain = buildPythonPackage rec {
    name = "plone.transformchain-1.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.transformchain/plone.transformchain-1.0.3.zip";
      md5 = "f5fb7ca894249e3e666501c4fae52a6c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_pluggableauthservice = buildPythonPackage rec {
    name = "Products.PluggableAuthService-1.10.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PluggableAuthService/Products.PluggableAuthService-1.10.0.tar.gz";
      md5 = "1a1db6b1d9dd34f8b93a8a3104385a37";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ products_pluginregistry ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  borg_localrole = buildPythonPackage rec {
    name = "borg.localrole-3.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/b/borg.localrole/borg.localrole-3.0.2.zip";
      md5 = "04082694dfda9ae5cda62747b8ac7ccf";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  archetypes_referencebrowserwidget = buildPythonPackage rec {
    name = "archetypes.referencebrowserwidget-2.4.17";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/a/archetypes.referencebrowserwidget/archetypes.referencebrowserwidget-2.4.17.zip";
      md5 = "bb7552f5ccfddcd068649d7b8162020c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_form plone_app_jquerytools ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  five_globalrequest = buildPythonPackage rec {
    name = "five.globalrequest-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/f/five.globalrequest/five.globalrequest-1.0.tar.gz";
      md5 = "87f8996bd21d4aa156aa26e7d21b8744";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_globalrequest ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_rfc822 = buildPythonPackage rec {
    name = "plone.rfc822-1.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.rfc822/plone.rfc822-1.0.1.zip";
      md5 = "b5b79bb5a9181da624a7e88940a45424";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ python_dateutil ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plonetheme_sunburst = buildPythonPackage rec {
    name = "plonetheme.sunburst-1.4.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plonetheme.sunburst/plonetheme.sunburst-1.4.1.zip";
      md5 = "e2008dae3dad458dd7bf3be10e95160b";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_portlets = buildPythonPackage rec {
    name = "plone.portlets-2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.portlets/plone.portlets-2.2.zip";
      md5 = "5b7e06bee6e40af83694b82e1fee8c2d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_proxy = buildPythonPackage rec {
    name = "zope.proxy-3.6.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.proxy/zope.proxy-3.6.1.zip";
      md5 = "a400b0a26624b17fa889dbcaa989d440";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_archetypes = buildPythonPackage rec {
    name = "Products.Archetypes-1.8.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.Archetypes/Products.Archetypes-1.8.6.zip";
      md5 = "74be68879b27228c084a9be869132a98";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ products_cmfcalendar products_cmfformcontroller products_cmfquickinstallertool products_dcworkflow products_marshall products_mimetypesregistry products_placelesstranslationservice products_portaltransforms products_statusmessages products_validation plone_uuid ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  initgroups = buildPythonPackage rec {
    name = "initgroups-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/i/initgroups/initgroups-2.13.0.zip";
      md5 = "38e842dcab8445f65e701fec75213acd";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_schema = buildPythonPackage rec {
    name = "zope.schema-4.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.schema/zope.schema-4.2.2.tar.gz";
      md5 = "e7e581af8193551831560a736a53cf58";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_scale = buildPythonPackage rec {
    name = "plone.scale-1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.scale/plone.scale-1.3.zip";
      md5 = "2de525b3f436c851bce6e03f639d2d35";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_copy = buildPythonPackage rec {
    name = "zope.copy-3.5.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.copy/zope.copy-3.5.0.tar.gz";
      md5 = "a9836a5d36cd548be45210eb00407337";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  roman = buildPythonPackage rec {
    name = "roman-1.4.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/r/roman/roman-1.4.0.tar.gz";
      md5 = "4f8832ed4108174b159c2afb4bd1d1dd";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_event = buildPythonPackage rec {
    name = "zope.event-3.5.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.event/zope.event-3.5.2.tar.gz";
      md5 = "6e8af2a16157a74885d4f0d88137cefb";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfdynamicviewfti = buildPythonPackage rec {
    name = "Products.CMFDynamicViewFTI-4.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFDynamicViewFTI/Products.CMFDynamicViewFTI-4.0.3.zip";
      md5 = "7d39d416b41b2d93954bc73d9d0e077f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_resource = buildPythonPackage rec {
    name = "plone.resource-1.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.resource/plone.resource-1.0.2.zip";
      md5 = "594d41e3acd913ae92f2e9ef96503b9f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_linkintegrity = buildPythonPackage rec {
    name = "plone.app.linkintegrity-1.5.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.linkintegrity/plone.app.linkintegrity-1.5.1.zip";
      md5 = "89701634d59c3b1a6fc61e5a21c4de52";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  pillow = buildPythonPackage rec {
    name = "Pillow-1.7.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Pillow/Pillow-1.7.7.zip";
      md5 = "0617fae88d62422b878906a3c394c687";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_browserlayer = buildPythonPackage rec {
    name = "plone.browserlayer-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.browserlayer/plone.browserlayer-2.1.2.zip";
      md5 = "bce02f4907a4f29314090c525e5fc28e";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  markdown = buildPythonPackage rec {
    name = "Markdown-2.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/M/Markdown/Markdown-2.0.3.zip";
      md5 = "122418893e21e91109edbf6e082f830d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  z3c_formwidget_query = buildPythonPackage rec {
    name = "z3c.formwidget.query-0.9";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/z3c.formwidget.query/z3c.formwidget.query-0.9.zip";
      md5 = "d9f7960b1a5a81d8ba5241530f496522";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_z3cform = buildPythonPackage rec {
    name = "plone.app.z3cform-0.7.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.z3cform/plone.app.z3cform-0.7.2.zip";
      md5 = "aa8d1d45f8072ccfbfe0a608cd7144b6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ collective_z3cform_datetimewidget plone_z3cform z3c_formwidget_query ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_locales = buildPythonPackage rec {
    name = "plone.app.locales-4.2.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.locales/plone.app.locales-4.2.5.zip";
      md5 = "baf48a0a5278a18fa1c2848d3470464f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_contentlisting = buildPythonPackage rec {
    name = "plone.app.contentlisting-1.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.contentlisting/plone.app.contentlisting-1.0.4.zip";
      md5 = "fa6eb45c4ffd0eb3817ad4813ca24916";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_ramcache = buildPythonPackage rec {
    name = "zope.ramcache-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.ramcache/zope.ramcache-1.0.zip";
      md5 = "87289e15f0e51f50704adda1557c02a7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_vocabularies = buildPythonPackage rec {
    name = "plone.app.vocabularies-2.1.10";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.vocabularies/plone.app.vocabularies-2.1.10.tar.gz";
      md5 = "166a0d6f9a3e3cd753efa56aaef585be";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_plonetestcase = buildPythonPackage rec {
    name = "Products.PloneTestCase-0.9.15";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PloneTestCase/Products.PloneTestCase-0.9.15.zip";
      md5 = "ddd5810937919ab5233ebd64893c8bae";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zlog = buildPythonPackage rec {
    name = "zLOG-2.11.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zLOG/zLOG-2.11.1.tar.gz";
      md5 = "68073679aaa79ac5a7b6a5c025467147";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zc_recipe_egg = buildPythonPackage rec {
    name = "zc.recipe.egg-1.3.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zc.recipe.egg/zc.recipe.egg-1.3.2.tar.gz";
      md5 = "1cb6af73f527490dde461d3614a36475";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone = buildPythonPackage rec {
    name = "Plone-4.3rc1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Plone/Plone-4.3rc1.zip";
      md5 = "21e4fafe5d608f44e759a1a0544aed72";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ pkgs.setuptools products_cmfplacefulworkflow products_cmfplone plone_app_caching plone_app_dexterity plone_app_iterate plone_app_openid plone_app_theming wicked ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_standardcachemanagers = buildPythonPackage rec {
    name = "Products.StandardCacheManagers-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.StandardCacheManagers/Products.StandardCacheManagers-2.13.0.zip";
      md5 = "c5088b2b62bd26d63d9579a04369cb73";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_fieldsets = buildPythonPackage rec {
    name = "plone.fieldsets-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.fieldsets/plone.fieldsets-2.0.2.zip";
      md5 = "4158c8a1f784fcb5cecbd63deda7222f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  collective_monkeypatcher = buildPythonPackage rec {
    name = "collective.monkeypatcher-1.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/c/collective.monkeypatcher/collective.monkeypatcher-1.0.1.zip";
      md5 = "4d4f20f9b8bb84b24afadc4f56f6dc2c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  z3c_zcmlhook = buildPythonPackage rec {
    name = "z3c.zcmlhook-1.0b1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/z3c.zcmlhook/z3c.zcmlhook-1.0b1.tar.gz";
      md5 = "7b6c80146f5930409eb0b355ddf3daeb";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_recipe_zope2instance = buildPythonPackage rec {
    name = "plone.recipe.zope2instance-4.2.9";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.recipe.zope2instance/plone.recipe.zope2instance-4.2.9.zip";
      md5 = "d2972888fe86d82802de818ecd9a881d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zc_recipe_egg ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_supermodel = buildPythonPackage rec {
    name = "plone.supermodel-1.2.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.supermodel/plone.supermodel-1.2.1.zip";
      md5 = "b60d1553b297d41d9e2181afe15da4f4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ z3c_zcmlhook ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_registry = buildPythonPackage rec {
    name = "plone.app.registry-1.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.registry/plone.app.registry-1.2.2.zip";
      md5 = "d4659a2c4cfb3a66cd6c7ff1ca17be7f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ lxml plone_registry plone_supermodel plone_app_z3cform plone_autoform ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_pagetemplate = buildPythonPackage rec {
    name = "zope.pagetemplate-3.6.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.pagetemplate/zope.pagetemplate-3.6.3.zip";
      md5 = "834a4bf702c05fba1e669677b4dc871f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_tales zope_tal zope_traversing ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfformcontroller = buildPythonPackage rec {
    name = "Products.CMFFormController-3.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFFormController/Products.CMFFormController-3.0.3.zip";
      md5 = "6573df7dcb39e3b63ba22abe2acd639e";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_openid = buildPythonPackage rec {
    name = "plone.openid-2.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.openid/plone.openid-2.0.1.zip";
      md5 = "d4c36926a6dbefed035ed92c29329ce1";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ python_openid ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_app_content = buildPythonPackage rec {
    name = "zope.app.content-3.5.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.app.content/zope.app.content-3.5.1.tar.gz";
      md5 = "0ac6a6fcb5dd6f845759f998d8e8cbb3";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_size = buildPythonPackage rec {
    name = "zope.size-3.4.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.size/zope.size-3.4.1.tar.gz";
      md5 = "55d9084dfd9dcbdb5ad2191ceb5ed03d";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_mimetypesregistry = buildPythonPackage rec {
    name = "Products.MimetypesRegistry-2.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.MimetypesRegistry/Products.MimetypesRegistry-2.0.4.zip";
      md5 = "898166bb2aaececc8238ad4ee4826793";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_imaging = buildPythonPackage rec {
    name = "plone.app.imaging-1.0.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.imaging/plone.app.imaging-1.0.7.zip";
      md5 = "27c24477bdcbcebeba6cd83419a57aa6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_scale ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_ptresource = buildPythonPackage rec {
    name = "zope.ptresource-3.9.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.ptresource/zope.ptresource-3.9.0.tar.gz";
      md5 = "f4645e51c15289d3fdfb4139039e18e9";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfactionicons = buildPythonPackage rec {
    name = "Products.CMFActionIcons-2.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFActionIcons/Products.CMFActionIcons-2.1.3.tar.gz";
      md5 = "ab1dc62404ed11aea84dc0d782b2235e";
    };
    buildInputs = [ eggtestinfo ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  multimapping = buildPythonPackage rec {
    name = "MultiMapping-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/M/MultiMapping/MultiMapping-2.13.0.zip";
      md5 = "d69c5904c105b9f2f085d4103e0f0586";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_mailhost = buildPythonPackage rec {
    name = "Products.MailHost-2.13.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.MailHost/Products.MailHost-2.13.1.zip";
      md5 = "1102e523435d8bf78a15b9ddb57478e1";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  pytz = buildPythonPackage rec {
    name = "pytz-2012g";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/pytz/pytz-2012g.zip";
      md5 = "1a9b24da1ab6328074b48fc3d4525078";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_i18n = buildPythonPackage rec {
    name = "plone.app.i18n-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.i18n/plone.app.i18n-2.0.2.zip";
      md5 = "a10026573463dfc1899bf4062cebdbf2";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_indexer = buildPythonPackage rec {
    name = "plone.indexer-1.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.indexer/plone.indexer-1.0.2.zip";
      md5 = "538aeee1f9db78bc8c85ae1bcb0153ed";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_externalmethod = buildPythonPackage rec {
    name = "Products.ExternalMethod-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ExternalMethod/Products.ExternalMethod-2.13.0.zip";
      md5 = "15ba953ef6cb632eb571977651252ea6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_alterego = buildPythonPackage rec {
    name = "plone.alterego-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.alterego/plone.alterego-1.0.zip";
      md5 = "b7b6dbcbba00505d98d5aba83e016408";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_upgrade = buildPythonPackage rec {
    name = "plone.app.upgrade-1.3rc1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.upgrade/plone.app.upgrade-1.3rc1.zip";
      md5 = "5132e3a77cc0288068106430136f2a49";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ products_contentmigration products_securemailhost ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_lifecycleevent = buildPythonPackage rec {
    name = "zope.lifecycleevent-3.6.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.lifecycleevent/zope.lifecycleevent-3.6.2.tar.gz";
      md5 = "3ba978f3ba7c0805c81c2c79ea3edb33";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_resourceeditor = buildPythonPackage rec {
    name = "plone.resourceeditor-1.0b4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.resourceeditor/plone.resourceeditor-1.0b4.zip";
      md5 = "6e419868c2ea94a322dd631a1b0b753c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_atcontenttypes = buildPythonPackage rec {
    name = "Products.ATContentTypes-2.1.12";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ATContentTypes/Products.ATContentTypes-2.1.12.zip";
      md5 = "ef38ce0769a5f44e272623f8f118a669";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ archetypes_referencebrowserwidget plone_i18n plone_memoize plone_app_folder plone_app_layout products_archetypes products_atreferencebrowserwidget products_cmfdynamicviewfti products_cmfdefault products_mimetypesregistry products_portaltransforms products_validation ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfplacefulworkflow = buildPythonPackage rec {
    name = "Products.CMFPlacefulWorkflow-1.5.9";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFPlacefulWorkflow/Products.CMFPlacefulWorkflow-1.5.9.zip";
      md5 = "9041e1f52eab5b348c0dfa85be438722";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_component zope_interface zope_i18nmessageid products_cmfcore products_cmfplone products_genericsetup zope_testing products_plonetestcase ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_interface = buildPythonPackage rec {
    name = "zope.interface-3.6.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.interface/zope.interface-3.6.7.zip";
      md5 = "9df962180fbbb54eb1875cff9fe436e5";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_content = buildPythonPackage rec {
    name = "plone.app.content-2.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.content/plone.app.content-2.1.zip";
      md5 = "8c8f0d5cc235fe7cb5ef9fe02b7e1c09";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfquickinstallertool = buildPythonPackage rec {
    name = "Products.CMFQuickInstallerTool-3.0.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFQuickInstallerTool/Products.CMFQuickInstallerTool-3.0.6.tar.gz";
      md5 = "af34adb87ddf2b6da48eff8b70ca2989";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_autoform = buildPythonPackage rec {
    name = "plone.autoform-1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.autoform/plone.autoform-1.3.zip";
      md5 = "4cb2935ba9cda3eb3ee801ad8cda7c60";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_contentrules = buildPythonPackage rec {
    name = "plone.app.contentrules-3.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.contentrules/plone.app.contentrules-3.0.zip";
      md5 = "bd60122bf527ed90e9d6fbc6a7fb3625";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_contentrules plone_stringinterp ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  record = buildPythonPackage rec {
    name = "Record-2.13.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/R/Record/Record-2.13.0.zip";
      md5 = "cfed6a89d4fb2c9cb995e9084c3071b7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_behavior = buildPythonPackage rec {
    name = "plone.behavior-1.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.behavior/plone.behavior-1.0.2.zip";
      md5 = "4459b91287ebc2f2cf4fa38728b2a739";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  setuptools = buildPythonPackage rec {
    name = "setuptools-0.6c11";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/s/setuptools/setuptools-0.6c11.tar.gz";
      md5 = "7df2a529a074f613b509fb44feefe74e";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_formwidget_namedfile = buildPythonPackage rec {
    name = "plone.formwidget.namedfile-1.0.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.formwidget.namedfile/plone.formwidget.namedfile-1.0.5.zip";
      md5 = "7d39a5760d679c89d8e41abbc295240f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_blob = buildPythonPackage rec {
    name = "plone.app.blob-1.5.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.blob/plone.app.blob-1.5.7.zip";
      md5 = "135bc404212981c445d5bbb6a749b155";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ archetypes_schemaextender ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  acquisition = buildPythonPackage rec {
    name = "Acquisition-2.13.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/A/Acquisition/Acquisition-2.13.8.zip";
      md5 = "8c33160c157b50649e2b2b3224622579";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ extensionclass ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_keyring = buildPythonPackage rec {
    name = "plone.keyring-2.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.keyring/plone.keyring-2.0.1.zip";
      md5 = "f3970e9bddb2cc65e461a2c62879233f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_contentprovider = buildPythonPackage rec {
    name = "zope.contentprovider-3.7.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.contentprovider/zope.contentprovider-3.7.2.tar.gz";
      md5 = "1bb2132551175c0123f17939a793f812";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_atreferencebrowserwidget = buildPythonPackage rec {
    name = "Products.ATReferenceBrowserWidget-3.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ATReferenceBrowserWidget/Products.ATReferenceBrowserWidget-3.0.zip";
      md5 = "157bdd32155c8353450c17c649aad042";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_browserresource = buildPythonPackage rec {
    name = "zope.browserresource-3.10.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.browserresource/zope.browserresource-3.10.3.zip";
      md5 = "dbfde30e82dbfa1a74c5da0cb5a4772d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_caching = buildPythonPackage rec {
    name = "plone.caching-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.caching/plone.caching-1.0.zip";
      md5 = "2c2e3b27d13b9101c92dfed222fde36c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ z3c_caching plone_transformchain five_globalrequest ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_app_locales = buildPythonPackage rec {
    name = "zope.app.locales-3.6.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.app.locales/zope.app.locales-3.6.2.tar.gz";
      md5 = "bd2b4c6040e768f33004b1210d3207fa";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_placelesstranslationservice = buildPythonPackage rec {
    name = "Products.PlacelessTranslationService-2.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.PlacelessTranslationService/Products.PlacelessTranslationService-2.0.3.zip";
      md5 = "a94635eb712563c5a002520713f5d6dc";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ python_gettext ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_z3cform = buildPythonPackage rec {
    name = "plone.z3cform-0.8.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.z3cform/plone.z3cform-0.8.0.zip";
      md5 = "bdb23dd162544964d2f8f8f5f002e874";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_batching ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_browserpage = buildPythonPackage rec {
    name = "zope.browserpage-3.12.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.browserpage/zope.browserpage-3.12.2.tar.gz";
      md5 = "a543ef3cb1b42f7233b3fca23dc9ea60";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_dcworkflow = buildPythonPackage rec {
    name = "Products.DCWorkflow-2.2.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.DCWorkflow/Products.DCWorkflow-2.2.4.tar.gz";
      md5 = "c90a16c4f3611015592ba8173a5f1863";
    };
    buildInputs = [ eggtestinfo ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_tinymce = buildPythonPackage rec {
    name = "Products.TinyMCE-1.3-1.3.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.TinyMCE/Products.TinyMCE-1.3.zip";
      md5 = "02bec5bac10a3fe5fff3d04beb46ac53";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_imaging plone_outputfilters plone_namedfile plone_caching zope_app_content ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  collective_z3cform_datetimewidget = buildPythonPackage rec {
    name = "collective.z3cform.datetimewidget-1.2.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/c/collective.z3cform.datetimewidget/collective.z3cform.datetimewidget-1.2.3.zip";
      md5 = "439117021c93f26c677510504ee245d3";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ z3c_form ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_protect = buildPythonPackage rec {
    name = "plone.protect-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.protect/plone.protect-2.0.2.zip";
      md5 = "74925ffb08782e72f9b1e850fa78fffa";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_app_form = buildPythonPackage rec {
    name = "zope.app.form-4.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.app.form/zope.app.form-4.0.2.tar.gz";
      md5 = "3d2b164d9d37a71490a024aaeb412e91";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  mechanize = buildPythonPackage rec {
    name = "mechanize-0.2.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/m/mechanize/mechanize-0.2.5.zip";
      md5 = "a497ad4e875f7506ffcf8ad3ada4c2fc";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_iterate = buildPythonPackage rec {
    name = "plone.app.iterate-2.1.10";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.iterate/plone.app.iterate-2.1.10.zip";
      md5 = "8bd270d8a3c9509e524a06e092a9b4c4";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_namedfile = buildPythonPackage rec {
    name = "plone.namedfile-2.0.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.namedfile/plone.namedfile-2.0.1.zip";
      md5 = "9739c2fe25977d7e050a85eaed9e776a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_rfc822 ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  accesscontrol = buildPythonPackage rec {
    name = "AccessControl-3.0.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/A/AccessControl/AccessControl-3.0.6.zip";
      md5 = "a8ce472482adabf9ec969f3971a39a19";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ acquisition datetime extensionclass persistence record restrictedpython transaction zexceptions zodb3 zope_configuration zope_deferredimport zope_publisher zope_schema zope_security zope_testing ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_testing = buildPythonPackage rec {
    name = "zope.testing-3.9.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.testing/zope.testing-3.9.7.tar.gz";
      md5 = "8999f3d143d416dc3c8b2a5bd6f33e28";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_externaleditor = buildPythonPackage rec {
    name = "Products.ExternalEditor-1.1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ExternalEditor/Products.ExternalEditor-1.1.0.zip";
      md5 = "475fea6e0b958c0c51cfdbfef2f4e623";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_app_publication = buildPythonPackage rec {
    name = "zope.app.publication-3.12.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.app.publication/zope.app.publication-3.12.0.zip";
      md5 = "d8c521287f52fb9f40fa9b8c2acb4675";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_authentication zope_error ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_filerepresentation = buildPythonPackage rec {
    name = "zope.filerepresentation-3.6.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.filerepresentation/zope.filerepresentation-3.6.1.tar.gz";
      md5 = "4a7a434094f4bfa99a7f22e75966c359";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  six = buildPythonPackage rec {
    name = "six-1.2.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/s/six/six-1.2.0.tar.gz";
      md5 = "2a5d1afc79912832ac78fd38e3d75d7e";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_dexterity = buildPythonPackage rec {
    name = "plone.app.dexterity-2.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.dexterity/plone.app.dexterity-2.0.4.zip";
      md5 = "3fabdb2ec9fa0cfee0ffd4b7e9f05f5b";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_textfield plone_behavior plone_dexterity plone_formwidget_namedfile plone_schemaeditor ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_exceptions = buildPythonPackage rec {
    name = "zope.exceptions-3.6.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.exceptions/zope.exceptions-3.6.2.tar.gz";
      md5 = "d7234d99d728abe3d9275346e8d24fd9";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_layout = buildPythonPackage rec {
    name = "plone.app.layout-2.3.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.layout/plone.app.layout-2.3.4.zip";
      md5 = "817819f27ad46fcb8a9d66e988fa08f2";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_portlets plone_app_viewletmanager plone_portlets zope_deprecation products_cmfdynamicviewfti products_cmfeditions ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_contenttype = buildPythonPackage rec {
    name = "zope.contenttype-3.5.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.contenttype/zope.contenttype-3.5.5.zip";
      md5 = "c6ac80e6887de4108a383f349fbdf332";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  five_customerize = buildPythonPackage rec {
    name = "five.customerize-1.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/f/five.customerize/five.customerize-1.1.zip";
      md5 = "80772212a2d55150a6c070fc4638b0c7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_portlets zope_componentvocabulary ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_uuid = buildPythonPackage rec {
    name = "plone.uuid-1.0.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.uuid/plone.uuid-1.0.3.zip";
      md5 = "183fe2911a7d6c9f6b3103855e98ad8a";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_site = buildPythonPackage rec {
    name = "zope.site-3.9.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.site/zope.site-3.9.2.tar.gz";
      md5 = "36a0b8dfbd713ed452ce6973ab0a3ddb";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_annotation ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  wicked = buildPythonPackage rec {
    name = "wicked-1.1.10";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/w/wicked/wicked-1.1.10.zip";
      md5 = "f65611f11d547d7dc8e623bf87d3929d";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_schemaeditor = buildPythonPackage rec {
    name = "plone.schemaeditor-1.3.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.schemaeditor/plone.schemaeditor-1.3.1.zip";
      md5 = "81a5a66cc07b20c554c68ad2ae831b2f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_uuid = buildPythonPackage rec {
    name = "plone.app.uuid-1.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.uuid/plone.app.uuid-1.0.zip";
      md5 = "9ca8dcfb09a8a0d6bbee0f28073c3d3f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_indexer ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  unittest2 = buildPythonPackage rec {
    name = "unittest2-0.5.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/u/unittest2/unittest2-0.5.1.zip";
      md5 = "1527fb89e38343945af1166342d851ee";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  persistence = buildPythonPackage rec {
    name = "Persistence-2.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Persistence/Persistence-2.13.2.zip";
      md5 = "92693648ccdc59c8fc71f7f06b1d228c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zodb3 ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_zopeversioncontrol = buildPythonPackage rec {
    name = "Products.ZopeVersionControl-1.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ZopeVersionControl/Products.ZopeVersionControl-1.1.3.zip";
      md5 = "238239102f3ac798ee4f4c53343a561f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_location = buildPythonPackage rec {
    name = "zope.location-3.9.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.location/zope.location-3.9.1.tar.gz";
      md5 = "1684a8f986099d15296f670c58e713d8";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_proxy ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_browsermenu = buildPythonPackage rec {
    name = "zope.browsermenu-3.9.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.browsermenu/zope.browsermenu-3.9.1.zip";
      md5 = "a47c7b1e786661c912a1150bf8d1f83f";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_pagetemplate zope_traversing ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_workflow = buildPythonPackage rec {
    name = "plone.app.workflow-2.1.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.workflow/plone.app.workflow-2.1.2.zip";
      md5 = "8da95b396f3a9ec54895085ef12202a7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_locking = buildPythonPackage rec {
    name = "plone.locking-2.0.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.locking/plone.locking-2.0.4.zip";
      md5 = "a7f8b8db78f57272d351d7fe0d067eb2";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_dottedname = buildPythonPackage rec {
    name = "zope.dottedname-3.4.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.dottedname/zope.dottedname-3.4.6.tar.gz";
      md5 = "62d639f75b31d2d864fe5982cb23959c";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_cachedescriptors = buildPythonPackage rec {
    name = "zope.cachedescriptors-3.5.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.cachedescriptors/zope.cachedescriptors-3.5.1.zip";
      md5 = "263459a95238fd61d17e815d97ca49ce";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_collection = buildPythonPackage rec {
    name = "plone.app.collection-1.0.8";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.collection/plone.app.collection-1.0.8.zip";
      md5 = "8bbd299daa04b35ecfad3c13afa7aba0";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_portlet_collection ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zc_lockfile = buildPythonPackage rec {
    name = "zc.lockfile-1.0.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zc.lockfile/zc.lockfile-1.0.0.tar.gz";
      md5 = "6cf83766ef9935c33e240b0904c7a45e";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  lxml = buildPythonPackage rec {
    name = "lxml-2.3.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/l/lxml/lxml-2.3.6.tar.gz";
      md5 = "d5d886088e78b1bdbfd66d328fc2d0bc";
    };
    buildInputs = [ pkgs.libxml2 pkgs.libxslt ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_contentrules = buildPythonPackage rec {
    name = "plone.contentrules-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.contentrules/plone.contentrules-2.0.2.zip";
      md5 = "a32370656c4fd58652fcd8a234db69c5";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_sendmail = buildPythonPackage rec {
    name = "zope.sendmail-3.7.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.sendmail/zope.sendmail-3.7.5.tar.gz";
      md5 = "8a513ecf2b41cad849f6607bf16d6818";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_formlib = buildPythonPackage rec {
    name = "zope.formlib-4.0.6";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.formlib/zope.formlib-4.0.6.zip";
      md5 = "eed9c94382d11a4dececd0a48ac1d3f2";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ zope_datetime ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_caching = buildPythonPackage rec {
    name = "plone.app.caching-1.1.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.caching/plone.app.caching-1.1.3.zip";
      md5 = "1975506ecf8d42944946dbb2b8f8dc01";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_cachepurging ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_cmfplone = buildPythonPackage rec {
    name = "Products.CMFPlone-4.3rc1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.CMFPlone/Products.CMFPlone-4.3rc1.zip";
      md5 = "cc861f8fa93f50a531cb850ea5a9fa37";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ pillow products_atcontenttypes products_archetypes products_cmfactionicons products_cmfcalendar products_cmfdefault products_cmfdifftool products_cmfdynamicviewfti products_cmfeditions products_cmfformcontroller products_cmfquickinstallertool products_cmfuid products_dcworkflow products_extendedpathindex products_externaleditor products_mimetypesregistry products_passwordresettool products_placelesstranslationservice products_plonelanguagetool products_plonepas products_pluggableauthservice products_pluginregistry products_portaltransforms products_resourceregistries products_tinymce products_statusmessages archetypes_querywidget archetypes_referencebrowserwidget borg_localrole five_customerize plone_app_blob plone_app_collection plone_app_content plone_app_contentlisting plone_app_contentmenu plone_app_contentrules plone_app_controlpanel plone_app_customerize plone_app_discussion plone_app_folder plone_app_form plone_app_i18n plone_app_jquery plone_app_jquerytools plone_app_layout plone_app_linkintegrity plone_app_locales plone_app_portlets plone_app_redirector plone_app_registry plone_app_search plone_app_upgrade plone_app_users plone_app_uuid plone_app_viewletmanager plone_app_vocabularies plone_app_workflow plone_batching plone_browserlayer plone_contentrules plone_fieldsets plone_i18n plone_indexer plone_intelligenttext plone_locking plone_memoize plone_portlet_collection plone_portlet_static plone_portlets plone_protect plone_registry plone_session plone_theme plonetheme_classic plonetheme_sunburst z3c_autoinclude zope_app_locales zope_deprecation ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  transaction = buildPythonPackage rec {
    name = "transaction-1.1.1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/t/transaction/transaction-1.1.1.tar.gz";
      md5 = "30b062baa34fe1521ad979fb088c8c55";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_controlpanel = buildPythonPackage rec {
    name = "plone.app.controlpanel-2.3.4";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.controlpanel/plone.app.controlpanel-2.3.4.zip";
      md5 = "d01b8c188498080a52275de2a50b25eb";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_workflow plone_fieldsets zope_cachedescriptors ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_redirector = buildPythonPackage rec {
    name = "plone.app.redirector-1.2a1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.redirector/plone.app.redirector-1.2a1.zip";
      md5 = "b63b6443b4bbc5562bddcb43600349f7";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_component = buildPythonPackage rec {
    name = "zope.component-3.9.5";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.component/zope.component-3.9.5.tar.gz";
      md5 = "22780b445b1b479701c05978055d1c82";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ zope_interface zope_event ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zope_broken = buildPythonPackage rec {
    name = "zope.broken-3.6.0";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zope.broken/zope.broken-3.6.0.zip";
      md5 = "eff24d7918099a3e899ee63a9c31bee6";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_resourceregistries = buildPythonPackage rec {
    name = "Products.ResourceRegistries-2.2.7";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ResourceRegistries/Products.ResourceRegistries-2.2.7.zip";
      md5 = "954e31a168a1eb3153e2fd4e590bb9ba";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [ plone_app_registry ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_openid = buildPythonPackage rec {
    name = "plone.app.openid-2.0.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.openid/plone.app.openid-2.0.2.tar.gz";
      md5 = "ae0748f91cab0612a498926d405d8edd";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [ plone_openid ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  z3c_caching = buildPythonPackage rec {
    name = "z3c.caching-2.0a1";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/z3c.caching/z3c.caching-2.0a1.tar.gz";
      md5 = "17f250b5084c2324a7d15c6810ee628e";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  plone_app_textfield = buildPythonPackage rec {
    name = "plone.app.textfield-1.2.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/p/plone.app.textfield/plone.app.textfield-1.2.2.zip";
      md5 = "f832887a40826d6f68c48b48f071fb9c";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  tempstorage = buildPythonPackage rec {
    name = "tempstorage-2.12.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/t/tempstorage/tempstorage-2.12.2.zip";
      md5 = "7a2b76b39839e229249b1bb175604480";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  zc_buildout = buildPythonPackage rec {
    name = "zc.buildout-1.6.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/z/zc.buildout/zc.buildout-1.6.3.tar.gz";
      md5 = "1523662da2cc92f10d61b48c971e8713";
    };
    buildInputs = [  ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  products_zctextindex = buildPythonPackage rec {
    name = "Products.ZCTextIndex-2.13.3";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/P/Products.ZCTextIndex/Products.ZCTextIndex-2.13.3.zip";
      md5 = "bf95ea9fa2831237fa3c3d38fafdec96";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

  extensionclass = buildPythonPackage rec {
    name = "ExtensionClass-2.13.2";
    src = fetchurl {
      url = "http://pypi.python.org/packages/source/E/ExtensionClass/ExtensionClass-2.13.2.zip";
      md5 = "0236e6d7da9e8b87b9ba45f1b8f930b8";
    };
    buildInputs = [ pkgs.unzip ];
    propagatedBuildInputs = [  ];
    installCommand = ''
      easy_install --always-unzip --no-deps --prefix="$out" .
    '';
    doCheck = false;
    meta = {
       maintainers = [
         stdenv.lib.maintainers.chaoflow
         stdenv.lib.maintainers.garbas
         stdenv.lib.maintainers.goibhniu
      ];
    };
  };

}; in plone43rc1Packages