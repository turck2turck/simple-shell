INSERT INTO public.product (manufacturer_id,cat_sub_assoc_id,product_model_number,product_hash,type,name, variant_group,upc,depth,height,width,diameter,shipping_weight,tax_code,freight_class,freight_code, description,msrp,map,utility_info,sku,created_at,updated_at,created_by,updated_by,deleted_at,deleted_by,product_family,epn_mfg_id)
SELECT a.mfg_id,a.atero_cat_id,a.model_no,a.product_hash,'Option',a.name,NULL,NULL,a.length, a.height,a.width,NULL,a.shipping_weight,a.avalara_tax_code,a.freight_class,a.avalara_freight_code,a.key_features,a.price_usd,NULL,a.key_utility_information,a.sku,current_timestamp,NULL,'2',NULL,NULL,NULL,a.product_family,a.epn_mfg_id
FROM loading.akeneo a
WHERE a.item_type = 'item_type_option'
ON CONFLICT (product_hash) DO UPDATE
SET cat_sub_assoc_id=EXCLUDED.cat_sub_assoc_id, product_hash=EXCLUDED.product_hash, type='Option', name=EXCLUDED.name, depth=EXCLUDED.depth, height=EXCLUDED.height, width=EXCLUDED.width, shipping_weight=EXCLUDED.shipping_weight, tax_code=EXCLUDED.tax_code, freight_class=EXCLUDED.freight_class, freight_code=EXCLUDED.freight_code, description=EXCLUDED.description, msrp=EXCLUDED.msrp, map=EXCLUDED.map, utility_info=EXCLUDED.utility_info, sku=EXCLUDED.sku, updated_at=current_timestamp, updated_by=2,product_family=EXCLUDED.product_family,epn_mfg_id=EXCLUDED.epn_mfg_id;

