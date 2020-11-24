class Days < ActiveHash::Base
  self.data = [
    {id: 1, name: '1日〜2日で発送'},
    {id: 2, name: '3日〜4日で発送'},
    {id: 3, name: '5日〜6日で発送'},
    {id: 4, name: '7日以上で発送'}
  ]
end