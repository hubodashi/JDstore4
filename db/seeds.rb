# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if User.find_by(email: "123@123.com").nil?

u = User.new

u.email = "123@123.com"           # 可以改成自己的 email

u.password = "123456"                # 最少要六码

u.password_confirmation = "123456"   # 最少要六码

u.is_admin = true

u.save

puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"

else

puts "Admin 已经建立过了，脚本跳过该步骤。"

end

Category.create(name: "牛仔范")
Category.create(name: "运动控")
Category.create(name: "正装秀")
Category.create(name: "特价产品")
# 牛仔系列
# 牛仔服
Product.create!(id:1,
                 title: "爆款牛仔服",
                 description: "修身",
                 price: 328,
                 quantity: 20,
                 image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4k8frb33j30by0bydh1.jpg")
                           # ("https://ws3.sinaimg.cn/large/006tNbRwly1fg4k8frb33j30by0bydh1.jpg")
                 )
Product.create!(id:2,
               title: "春装牛仔上衣",
               description: "新款上市 简约大方 工厂直销",
               price: 99,
               quantity: 1000,
               image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbhb5hvzgj30by0bywg9.jpg")
               # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbhb5mbm5j30by0by75c.jpg")
               # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbhb5986bj30by0bymyl.jpg")
               )
Product.create!(id:3,
              title: "春季2017新款薄韩版牛仔夹克",
              description: "新品推荐",
              price: 128,
              quantity: 1000,
              image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbhdtknyzj30by0byt9q.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbhdtf5fmj30by0byzl8.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbhdtq2ahj30by0byab5.jpg")
              )
Product.create!(id:4,
               title: "男士大码型男装夹克",
               description: "复古简约潮流外穿",
               price: 229,
               quantity: 1000,
               image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbhiwfklfj30by0bymy6.jpg")
               # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbhiwao5ej30by0by0tp.jpg")
               # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbhiw5pf3j30by0by0tv.jpg")
               )

# 牛仔半袖+牛仔衬衣
Product.create!(id:5,
                title: "牛仔半袖",
                description: "蓝色纯棉",
                price: 128,
                quantity: 50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jf218j9j30by0byq45.jpg")
                )
Product.create!(id:6,
              title: "春秋季男士长袖牛仔衬衫",
              description: "韩版修身款",
              price: 120,
              quantity: 1000,
              image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbhyh35ogj30by0bygmg.jpg")
              # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbhyazm6oj30by0bygmp.jpg")
              # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbhyazm6oj30by0bygmp.jpg")
              )
Product.create!(id:7,
                title: "男士牛仔寸衣",
                description: "简约大方",
                price: 139,
                quantity: 1000,
                image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbhuz7fdvj30by0by0tt.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbhv1zaq6j30by0bymyi.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbhv1u4ifj30by0by0tw.jpg")
                )
Product.create!(id:8,
                title: "牛仔修身半袖",
                description: "纯棉薄款",
                price: 99,
                quantity: 550,
                image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6hr7zgj30by0bygm9.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6heqprj30by0bygmb.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbi6ftewjj30by0byaar.jpg")
                )

# 牛仔裤
Product.create!(id:9,
                 title: "牛仔短裤",
                 description: "清凉休闲",
                 price: 199,
                 quantity: 20,
                 image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fg4jaor4lnj30by0bymyb.jpg")
                 )
Product.create!(id:10,
                title: "夏季牛仔裤",
                description: "男士修身型",
                price: 115,
                quantity: 1000,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbgsk9jdxj30by0byjsc.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbgsjy0dqj30by0by3zo.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbgsjpkfkj30by0bywfi.jpg")
                )
Product.create!(id:11,
                title: "2017春季热卖牛仔裤",
                description: "中腰牛仔裤",
                price: 158,
                quantity: 300,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbgxhrhf0j30by0byq39.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbgxhvwjoj30by0bydg4.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbgxhij8pj30by0byt8u.jpg")
                )
