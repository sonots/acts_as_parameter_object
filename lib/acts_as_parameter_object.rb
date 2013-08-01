require 'active_model'
require 'acts_as_parameter_object/version'

module ActsAsParameterObject
  def self.included(base)
    base.send(:include, ActiveModel::Validations)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def parameter_object?
      self.included_modules.include?(ActsAsParameterObject)
    end
  end
end
