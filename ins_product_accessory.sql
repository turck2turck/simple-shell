INSERT INTO public.product (manufacturer_id,cat_sub_assoc_id,product_model_number,product_hash,type,name,display_name,groups,upc,depth,height,width,diameter,shipping_weight,unit_of_measure,uom_measurement,tax_code,freight_class,freight_code,description,msrp,wholesale_price,wholesale_qty,map,utility_info,sku,product_family,lead_time,option_flag,created_at,created_by)
SELECT a.mfg_id,a.atero_cat_id,a.model_no,a.product_hash,'Accessory',a.name,a.display_name,a.groups,a.upc,a.post_depth,a.height,a.width,NULL,a.post_shipping_weight,a.post_unit_of_measure,a.uom_measurement,a.avalara_tax_code,a.freight_class,a.avalara_freight_code,a.key_features,a.post_msrp,a.price_usd,a.price_by_qty,NULL,a.key_utility_information,a.sku,UPPER(a.product_family),a.lead_time,'false',current_timestamp,1
FROM loading.akeneo a
WHERE a.item_type = 'item_type_accessory' and a.enabled = '1'
ON CONFLICT (product_hash) DO UPDATE
SET cat_sub_assoc_id=EXCLUDED.cat_sub_assoc_id,product_hash=EXCLUDED.product_hash,type='Accessory',name=EXCLUDED.name,depth=EXCLUDED.depth,height=EXCLUDED.height,width=EXCLUDED.width,shipping_weight=EXCLUDED.shipping_weight,tax_code=EXCLUDED.tax_code,freight_class=EXCLUDED.freight_class,freight_code=EXCLUDED.freight_code,description=EXCLUDED.description,msrp=EXCLUDED.msrp,map=EXCLUDED.map,utility_info=EXCLUDED.utility_info,sku=EXCLUDED.sku,product_family=EXCLUDED.product_family,lead_time=EXCLUDED.lead_time,option_flag='false',updated_at=current_timestamp,updated_by=1,deleted_at=NULL,deleted_by=NULL;


UPDATE public.product
SET deleted_at=current_timestamp,deleted_by=1
FROM loading.akeneo a
WHERE a.product_hash=product.product_hash and a.enabled='0'
