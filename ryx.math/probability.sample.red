Red [
	Purpose: "Get a random sample from data"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [25-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

sample: function [
	{Returns either one value or a block of n-values randomly sampled from a block! or vector!}
	values [vectors!] 
	size [integer!]
	/without {Sample without replacement}
	/clusters {Sample from clusters}
	/proportional {Sample in proportion from grouping}
	/systematic 

][
	;; data out
	blank dout 

	;; convert vector! since any is a block evaluator
	if vector? values [values: to-block values ] 

	case [
		proportional [

			;; get number of blocks
			if 2 < cluster-count: count? values [
				make error! "Not enough clusters!"
			]

			;; total number of values from all blocks
			total: count? flatten values

			blank temp	
			;; loop through each cluster

			forall values [

				ratio: round multiply divide count? subsample: values/1 total size
				append temp sample subsample ratio 
			]
			;; because red 0.6.5 is not doing scoping right
			return dout: temp			

		]
		clusters [

			;; sets cluster-count while doing the check
			if 2 < cluster-count: count? values [
				make error! "Not enough clusters!"
			]

			;; holder of dout from simple sample
			;; would not be needed if scoping were right
			blank temp	

			;; loop through each cluster
			forall values [
				subsample: values/1
				append temp sample subsample (floor (1.0 * size) / cluster-count)
			]
			;; because red 0.6.5 is not doing scoping right
			dout: temp			


		]
		systematic [

			;; population size / sample size
			interval: divide count? values size

			;; starting point in values
			start: -1 + sample 1 .. interval 1

			;; advance the values block to sample
			values: skip values start

			;; now sample it
			dout: sample values size

		]

		without [
			;; copy since we will destroy
			v: copy values
			loop size [
				append dout picked: random/only v
				pop find v picked
			]

		]
		'otherwise [
			;; build a sample block
			loop size [ 
				append dout any random values
			]
		]
	]

	return either 1 = count? dout [
		first dout
	][
		dout
	]
] 


    



