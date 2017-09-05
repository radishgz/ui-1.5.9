FROM node:6
RUN mkdir /source
WORKDIR /source
COPY package.json bower.json ./
COPY scripts ./scripts
RUN npm install && npm install -g bower && bower --allow-root  install && npm cache clean && bower --allow-root cache clean
#COPY . /source
 RUN npm install ansi_up@1.3.0
 RUN npm install bootstrap-sass@3.3.7
 RUN npm install broccoli-asset-rev@2.5.0
 RUN npm install broccoli-middleware@1.0.0-beta.8
 RUN npm install calculate-cache-key-for-tree@1.1.0
 RUN npm install configstore@3.1.0  
 RUN npm install diff@3.2.0  
 RUN npm install ember-api-store@2.2.0
 RUN npm install ember-bootstrap@1.0.0-rc.1
 RUN npm install ember-browserify@1.1.13
 RUN npm install ember-cli-app-version@2.0.2
 RUN npm install ember-cli-babel@5.2.4
 RUN npm install ember-cli-babili@0.1.4
 RUN npm install ember-cli-clipboard@0.4.1
 RUN npm install ember-cli-dependency-checker@1.4.0
 RUN npm install ember-cli-htmlbars@1.3.3
 RUN npm install ember-cli-htmlbars-inline-precompile@0.3.11
 RUN npm install ember-cli-inject-live-reload@1.6.1
 RUN npm install ember-cli-inline-content@0.4.1
 RUN npm install ember-cli-jshint@1.0.5
 RUN npm install ember-cli-node-assets@0.1.6
 RUN npm install ember-cli-qunit@3.1.2
 RUN npm install ember-cli-release@0.2.9
 RUN npm install ember-cli-rtlcss@0.0.1
 RUN npm install ember-cli-sass@5.6.0
 RUN npm install ember-cli-sri@2.1.1
 RUN npm install ember-cli-test-loader@1.1.1
 RUN npm install ember-cli-uglify@1.2.0
 RUN npm install ember-export-application-global@1.1.1
 RUN npm install ember-highcharts@0.5.4
 RUN npm install ember-href-to@1.6.0
 RUN npm install ember-intl@2.13.0
 RUN npm install ember-load-initializers@0.5.1
 RUN npm install ember-power-select@1.0.0-beta.19
 RUN npm install ember-resolver@2.1.1
 RUN npm install ember-route-action-helper@2.0.3
 RUN npm install ember-truth-helpers@1.2.0
 RUN npm install execa@0.6.3  
 RUN npm install express@4.15.3
 RUN npm install forever-agent@0.6.1
 RUN npm install glob@5.0.15
 RUN npm install heimdalljs-graph@0.3.3
 RUN npm install highcharts@5.0.14
 RUN npm install http-proxy@1.16.2
 RUN npm install lacsso@0.0.58
 RUN npm install liquid-fire@0.26.4
 RUN npm install loader.js@4.4.0
 RUN npm install locate-path@2.0.0
 RUN npm install markdown-it@8.3.1
 RUN npm install node-sass@4.5.3
 RUN npm install semver@5.3.0
 RUN npm install shell-quote@1.6.1
 RUN npm install validate-npm-package-name@3.0.0
 RUN npm install xterm@1.0.0
 RUN npm install yamljs@0.2.10
 RUN npm install argparse@1.0.9
 RUN npm install sprintf-js@1.0.3
 RUN npm install glob@7.1.2

CMD ["./scripts/build-static","-f","-s"]
