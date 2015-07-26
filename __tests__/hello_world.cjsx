# @cjsx React.DOM

# TODO make this work.

jest.dontMock '../src/scripts/hello_world'

describe 'HelloWorld', ->
  it 'should render an <h1> with the text "Hello World!"', ->
    React              = require 'react/addons'
    HelloWorld         = require '../src/scripts/hello_world'
    TestUtils          = React.addons.TestUtils

    helloWorld = TestUtils.renderIntoDocument(<HelloWorld />)

    h1 = TestUtils.findRenderedDOMComponentWithTag(helloWorld, 'h1')
    expect(h1.getDOMNode().textContent).toEqual("Hello world!")
