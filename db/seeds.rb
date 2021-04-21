posts = %w[おはよう こんにちは こんばんは]
posts.each do |post|
  Post.create!(content: post)
end
puts '初期データの保存に成功しました!'
