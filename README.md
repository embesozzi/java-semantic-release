# java-semantic-release (maven)

This example uses ***github workflow*** with ***semantic-release plugins*** to automatize the ***maven library*** release in github:

1. Plugin ```semantic-release/commit-analyzer```: Parses commit messages and determines if new release should made base on 
[AngularJS](https://github.com/angular/angular.js/blob/master/DEVELOPERS) message format.
2. Plugin ```semantic-release/release-notes-generator```: Generates the new [CHANGELOG.md](CHANGELOG.md) based on the result of step 1
3. Plugin ```semantic-release/exec```: Executes ```prepare-release.sh```
    1. Parse git tag version to get java library version. Example:  tag v1.0.0 > 1.0.0
    2. Set new library version in pom.xml based on ```${nextRelease.version}``` executing ```mvn versions:set```
    3. Build new library version ```mvn package```
    4. Copy library to release folder
4. Plugin ```semantic-release/git```: Commit new pom.xml and changelog with comment ```[skip ci]``` in order to be skipped by gh workflow
5. Plugin ```semantic-release/git```: Upload assets to GitHub releases and comment on issues

