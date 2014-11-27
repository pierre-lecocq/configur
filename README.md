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

    module MyModule
      extend Configur
    end

    MyModule.configur do |config|
      config.debug = true
      config.app_name = 'myawesomeapp'
    end

For a class, here is the corresponding snippet

    require 'configur'

    class MyClass
      include Configur
    end

    my_class = MyClass.new

    my_class.configur do |config|
      config.debug = true
      config.app_name = 'myawesomeapp'
    end

## Methods

After configuring your class or module, you can "query" with the following methods:

    puts MyModule.get_config :app_name
    puts MyModule.get_configs

or

    puts my_class.get_config :app_name
    puts my_class.get_configs

Easy, isn't it?

## License

Please see the [LICENSE](https://github.com/pierre-lecocq/configur/blob/master/LICENSE) file
