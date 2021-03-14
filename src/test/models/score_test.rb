require "test_helper"

RSpec.describe Score, type: :model do
  describe '#create' do
    before do
      @score = FactoryBot.build(:score)
    end
    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@score).to be_valid
    end
    it '西暦を入力してください' do
      @score.score_year = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("西暦を入力")
    end
    it '月間の費用' do
      @score.score_month = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("月間の費用を入力")
    end
    it '毎日の費用' do
      @score.score_day = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("毎日の費用を入力")
    end
    it '月間の収入' do
      @score.monthly_income = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("月間の収入")
    end
    it '日割りの費用' do
      @score.pay = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("日割りの費用を入力")
    end
    it '一日の費用' do
      @score.pay_all = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("一日の費用を入力")
    end
    it '費用' do
      @score.expense = ""
      @score.valid?
      expect(@score.errors.full_messages).to include("費用を入力")
    end
  end
end

