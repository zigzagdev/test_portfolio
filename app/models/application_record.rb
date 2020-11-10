# frozen_string_literal: true
# モデル基底クラス
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
