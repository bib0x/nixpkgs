{ lib, buildPythonApplication, fetchFromGitHub, python3Packages, pychalk }:

buildPythonApplication rec {
  pname = "glpiscan";
  version = "0.1";
  src = fetchFromGitHub {
    owner = "bib0x";
    repo = "GLPIScan";
    rev = "6003519f359c21d6893112463ec37828782b4d47";
    sha256 = "sha256-2O0LLajosAseDAAHGplt3dDqfL7hRR4Auwqu3sfG8no=";
  };

  propagatedBuildInputs = with python3Packages; [ 
    requests 
    urllib3 
    packaging 
    pychalk
  ];

  doCheck = false;

  meta = with lib; {
      homepage = "https://github.com/Digitemis/GLPIScan";
      description = "Vulnerability scanner for GLPI";
      maintainers = with maintainers; [ Digitemis ];
  };

}
