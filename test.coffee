assert = require "assert"
Testify = require "testify"

Testify.test "String functions", (context) ->
  context.test "capitalize", ->
    {capitalize} = require "./index"
    assert.equal capitalize( "hello world" ), "Hello world"
  context.test "titleCase", ->
    {titleCase} = require "./index"
    assert.equal titleCase( "hello woRld" ), "Hello World"
  context.test "underscored", ->
    {underscored} = require "./index"
    assert.equal underscored( "Hello World" ), "hello_world"
  context.test "camelCase", ->
    {camelCase} = require "./index"
    assert.equal camelCase( "Hello World" ), "helloWorld"
  context.test "dashed", ->
    {dashed} = require "./index"
    assert.equal dashed( "Hello World" ), "hello-world"
  context.test "plainText", ->
    {plainText} = require "./index"
    assert.equal plainText("hello-world"), "hello world"
    assert.equal plainText("Hello World"), "hello world"
  context.test "htmlEscape", ->
    {htmlEscape} = require "./index"
    assert.equal htmlEscape( "<a href='foo'>bar & baz</a>" ), 
      "&lt;a href=&#39;foo&#39;&gt;bar &amp; baz&lt;&#x2F;a&gt;"
  