Product.create!(id:12,
                title: "SELECTED思莱德夏季新款男牛仔裤",
                description: "锥形版型 复古重水洗",
                price: 245,
                quantity: 300,
                image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbh3n6eylj30by0bywet.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbh2eyv0hj30by0bywei.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbh2esx5qj30by0by3yy.jpg")
                )
# 牛仔鞋子
Product.create!(id:13,
                title: "百搭鞋",
                description: "舒适透气",
                price: 299,
                quantity: 50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4jaogq0ej30by0byjsg.jpg")
                )
Product.create!(id:14,
                title: "男士牛仔帆布鞋",
                description: "休闲套脚工作鞋懒人鞋",
                price: 49,
                quantity: 50,
                image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbi8yav0pj30by0byq40.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbi8xw98gj30by0bygn4.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbi8y1gpbj30by0byabd.jpg")
                )
Product.create!(id:15,
                title: "西部牛仔男靴英伦马丁靴",
                description: "真皮短靴复古雕花潮靴",
                price: 189,
                quantity: 50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbibz1m1zj30by0byjs5.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbibyizm0j30by0byta2.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbidht3blj30by0byt9x.jpg")
                )
Product.create!(id:16,
                title: "2017夏季低帮百搭休闲板鞋",
                description: "帆布鞋男鞋子个性港风潮鞋",
                price: 48,
                quantity:20,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbigtevqoj30by0bywfc.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbigt6klsj30by0by0tl.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbigswxduj30by0byjs5.jpg")
                )

# 运动系列
# 运动套装
Product.create!(id:17,
               title: "男运动套装夏季无袖背心短裤",
               description: "健身房运动服套装男跑步衣服两件套薄",
               price: 199,
               quantity: 50,
               image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbj25hst6j30by0byta1.jpg")
               # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbj255vx4j30by0byq3j.jpg")
               # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbj25c6dmj30by0by3z1.jpg")
               )
Product.create!(id:18,
              title: "休闲运动套装",
              description: "亲肤面料 面料柔软 舒适透气 修身直筒裤",
              price: 598,
              quantity: 20,
              image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbj5sntq6j30by0bygmv.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbj5styvej30by0bytaa.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbj5sj9h5j30by0bywfj.jpg")
              )
Product.create!(id:19,
               title: "2017新款运动棉麻男士套装",
               description: "休闲薄款",
               price: 199,
               quantity: 50,
               image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbj80pqfjj30by0byt9g.jpg")
               # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbj80hu8lj30by0bydgk.jpg")
               # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbj802b0tj30by0by74x.jpg")
               )
Product.create!(id:20,
              title: "Kappa卡帕男款运动套装",
              description: "立领开衫+缩口小脚裤",
              price: 599,
              quantity: 50,
              image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbjbzkiy2j30by0byt90.jpg")
              # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbjbzfop4j30by0byq3n.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbjbz9l6sj30by0bygm8.jpg")
              )

#  运动上衣
Product.create!(id:21,
                title: "三叶草 男 短袖上衣",
                description: "黑 BP8986",
                price: 349,
                quantity:20,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbipgtq2dj309q09qdg2.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbipgnmvhj309q09q0st.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbipgindlj309q09qt8z.jpg")
                )
Product.create!(id:22,
                title: "KELME卡尔美夏季新款运动T恤",
                description: "透气速干",
                price: 239,
                quantity:20,
                image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbisge3ugj309q09qgmz.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbisg7m4ij309q09qabs.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbisglf1sj309q09qjt1.jpg")
                )
Product.create!(id:23,
                title: "Markless风衣",
                description: "休闲运动外套修身",
                price: 299,
                quantity:50,
                image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbiviahr2j309q0chgmr.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbivhyumnj309q0ch0v9.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbivhhowpj309q0ch76h.jpg")
                )
Product.create!(id:24,
                title: "男士卫衣春季2017新款",
                description: "韩版潮流圆领套头外套",
                price: 219,
                quantity:20,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbiyx5bucj30by0bymxe.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbiywzgucj30by0byaah.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbiywv52dj30by0by0ti.jpg")
                )

