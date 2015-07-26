# @cjsx React.DOM

jest.dontMock '../../../src/scripts/components/landing/welcome'

describe 'Welcome', ->
  it 'should render an <h1> with the text "Weclome!"', ->
    React     = require 'react/addons'
    Welcome   = require '../../../src/scripts/components/landing/welcome'
    TestUtils = React.addons.TestUtils

    Welcome = TestUtils.renderIntoDocument(<Welcome />)

    h1 = TestUtils.findRenderedDOMComponentWithTag(Welcome, 'h1')
    expect(h1.getDOMNode().textContent).toEqual("Welcome!")
