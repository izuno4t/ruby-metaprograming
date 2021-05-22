event "空が落ちてくる" do
    @sky_hight < 300
end

event "空が近づいてくる" do
    @sky_hight < @mountains_hight
end

setup do
    puts "空の高さを設定"
    @sky_hight = 100
end

setup do
    puts "山の高さを設定"
    @mountains_hight = 200
end