# 运动裤
Product.create!(id:25,
                title: "安踏运动短裤男",
                description: "速干透气黑色跑步运动五分裤",
                price: 99,
                quantity:20,
                image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbrv2iop4j30by0byq3f.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbrv2mayej30by0byglw.jpg")
                # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbrv27it2j30by0bymyc.jpg")
                )
Product.create!(id:26,
                title: "耐克运动裤",
                description: "直筒 宽松 梭织 透气 速干",
                price: 379,
                quantity:20,
                image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbry1m41ej30by0by755.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbry18ir4j30by0byq30.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbry0z0a7j30by0by3yz.jpg")
                )
Product.create!(id:27,
                title: "PUMA彪马七分裤",
                description: "透气收口小脚",
                price: 249,
                quantity:50,
                image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbs0yg10fj30by0byjrt.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbs0y0coqj30by0by0st.jpg")
                # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbs0y86kwj30by0bymy6.jpg")
                )
Product.create!(id:28,
                title: "GXG 春装新款黑色束脚裤子",
                description: "运动针织裤",
                price: 269,
                quantity:10,
                image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbs3wclufj30by0by3zo.jpg")
                # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbs3wclufj30by0by3zo.jpg")
                # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbs3w4ikwj30by0bydfu.jpg")
                )


# 运动鞋
Product.create!(id:29,
               title: "nike休闲跑鞋",
               description: "舒适透气",
               price: 799,
               quantity: 100,
               image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8riw1j30by0byjrq.jpg")
               )
Product.create!(id:30,
              title: "NIKE COURT LITE 男子网球运动鞋",
              description: "轻盈缓震 经久耐磨 透气舒适",
              price: 499,
              quantity: 5,
              image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbsf0mgh9j30by0byglq.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbsf0bhb9j30by0bydfu.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbsf0bhb9j30by0bydfu.jpg")
              )
Product.create!(id:31,
              title: "adidas跑步鞋",
              description: "透气阿尔法小椰子男子运动鞋",
              price: 899,
              quantity: 5,
              image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsif136mj30by0byq33.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsif136mj30by0byq33.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbsif6x2mj30by0byq31.jpg")
              )
Product.create!(id:32,
              title: "匹克时尚拼色跑鞋",
              description: "一体飞织 缓震气垫 耐磨防滑",
              price: 459,
              quantity: 5,
              image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbslpywu0j30by0bygmt.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbslps55cj30by0bywfy.jpg")
              # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbslplj5aj30by0byab0.jpg")
              )
# 正装系列
# 西服燕尾服
Product.create!(id:33,
               title: "商务西服套装",
               description: "优雅帅气",
               price: 2688,
               quantity: 10,
               image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju871psj30by0bymxs.jpg")
               )

Product.create!(id:34,
              title: "燕尾服套装",
              description: "结婚、指挥、宴会专用",
              price: 2799,
              quantity: 5,
              image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju825bej30by0byaal.jpg")
              )
Product.create!(id:35,
              title: "报喜鸟西装",
              description: "可定制各尺码 可选择各面料 详情咨询客服",
              price: 4590,
              quantity: 5,
              image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbt49xlpej30by0by74v.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbt49q6ydj30by0byaan.jpg")
              # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbt49bvcwj30by0bydgg.jpg")
              )
Product.create!(id:36,
              title: "Massimo Dutti时尚西装",
              description: "修身款",
              price: 1590,
              quantity: 5,
              image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbt7f2o0vj30by0byq3d.jpg")
              # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbt7erusqj30by0bydg0.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbt7f8xefj30by0byt98.jpg")
              )

# 衬衣
Product.create!(id:37,
               title: "夏季衬衣",
               description: "免烫纯棉",
               price: 288,
               quantity: 30,
               image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fg4ju7wejaj30by0by0t9.jpg")
               )
Product.create!(id:38,
             title: "雅戈尔男士短袖衬衫",
             description: "商务休闲纯色免烫",
             price: 198,
             quantity: 15,
             image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbxme7lj30by0byt9d.jpg")
             # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbx8x71j30by0bymyr.jpg")
             # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbxfkk4j30by0byjtf.jpg")
             )
