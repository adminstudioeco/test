git filter-branch -f --env-filter 
"if [ \"$GIT_COMMITTER_NAME\" = \"MagiusCHE\" ]
 || [ \"$GIT_COMMITTER_NAME\" = \"magiusche\" ]
 || [ \"$GIT_AUTHOR_NAME\" = \"galvianistudioeco\" ]
 || [ \"$GIT_AUTHOR_NAME\" = \"galvianistudioeco\" ]; then
    export GIT_COMMITTER_NAME=\"galvianistudioeco\";
        export GIT_COMMITTER_EMAIL=\"g.alviani@studioeco.it\";
          export GIT_AUTHOR_NAME=\"galvianistudioeco\";
              export GIT_AUTHOR_EMAIL=\"g.alviani@studioeco.it\"; fi;" --tag-name-filter cat -- --branches --tags
git push --force --tags origin "refs/heads/*"

