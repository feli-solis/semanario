module.exports = function(grunt){

  grunt.initConfig({

    concat: {
      options: {
        separator: ';'
      },
      js: {
        src: ['bower_components/jquery/dist/jquery.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/affix.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/alert.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/button.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/carousel.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/collapse.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/dropdown.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tab.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/transition.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/scrollspy.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/modal.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tooltip.js',
              'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/popover.js',
              ],
        dest: 'dist/js/'
      }
    },

  });

  grunt.loadNpmTasks('grunt-contrib-concat');

}