Product.create!(id:39,
            title: "柒牌长袖衬衫2017春季新款",
            description: "修饰颈部曲线 领部硬挺 凸显商务范",
            price: 179,
            quantity: 25,
            image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbtep2c8mj30by0bywf3.jpg")
            # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbtepffbvj30by0bygm9.jpg")
            # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbtepry83j30by0byaa7.jpg")
            )
Product.create!(id:40,
            title: "G2000商务男装纯色长袖衬衫",
            description: "简约百搭修身暗纹衬衣",
            price: 169,
            quantity: 30,
            image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbthumkv0j30by0bywev.jpg")
            # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbthuetbwj30by0byt9l.jpg")
            # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbthv9c61j30by0byjs3.jpg")
            )
# 领带+腰带
Product.create!(id:41,
            title: "[预售]Calvin Klein男士商务休闲领带",
            description: "海外直供",
            price: 599,
            quantity: 5,
            image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbtn5t4twj30by0bydh2.jpg")
            # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbtn5fdz9j30by0by74u.jpg")
            # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbtn5902pj30by0by3z6.jpg")
            )
Product.create!(id:42,
            title: "GUCCI男士新款单圈腰带",
            description: "圆形银扣带头单圈",
            price: 2500,
            quantity: 3,
            image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbtqctuirj30by0by0tg.jpg")
            # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbtqd1t5nj30by0by0th.jpg")
            # image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbtqd7t0pj30by0by0tm.jpg")
            )
Product.create!(id:43,
            title: "Brooks Brothers B2008R男经典款条纹领带",
            description: "美国品牌 海外直供",
            price: 1089,
            quantity: 5,
            image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbtwhsomuj309u0by3yo.jpg")
            # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbtwhmi79j309u0by74e.jpg")
            # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbtwh8y79j309u0byaa7.jpg")
            )
Product.create!(id:44,
            title: "报喜鸟新款高端男士印花领结",
            description: "韩版新郎结婚礼服桑蚕丝小领带",
            price: 299,
            quantity: 30,
            image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbu1dolijj30by0byq3d.jpg")
            # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbu1dyghzj30by0byt8y.jpg")
            # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbu1dthssj30by0byjsb.jpg")
            )

# 皮鞋
Product.create!(id:45,
              title: "花花公子商务皮鞋",
              description: "舒适透气",
              price: 688,
              quantity: 15,
              image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fg4ju7lhk1j30by0byaac.jpg")
              )
Product.create!(id:46,
              title: "GXG新品男士时尚英伦牛皮系",
              description: "尖头设计 英伦范 经典板型 真皮材质",
              price: 969,
              quantity: 5,
              image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbsqd28vxj30by0by3yl.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsqdbmeuj30by0bydfv.jpg")
              # image: open("https://ws3.sinaimg.cn/large/006tNbRwly1fgbsqd77snj30by0byglt.jpg")
              )
Product.create!(id:47,
              title: "clarks正装男鞋",
              description: "真皮 舒适 潮流 2017新款",
              price: 1299,
              quantity: 5,
              image: open("https://ws1.sinaimg.cn/large/006tNbRwly1fgbsyck8w4j30by0byjs7.jpg")
              # image: open("https://ws4.sinaimg.cn/large/006tNbRwly1fgbsycetfhj30by0byq3k.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsyca79jj30by0bymxk.jpg")
              )
Product.create!(id:48,
              title: "金利来夏季男士商务正装皮鞋",
              description: "时尚手抓纹 英伦布洛克",
              price: 699,
              quantity: 10,
              image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsu7azxqj30by0by3yy.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsuhz76nj30by0byq3u.jpg")
              # image: open("https://ws2.sinaimg.cn/large/006tNbRwly1fgbsu6vpzsj30by0by74w.jpg")
              )

