# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: "牛仔范"
Category.create(name: "运动控")
Category.create(name: "正装秀")

Product.create!(title: "爆款牛仔服",
                 description: "修身",
                 price: 328,
                 quantity: 20,
                 image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4k8frb33j30by0bydh1.jpg")
                 )

Product.create!(title: "牛仔半袖",
                description: "蓝色纯棉",
                price: 128,
                quantity: 50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jf218j9j30by0byq45.jpg")
                )

Product.create!(title: "牛仔短裤",
                 description: "清凉休闲",
                 price: 199,
                 quantity: 20,
                 image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fg4jaor4lnj30by0bymyb.jpg")
                 )

Product.create!(title: "百搭鞋",
                description: "舒适透气",
                price: 299,
                quantity: 50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jaogq0ej30by0byjsg.jpg")
                )

Product.create!(title: "夏季防风运动衣",
               description: "透气",
               price: 199,
               quantity: 50,
               image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8mp30j30by0byt9r.jpg")
               )

Product.create!(title: "室内多功能运动器械",
              description: "引体向上、仰卧起坐",
              price: 1288,
              quantity: 10,
              image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8yg2kj30by0bydgd.jpg")
              )

Product.create!(title: "nike休闲跑鞋",
               description: "舒适透气",
               price: 799,
               quantity: 100,
               image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8riw1j30by0byjrq.jpg")
               )

Product.create!(title: "跑步健身套装",
              description: "舒适透气",
              price: 388,
              quantity: 5,
              image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fg4jm92s8bj30by0byt8o.jpg")
              )

Product.create!(title: "商务西服套装",
               description: "优雅帅气",
               price: 688,
               quantity: 10,
               image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju871psj30by0bymxs.jpg")
               )

Product.create!(title: "燕尾服套装",
              description: "结婚、指挥、宴会专用",
              price: 799,
              quantity: 5,
              image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju825bej30by0byaal.jpg")
              )

Product.create!(title: "夏季衬衣",
               description: "免烫纯棉",
               price: 288,
               quantity: 30,
               image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fg4ju7wejaj30by0by0t9.jpg")
               )

Product.create!(title: "花花公子商务皮鞋",
              description: "舒适透气",
              price: 688,
              quantity: 15,
              image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4ju7lhk1j30by0byaac.jpg")
              )

Photo.create!(product_id:1,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4k8frb33j30by0bydh1.jpg")
              )

Photo.create!(product_id:2,
              avatar: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jf218j9j30by0byq45.jpg")
              )

Photo.create!(product_id:3,
              avatar: open("https://ws2.sinaimg.cn/large/006tNbRwly1fg4jaor4lnj30by0bymyb.jpg")
              )

Photo.create!(product_id:4,
              avatar: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jaogq0ej30by0byjsg.jpg")
              )

Photo.create!(product_id:5,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8mp30j30by0byt9r.jpg")
              )

Photo.create!(product_id:6,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8yg2kj30by0bydgd.jpg")
              )

Photo.create!(product_id:7,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8riw1j30by0byjrq.jpg")
              )

Photo.create!(product_id:8,
              avatar: open("https://ws1.sinaimg.cn/large/006tNbRwly1fg4jm92s8bj30by0byt8o.jpg")
              )

Photo.create!(product_id:9,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju871psj30by0bymxs.jpg")
              )

Photo.create!(product_id:10,
              avatar: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju825bej30by0byaal.jpg")
              )

Photo.create!(product_id:11,
              avatar: open("https://ws1.sinaimg.cn/large/006tNbRwly1fg4ju7wejaj30by0by0t9.jpg")
              )

Photo.create!(product_id:12,
              avatar: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4ju7lhk1j30by0byaac.jpg")
              )
