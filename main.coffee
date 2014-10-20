_ = require './helpers'

class Swift
  render: ($) ->
    $ "let #{@name} = UILabel()"
    $ "#{@name}.setTranslatesAutoresizingMaskIntoConstraints(false)"
    $ "#{@name}.backgroundColor = UIColor.clearColor()"
    $ "#{@name}.textColor = UIColor(#{_.swiftColor(@baseTextStyle.color)})"
    if @baseTextStyle.font.postScriptName
      $ "#{@name}.font = UIFont(name: \"#{@baseTextStyle.font.postScriptName}\", size: #{@baseTextStyle.font.size})"
    $ "#{@name}.textAlignment = #{_.swiftAlignment(@textAlign)}"
    $ "#{@name}.text = #{_.nsLocalizedString(this)}"
    $.newline()
    $ "#{@options.superviewName}.addSubview(#{@name})"

exports.renderClass = Swift
