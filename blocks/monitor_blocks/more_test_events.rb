def monthly_sales
    110
end

target_sales = 2200

event "月間売上が目標を上回っている" do
    target_sales < monthly_sales
end

event "月間売上が目標を下回っている" do
    target_sales > monthly_sales
end

