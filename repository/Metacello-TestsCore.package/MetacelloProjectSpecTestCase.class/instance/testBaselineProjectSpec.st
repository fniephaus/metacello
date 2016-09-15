tests
testBaselineProjectSpec
  | project |
  project := self projectSpec.
  project
    name: 'Project';
    className: 'BaselineOfProject';
    loads: 'MyPackage';
    loads: #('MyPackage' 'MyTests');
    preLoadDoIt: #'preLoadDoIt';
    postLoadDoIt: #'postLoadDoIt';
    yourself.
  self assert: project name = 'Project'.
  self assert: project className = 'BaselineOfProject'.
  self assert: project versionString = nil.	"characteristic of a nameless project spec ... tis cool"
  self assert: project loads = #('MyPackage' 'MyTests').
  self assert: project preLoadDoIt == #'preLoadDoIt'.
  self assert: project postLoadDoIt == #'postLoadDoIt'.
  self should: [ project includes: #() ] raise: Error.
  self should: [ project requires: #() ] raise: Error.
  self should: [ project answers: #() ] raise: Error.
  project
    projectDo: [ :prjct | self assert: project == prjct ]
    packageDo: [ :ignored | self assert: false ]
    groupDo: [ :ignored | self assert: false ].
  self should: [ project preLoadDoIt: '' ] raise: Error.
  self should: [ project postLoadDoIt: '' ] raise: Error