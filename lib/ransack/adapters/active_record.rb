require 'ransack/adapters/active_record/base'
ActiveRecord::Base.extend Ransack::Adapters::ActiveRecord::Base

case ActiveRecord::VERSION::STRING
when /^3\.0\./
  require 'ransack/adapters/active_record/3.0/context'
else
  require 'ransack/adapters/active_record/context'
end