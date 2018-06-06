DROP TABLE loading.akeneo;

CREATE TABLE loading.akeneo
(
    sku character varying(255) COLLATE pg_catalog."default",
    categories text COLLATE pg_catalog."default",
    enabled boolean,
    family character varying(255) COLLATE pg_catalog."default",
    groups character varying(255) COLLATE pg_catalog."default",
    atero_cat2 character varying(50) COLLATE pg_catalog."default",
    avalara_freight_code character varying(255) COLLATE pg_catalog."default",
    avalara_tax_code character varying(255) COLLATE pg_catalog."default",
    base_name character varying(255) COLLATE pg_catalog."default",
    brochure character varying(255) COLLATE pg_catalog."default",
    brochure_2 character varying(255) COLLATE pg_catalog."default",
    brochure_3 character varying(255) COLLATE pg_catalog."default",
    brochure_4 character varying(255) COLLATE pg_catalog."default",
    brochure_5 character varying(255) COLLATE pg_catalog."default",
    brochure_6 character varying(255) COLLATE pg_catalog."default",
    brochure_7 character varying(255) COLLATE pg_catalog."default",
    brochure_8 character varying(255) COLLATE pg_catalog."default",
    brochure_9 character varying(255) COLLATE pg_catalog."default",
    brochure_10 character varying(255) COLLATE pg_catalog."default",
    cad_file character varying(255) COLLATE pg_catalog."default",
    discontinued boolean,
    discontinued_at timestamp without time zone,
    epn_accessory_groups character varying(255) COLLATE pg_catalog."default",
    epn_accessory_products character varying(1024) COLLATE pg_catalog."default",
    epn_mfg_id character varying(255) COLLATE pg_catalog."default",
    epn_option_groups character varying(255) COLLATE pg_catalog."default",
    epn_option_products character varying(1024) COLLATE pg_catalog."default",
    free_accessory character varying(1024) COLLATE pg_catalog."default",
    freight_class numeric(10,2),
    height numeric(10,2),
    height_unit character varying(255) COLLATE pg_catalog."default",
    image_secondary_1 character varying(1024) COLLATE pg_catalog."default",
    image_secondary_2 character varying(255) COLLATE pg_catalog."default",
    image_secondary_3 character varying(255) COLLATE pg_catalog."default",
    image_secondary_4 character varying(255) COLLATE pg_catalog."default",
    image_secondary_5 character varying(255) COLLATE pg_catalog."default",
    item_type character varying(255) COLLATE pg_catalog."default",
    key_features text COLLATE pg_catalog."default",
    key_utility_information character varying(1024) COLLATE pg_catalog."default",
    lead_time smallint,
    lead_time_unit character varying(255) COLLATE pg_catalog."default",
    length numeric(10,2),
    length_unit character varying(255) COLLATE pg_catalog."default",
    manual character varying(255) COLLATE pg_catalog."default",
    manual_2 character varying(255) COLLATE pg_catalog."default",
    manual_3 character varying(255) COLLATE pg_catalog."default",
    manual_4 character varying(255) COLLATE pg_catalog."default",
    manual_5 character varying(255) COLLATE pg_catalog."default",
    manual_6 character varying(255) COLLATE pg_catalog."default",
    manual_7 character varying(255) COLLATE pg_catalog."default",
    manual_8 character varying(1024) COLLATE pg_catalog."default",
    manual_9 character varying(255) COLLATE pg_catalog."default",
    manual_10 character varying(255) COLLATE pg_catalog."default",
    manufacturer_abbreviation character varying(10) COLLATE pg_catalog."default",
    model_no character varying(255) COLLATE pg_catalog."default",
    name character varying(1024) COLLATE pg_catalog."default",
    pack_groups character varying(255) COLLATE pg_catalog."default",
    pack_products character varying(255) COLLATE pg_catalog."default",
    per_case numeric(10,2),
    price_eur numeric(10,2),
    price_usd numeric(10,2),
    price_by_qty numeric(10,0),
    primary_image character varying(255) COLLATE pg_catalog."default",
    product_family character varying(255) COLLATE pg_catalog."default",
    selling_unit character varying(255) COLLATE pg_catalog."default",
    shipping_weight numeric(10,2),
    shipping_weight_unit character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_2 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_3 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_4 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_5 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_6 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_7 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_8 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_9 character varying(255) COLLATE pg_catalog."default",
    spec_sheet_file_10 character varying(255) COLLATE pg_catalog."default",
    substitution_groups character varying(255) COLLATE pg_catalog."default",
    substitution_products character varying(255) COLLATE pg_catalog."default",
    --supplier_address_line_one character varying(255) COLLATE pg_catalog."default",
    --supplier_address_line_two character varying(255) COLLATE pg_catalog."default",
    --supplier_country character varying(255) COLLATE pg_catalog."default",
    --supplier_description character varying(255) COLLATE pg_catalog."default",
    --supplier_name character varying(255) COLLATE pg_catalog."default",
    --supplier_phone_number character varying(255) COLLATE pg_catalog."default",
    --supplier_poc_first_name character varying(255) COLLATE pg_catalog."default",
    --supplier_poc_last_name character varying(255) COLLATE pg_catalog."default",
    --supplier_state character varying(255) COLLATE pg_catalog."default",
    --supplier_town character varying(255) COLLATE pg_catalog."default",
    --supplier_zip character varying(255) COLLATE pg_catalog."default",
    uom_measurement boolean,
    upc character varying(25) COLLATE pg_catalog."default",
    upsell_groups character varying(255) COLLATE pg_catalog."default",
    upsell_products character varying(255) COLLATE pg_catalog."default",
    variant_axis_1 character varying(255) COLLATE pg_catalog."default",
    variant_axis_1_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_2 character varying(255) COLLATE pg_catalog."default",
    variant_axis_2_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_3 character varying(255) COLLATE pg_catalog."default",
    variant_axis_3_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_4 character varying(255) COLLATE pg_catalog."default",
    variant_axis_4_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_5 character varying(255) COLLATE pg_catalog."default",
    variant_axis_5_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_6 character varying(255) COLLATE pg_catalog."default",
    variant_axis_6_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_7 character varying(255) COLLATE pg_catalog."default",
    variant_axis_7_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_8 character varying(255) COLLATE pg_catalog."default",
    variant_axis_8_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_9 character varying(255) COLLATE pg_catalog."default",
    variant_axis_9_value character varying(255) COLLATE pg_catalog."default",
    variant_axis_10 character varying(255) COLLATE pg_catalog."default",
    variant_axis_10_value character varying(1024) COLLATE pg_catalog."default",
    variant_base_prod smallint,
    video_1 character varying(255) COLLATE pg_catalog."default",
    video_2 character varying(255) COLLATE pg_catalog."default",
    video_3 character varying(255) COLLATE pg_catalog."default",
    video_4 character varying(255) COLLATE pg_catalog."default",
    video_5 character varying(255) COLLATE pg_catalog."default",
    video_url_1 character varying(255) COLLATE pg_catalog."default",
    video_url_2 character varying(255) COLLATE pg_catalog."default",
    video_url_3 character varying(255) COLLATE pg_catalog."default",
    video_url_4 character varying(255) COLLATE pg_catalog."default",
    video_url_5 character varying(255) COLLATE pg_catalog."default",
    warranty character varying(255) COLLATE pg_catalog."default",
    warranty_2 character varying(255) COLLATE pg_catalog."default",
    warranty_3 character varying(255) COLLATE pg_catalog."default",
    warranty_4 character varying(255) COLLATE pg_catalog."default",
    warranty_5 character varying(255) COLLATE pg_catalog."default",
    warranty_6 character varying(255) COLLATE pg_catalog."default",
    warranty_7 character varying(255) COLLATE pg_catalog."default",
    warranty_8 character varying(255) COLLATE pg_catalog."default",
    warranty_9 character varying(255) COLLATE pg_catalog."default",
    warranty_10 character varying(255) COLLATE pg_catalog."default",
    width numeric(10,2),
    width_unit character varying(255) COLLATE pg_catalog."default",
    x_sell_groups character varying(255) COLLATE pg_catalog."default",
    x_sell_products character varying(255) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

