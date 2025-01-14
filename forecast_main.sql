SELECT 

	customer_code,
    dc.customer,
    dc.market,
    f21.forecast_accuracy_21,
    f20.forecast_accuracy_20,
    (f21.forecast_accuracy_21 - f20.forecast_accuracy_20) as change_over_21VS20
FROM fa_2021 f21

JOIN fa_2020 f20
USING (customer_code)

JOIN dim_customer dc
USING (customer_code)