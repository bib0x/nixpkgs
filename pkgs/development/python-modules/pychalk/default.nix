{lib, buildPythonPackage, fetchPypi, pbr, python3Packages }:

buildPythonPackage rec {
    pname = "pychalk";
    version = "2.0.1";
    src = fetchPypi {
      inherit pname version;
      sha256 = "sha256-92MnX2+miDWjDSLCRJ9zck1WnzNTKgMdJuMu3GBOfjk=";
    };

    doCheck = false;

    propagatedBuildInputs = with python3Packages; [ six ];

    nativeBuildInputs = [ pbr ];

    meta = with lib; {
      homepage = "https://github.com/anthonyalmarza/chalk";
      description = "Light-weight python package for terminal output in color";
      license = licenses.mit;
      maintainers = with maintainers; [ anthonyalmarza ];
    };
}
