const Metalsmith = require('metalsmith');
const markdown = require('metalsmith-markdown');
const layouts = require('metalsmith-layouts');
const permalinks = require('metalsmith-permalinks');
const rootPath = require('metalsmith-rootpath');
const discoverPartials = require('metalsmith-discover-partials');
const inPlace = require('metalsmith-in-place')

const watch = require('metalsmith-watch');
const serve = require('metalsmith-serve');

const console = require('console');

const metadata = {
        title: 'redbackup',
        slogan: 'redundant distributed backups',
        description: 'redbackup - The redundant distributed backup solution.',
        url: 'https://www.redbackup.org/',
};

function generate(isDev, isArchive) {
    return Metalsmith(__dirname)
      .metadata(Object.assign({ dev: isDev, archive: isArchive}, metadata))
      .source('./src/')
      .destination('./output')
      .clean(true)
      .use(inPlace())
      .use(markdown())
      .use(permalinks({ relative: false }))
      .use(rootPath())
      .use(discoverPartials({
          directory: 'layouts/partials',
          pattern: /\.hbs$/,
        }))
      .use(layouts({
        engine: 'handlebars',
        directory: 'layouts/',
    }));
}

function build(archive = false) {
    generate(false, archive).build((err) => {
      if (err) { throw err; }
    });
}

function dev() {
    generate(true)
    .use(serve({host: '0.0.0.0'}))
    .use(watch({
      paths: {
        '${source}/**/*': true, // eslint-disable-line no-template-curly-in-string
        'layouts/**/*': '**/*',
      },
      livereload: true,
    }))
    .build((err) => {
        if (err) { throw err; }
    });
}


function main() {
    if (process.argv.length === 2) {
        build();
    } else if (process.argv.length === 3 && process.argv[2] === 'serve') {
        dev();
    } else if (process.argv.length === 3 && process.argv[2] === 'archive') {
        build(true);
    } else {
        console.log('Usage: node build.js [serve]');
        process.exit(1);
    }
}

main();
