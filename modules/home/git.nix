{ ... } : {
  programs = {
    git = {
      enable = true;
      
      settings = {
        user = {
          name  = "nya-kr";
          email = "nya@florax.co.nz";
        };

        init.defaultBranch = "main";
        credential.helper = "store";
      };
    };

    delta = {
      enable = true;
      enableGitIntegration = true;
      options = {
        navigate = true;
        line-numbers = true;
        paging = "never";
        side-by-side = true;  # Optional: split view
      };
    };
  };
}