_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UILabel()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.backgroundColor = UIColor.clearColor()"
    $ "#{@name}.textColor = UIColor(#{_.swiftColor(@baseTextStyle.color)})"
    $ "#{@name}.font = UIFont(name: \"#{@baseTextStyle.font.name}\", size: 24)"
    $ "#{@name}.textAlignment = #{_.swiftAlignment(@textAlign)}"
    $ "#{@name}.text = \"#{@name}\""
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"

exports.renderClass = Swift
