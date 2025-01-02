SELECT
    *
FROM
    {{ ref('fct_reviews') }} fr
    INNER JOIN {{ ref('dim_listings_cleansed') }} dlc
    USING (listing_id)
WHERE fr.review_date <= dlc.created_at