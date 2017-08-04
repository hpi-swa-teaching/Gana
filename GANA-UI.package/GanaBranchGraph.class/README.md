A GanaBranchGraph is an algorithm, that computes itself as an visualisation of an ordered commitList.
The graph is planar and ordered onto a grid of rows and columns.

Instance Variables
	childrenDict:		stores edges to children of given commit
	commitList:		sorted list of commits that should be included in graph
	lastCommitPerColumn:		stores the commit furthest down in a column 
	positionDict:		position of each commit in graph layout
	verticalSuccessorDict:		stores the vertical successor of a commit in the graph layout
