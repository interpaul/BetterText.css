# Grunt Configuration
# http://gruntjs.com/getting-started#an-example-gruntfile

module.exports = (grunt) ->

	# Initiate the Grunt configuration.
	grunt.initConfig

		# Allow use of the package.json data.
		pkg: grunt.file.readJSON('package.json')

		# compile less
		less:
			production:
				files: [
					"bettertext.css": "bettertext.less"
				]
		cssmin:
			options:
				sourceMap: true
			target:
				files: [
					"bettertext.min.css": "bettertext.css"
				]

		# track changes
		watch:
			less:
				files: [
					'bettertext.less'
					'src/files/css/*.less'
				]
				tasks: [
					'less:production'
					'notify:less'
				]

		# notify
		notify:
			less:
				options:
					title: 'LESS'
					message: 'bettertext.css compiled'

	# measures the time each task takes
	require('time-grunt')(grunt);

	# Build the available Grunt tasks.
	grunt.loadNpmTasks 'grunt-contrib-less'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-cssmin'
	grunt.loadNpmTasks 'grunt-notify'

	# Register our Grunt tasks.
	grunt.registerTask 'deploy',			 ['less', 'cssmin' ]
	grunt.registerTask 'run',				 ['less', 'cssmin', 'notify:less', 'watch:less']
	grunt.registerTask 'default',			 ['run']
