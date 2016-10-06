class Message < ActiveRecord::Base
    
    # 名前は必須入力かつ２０文字以内
    validates :name , length: { maximum: 20 } , presence: true
    
    # 年齢は必須入力かつ0以上100以下
    validates :age ,  numericality: { greater_than_or_equal_to:0, less_than_or_equal_to:100 }, presence: true
    
    # 内容は必須入力かつ２文字以上３０文字以下
    validates :body , length: { minimum: 2, maximum: 30 } , presence: true
    
end
