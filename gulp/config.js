var src = '.';
var build = 'build';
var development = 'build/development';
var production = 'build/production';
var srcAssets = '../static/';
var developmentAssets = 'build/development';
var productionAssets = 'build/production/static';

module.exports = {
    browsersync: {
        development: {
            server: {
                baseDir: [development, build, src]
            },
            port: 9999,
            files: [
                developmentAssets + '/css/*.css',
                developmentAssets + '/js/*.js',
                developmentAssets + '/img/**',
                developmentAssets + '/fonts/*'
            ]
        }
    },
    delete: {
        src: [developmentAssets]
    },

    hugo: {
        development: {
            src: src,
            dest: development,
            config: 'config.toml'
        }
    }
};
