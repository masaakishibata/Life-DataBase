require "test_helper"

RSpec.describe Action, type: :model do
  describe '#create' do
    before do
      @action = FactoryBot.build(:action)
    end
    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@action).to be_valid
    end
    it '生活費を入力して下さい' do
      @action.living_expenses = ""
      @action.valid?
      expect(@action.errors.full_messages).to include("生活費を入力してください")
    end
    it '食費を入力して下さい' do
      @action.food_expenses = ""
      @action.valid?
      expect(@action.errors.full_messages).to include("食費を入力してください")
    end
    it '買い物で使った金額を入力して下さい' do
      @action.shopping = ""
      @action.valid?
      expect(@action.errors.full_messages).to include("買い物で使った金額を入力してください")
    end
    it '日付を入力して下さい' do
      @action.action_day = ""
      @action.valid?
      expect(@action.errors.full_messages).to include("日付をを入力してください")
    end
  end
end
