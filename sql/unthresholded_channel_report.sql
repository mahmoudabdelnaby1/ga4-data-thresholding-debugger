-- BigQuery Unthresholded Channel Acquisition Query (Bypasses Google Signals Masking)
SELECT
  traffic_source.source AS source,
  traffic_source.medium AS medium,
  COUNT(DISTINCT user_pseudo_id) AS exact_users,
  COUNTIF(event_name = 'purchase') AS exact_purchases,
  SUM(COALESCE((SELECT value.double_value FROM UNNEST(event_params) WHERE key = 'value'), 0)) AS exact_revenue
FROM
  `your-project.analytics_123456789.events_*`
GROUP BY
  source, medium
ORDER BY
  exact_revenue DESC;