Photo.create!(product_id:1,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fg4k8frb33j30by0bydh1.jpg'))
Photo.create!(product_id:1,avatar: open('https://ws1.sinaimg.cn/large/006tNc79ly1fgcqt3qerwj30go0b575i.jpg'))
Photo.create!(product_id:1,avatar: open('https://ws2.sinaimg.cn/large/006tNc79ly1fgcqt3wk0ej30ku0xcqb7.jpg'))

Photo.create!(product_id:2,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbhb5hvzgj30by0bywg9.jpg'))
Photo.create!(product_id:2,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbhb5mbm5j30by0by75c.jpg'))
Photo.create!(product_id:2,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbhb5986bj30by0bymyl.jpg'))

Photo.create!(product_id:3,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbhdtknyzj30by0byt9q.jpg'))
Photo.create!(product_id:3,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbhdtf5fmj30by0byzl8.jpg'))
Photo.create!(product_id:3,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbhdtq2ahj30by0byab5.jpg'))

Photo.create!(product_id:4,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbhiwfklfj30by0bymy6.jpg'))
Photo.create!(product_id:4,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbhiwao5ej30by0by0tp.jpg'))
Photo.create!(product_id:4,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbhiw5pf3j30by0by0tv.jpg'))

Photo.create!(product_id:5,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fg4jf218j9j30by0byq45.jpg'))

Photo.create!(product_id:6,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbhyh35ogj30by0bygmg.jpg'))
Photo.create!(product_id:6,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbhyazm6oj30by0bygmp.jpg'))
Photo.create!(product_id:6,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbhyazm6oj30by0bygmp.jpg'))

Photo.create!(product_id:7,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbhuz7fdvj30by0by0tt.jpg'))
Photo.create!(product_id:7,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbhv1zaq6j30by0bymyi.jpg'))
Photo.create!(product_id:7,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbhv1u4ifj30by0by0tw.jpg'))

Photo.create!(product_id:8,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6hr7zgj30by0bygm9.jpg'))
Photo.create!(product_id:8,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6heqprj30by0bygmb.jpg'))
Photo.create!(product_id:8,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbi6ftewjj30by0byaar.jpg'))

Photo.create!(product_id:8,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6hr7zgj30by0bygm9.jpg'))
Photo.create!(product_id:8,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbi6heqprj30by0bygmb.jpg'))
Photo.create!(product_id:8,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbi6ftewjj30by0byaar.jpg'))

Photo.create!(product_id:9,avatar: open("https://ws2.sinaimg.cn/large/006tNbRwly1fg4jaor4lnj30by0bymyb.jpg"))

Photo.create!(product_id:10,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbgsk9jdxj30by0byjsc.jpg'))
Photo.create!(product_id:10,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbgsjy0dqj30by0by3zo.jpg'))
Photo.create!(product_id:10,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbgsjpkfkj30by0bywfi.jpg'))


Photo.create!(product_id:11,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbgxhrhf0j30by0byq39.jpg'))
Photo.create!(product_id:11,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbgxhvwjoj30by0bydg4.jpg'))
Photo.create!(product_id:11,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbgxhij8pj30by0byt8u.jpg'))

Photo.create!(product_id:12,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbh3n6eylj30by0bywet.jpg'))
Photo.create!(product_id:12,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbh2eyv0hj30by0bywei.jpg'))
Photo.create!(product_id:12,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbh2esx5qj30by0by3yy.jpg'))

Photo.create!(product_id:13,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fg4jaogq0ej30by0byjsg.jpg'))

Photo.create!(product_id:14,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbi8yav0pj30by0byq40.jpg'))
Photo.create!(product_id:14,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbi8xw98gj30by0bygn4.jpg'))
Photo.create!(product_id:14,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbi8y1gpbj30by0byabd.jpg'))

Photo.create!(product_id:15,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbibz1m1zj30by0byjs5.jpg'))
Photo.create!(product_id:15,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbibyizm0j30by0byta2.jpg'))
Photo.create!(product_id:15,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbidht3blj30by0byt9x.jpg'))

Photo.create!(product_id:16,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbigtevqoj30by0bywfc.jpg'))
Photo.create!(product_id:16,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbigt6klsj30by0by0tl.jpg'))
Photo.create!(product_id:16,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbigswxduj30by0byjs5.jpg'))

Photo.create!(product_id:17,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbj25hst6j30by0byta1.jpg'))
Photo.create!(product_id:17,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbj255vx4j30by0byq3j.jpg'))
Photo.create!(product_id:17,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbj25c6dmj30by0by3z1.jpg'))

Photo.create!(product_id:18,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbj5sntq6j30by0bygmv.jpg'))
Photo.create!(product_id:18,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbj5styvej30by0bytaa.jpg'))
Photo.create!(product_id:18,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbj5sj9h5j30by0bywfj.jpg'))

Photo.create!(product_id:19,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbj80pqfjj30by0byt9g.jpg'))
Photo.create!(product_id:19,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbj80hu8lj30by0bydgk.jpg'))
Photo.create!(product_id:19,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbj802b0tj30by0by74x.jpg'))

Photo.create!(product_id:20,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbjbzkiy2j30by0byt90.jpg'))
Photo.create!(product_id:20,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbjbzfop4j30by0byq3n.jpg'))
Photo.create!(product_id:20,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbjbz9l6sj30by0bygm8.jpg'))

Photo.create!(product_id:21,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbipgtq2dj309q09qdg2.jpg'))
Photo.create!(product_id:21,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbipgnmvhj309q09q0st.jpg'))
Photo.create!(product_id:21,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbipgindlj309q09qt8z.jpg'))

Photo.create!(product_id:22,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbisge3ugj309q09qgmz.jpg'))
Photo.create!(product_id:22,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbisg7m4ij309q09qabs.jpg'))
Photo.create!(product_id:22,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbisglf1sj309q09qjt1.jpg'))

Photo.create!(product_id:23,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbiviahr2j309q0chgmr.jpg'))
Photo.create!(product_id:23,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbivhyumnj309q0ch0v9.jpg'))
Photo.create!(product_id:23,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbivhhowpj309q0ch76h.jpg'))

Photo.create!(product_id:24,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbiyx5bucj30by0bymxe.jpg'))
Photo.create!(product_id:24,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbiywzgucj30by0byaah.jpg'))
Photo.create!(product_id:24,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbiywv52dj30by0by0ti.jpg'))

Photo.create!(product_id:25,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbrv2iop4j30by0byq3f.jpg'))
Photo.create!(product_id:25,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbrv2mayej30by0byglw.jpg'))
Photo.create!(product_id:25,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbrv27it2j30by0bymyc.jpg'))

Photo.create!(product_id:26,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbs0yg10fj30by0byjrt.jpg'))
Photo.create!(product_id:26,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbs0y0coqj30by0by0st.jpg'))
Photo.create!(product_id:26,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbs0y86kwj30by0bymy6.jpg'))

Photo.create!(product_id:27,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbs0yg10fj30by0byjrt.jpg'))
Photo.create!(product_id:27,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbs0y0coqj30by0by0st.jpg'))
Photo.create!(product_id:27,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbs0y86kwj30by0bymy6.jpg'))

Photo.create!(product_id:28,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbs3wclufj30by0by3zo.jpg'))
Photo.create!(product_id:28,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbs3w4ikwj30by0bydfu.jpg'))

Photo.create!(product_id:29,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fg4jm8riw1j30by0byjrq.jpg'))

Photo.create!(product_id:30,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbsf0mgh9j30by0byglq.jpg'))
Photo.create!(product_id:30,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbsf0bhb9j30by0bydfu.jpg'))
Photo.create!(product_id:30,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbsf0bhb9j30by0bydfu.jpg'))

Photo.create!(product_id:31,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsif136mj30by0byq33.jpg'))
Photo.create!(product_id:31,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsif136mj30by0byq33.jpg'))
Photo.create!(product_id:31,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbsif6x2mj30by0byq31.jpg'))

Photo.create!(product_id:32,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbslpywu0j30by0bygmt.jpg'))
Photo.create!(product_id:32,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbslps55cj30by0bywfy.jpg'))
Photo.create!(product_id:32,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbslplj5aj30by0byab0.jpg'))

Photo.create!(product_id:33,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fg4ju871psj30by0bymxs.jpg'))

Photo.create!(product_id:34,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbslpywu0j30by0bygmt.jpg'))

Photo.create!(product_id:35,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbt49xlpej30by0by74v.jpg'))
Photo.create!(product_id:35,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbt49q6ydj30by0byaan.jpg'))
Photo.create!(product_id:35,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbt49bvcwj30by0bydgg.jpg'))

Photo.create!(product_id:36,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbt7f2o0vj30by0byq3d.jpg'))
Photo.create!(product_id:36,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbt7erusqj30by0bydg0.jpg'))
Photo.create!(product_id:36,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbt7f8xefj30by0byt98.jpg'))

Photo.create!(product_id:37,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fg4ju7wejaj30by0by0t9.jpg'))

Photo.create!(product_id:38,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbxme7lj30by0byt9d.jpg'))
Photo.create!(product_id:38,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbx8x71j30by0bymyr.jpg'))
Photo.create!(product_id:38,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbtbxfkk4j30by0byjtf.jpg'))

Photo.create!(product_id:39,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbtep2c8mj30by0bywf3.jpg'))
Photo.create!(product_id:39,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbtepffbvj30by0bygm9.jpg'))
Photo.create!(product_id:39,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbtepry83j30by0byaa7.jpg'))

Photo.create!(product_id:40,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbthumkv0j30by0bywev.jpg'))
Photo.create!(product_id:40,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbthuetbwj30by0byt9l.jpg'))
Photo.create!(product_id:40,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbthv9c61j30by0byjs3.jpg'))

Photo.create!(product_id:41,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbtn5t4twj30by0bydh2.jpg'))
Photo.create!(product_id:41,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbtn5fdz9j30by0by74u.jpg'))
Photo.create!(product_id:41,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbtn5902pj30by0by3z6.jpg'))

Photo.create!(product_id:42,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbtqctuirj30by0by0tg.jpg'))
Photo.create!(product_id:42,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbtqd1t5nj30by0by0th.jpg'))
Photo.create!(product_id:42,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbtqd7t0pj30by0by0tm.jpg'))

Photo.create!(product_id:43,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbtwhsomuj309u0by3yo.jpg'))
Photo.create!(product_id:43,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbtwhmi79j309u0by74e.jpg'))
Photo.create!(product_id:43,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbtwh8y79j309u0byaa7.jpg'))

Photo.create!(product_id:44,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbu1dolijj30by0byq3d.jpg'))
Photo.create!(product_id:44,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbu1dyghzj30by0byt8y.jpg'))
Photo.create!(product_id:44,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbu1dthssj30by0byjsb.jpg'))

Photo.create!(product_id:45,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fg4ju7lhk1j30by0byaac.jpg'))

Photo.create!(product_id:46,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbsqd28vxj30by0by3yl.jpg'))
Photo.create!(product_id:46,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsqdbmeuj30by0bydfv.jpg'))
Photo.create!(product_id:46,avatar: open('https://ws3.sinaimg.cn/large/006tNbRwly1fgbsqd77snj30by0byglt.jpg'))

Photo.create!(product_id:47,avatar: open('https://ws1.sinaimg.cn/large/006tNbRwly1fgbsyck8w4j30by0byjs7.jpg'))
Photo.create!(product_id:47,avatar: open('https://ws4.sinaimg.cn/large/006tNbRwly1fgbsycetfhj30by0byq3k.jpg'))
Photo.create!(product_id:47,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsyca79jj30by0bymxk.jpg'))

Photo.create!(product_id:48,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsu7azxqj30by0by3yy.jpg'))
Photo.create!(product_id:48,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsuhz76nj30by0byq3u.jpg'))
Photo.create!(product_id:48,avatar: open('https://ws2.sinaimg.cn/large/006tNbRwly1fgbsu6vpzsj30by0by74w.jpg'))
