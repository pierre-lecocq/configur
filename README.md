# Configur

Simply set configuration for your ruby class or module

## How to install it ?

### Command line way

Simply run the folowing command:

    sudo gem install configur

### Bundler way

Add this to your Gemfile

    gem 'configur'

## How to use it ?

No explanation, just an example to show you how easy it is:

    require 'configur'

    class MyClass
      extend Configur
    end

    MyClass.configur do |config|
      config.debug = true
      config.app_name = 'myawesomeapp'
    end

And it also works for modules. Nevermind

## Methods

After configuring your class or module, you can "query" with the following methods:

    puts MyClass.get_config :app_name
    puts MyClass.get_configs

Easy, isn't it?

## License

Please see the [LICENSE](https://github.com/pierre-lecocq/configur/blob/master/LICENSE) file
