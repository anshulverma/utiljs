global.assert = require('chai').assert

# We need to execute annotated source for coverage report generation. This can
# be determined using `NODE_ENV`.
coverageMode = process.env['NODE_ENV'] is 'coverage'
srcPath = if coverageMode then '../coverage/src' else '../src'

global.main   = require "#{srcPath}/main"
global.cli    = require "#{srcPath}/cli"
global.common = require "#{srcPath}/common"
