as yet unclassified
setUpSqueakSneezer

	"In the real world, one sneezer corresponds to about 40ms"
	squeakSneezerInMs := Time millisecondsToRun: [Integer largePrimesUpTo: 1000000].