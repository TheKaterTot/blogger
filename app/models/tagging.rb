class Tagging < ActiveRecord::Base
  belongs_to :tag, dependent: :destroy
  belongs_to :article, dependent: :destroy
end
