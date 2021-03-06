INSERT INTO public.option_product (product_model_number,product_hash,manufacturer_id,name,groups,depth,height,width,shipping_weight,unit_of_measure,uom_measurement,tax_code,freight_class,freight_code,description,msrp,wholesale_price,wholesale_qty,utility_info,sku,product_family,lead_time,created_at,created_by)
SELECT a.model_no,a.product_hash,a.mfg_id,a.name,a.groups,a.post_depth,a.height,a.width,a.post_shipping_weight,a.post_unit_of_measure,a.uom_measurement,a.avalara_tax_code,a.freight_class,a.avalara_freight_code,a.key_features,a.post_msrp,a.price_usd,a.price_by_qty,a.key_utility_information,a.sku,UPPER(a.product_family),a.lead_time,current_timestamp,1
FROM loading.akeneo a
WHERE a.item_type = 'item_type_option' and a.enabled = '1'
ON CONFLICT (product_hash) DO UPDATE
SET manufacturer_id=EXCLUDED.manufacturer_id,name=EXCLUDED.name,groups=EXCLUDED.groups,depth=EXCLUDED.depth,height=EXCLUDED.height,width=EXCLUDED.width,shipping_weight=EXCLUDED.shipping_weight,unit_of_measure=EXCLUDED.unit_of_measure,uom_measurement=EXCLUDED.uom_measurement,tax_code=EXCLUDED.tax_code,freight_class=EXCLUDED.freight_class,freight_code=EXCLUDED.freight_code,description=EXCLUDED.description,msrp=EXCLUDED.msrp,wholesale_price=EXCLUDED.wholesale_price,wholesale_qty=EXCLUDED.wholesale_qty,utility_info=EXCLUDED.utility_info,sku=EXCLUDED.sku,product_family=EXCLUDED.product_family,lead_time=EXCLUDED.lead_time,updated_at=current_timestamp,updated_by=1,deleted_at=NULL,deleted_by=NULL;

UPDATE public.option_product
SET deleted_at=current_timestamp,deleted_by=1
FROM loading.akeneo a
WHERE a.product_hash=option_product.product_hash and a.enabled='0'

