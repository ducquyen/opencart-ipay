<form action="<?php echo $action; ?>" method="post">

  <input type="hidden" name="merchant_key" value="<?php echo $x_merchant_key; ?>" />
  <input type="hidden" name="invoice_id" value="<?php echo $x_invoice_id; ?>" />
  <input type="hidden" name="total" value="<?php echo $x_amount; ?>" />
  
  <input type="hidden" name="notification_url" value="<?php echo $x_store_url; ?>index.php?route=payment/ipay/notify&invoice_id=<?php echo $x_invoice_id; ?>"  />
  <input type="hidden" name="success_url" value="<?php echo $x_store_url; ?>index.php?route=checkout/success" />
  <input type="hidden" name="cancelled_url" value="<?php echo $x_store_url; ?>index.php?route=checkout/success" />

  <input type="hidden" name="currency_code" value="<?php echo $x_currency_code; ?>" />

  <input type="hidden" name="x_first_name" value="<?php echo $x_first_name; ?>" />
  <input type="hidden" name="x_last_name" value="<?php echo $x_last_name; ?>" />
  <input type="hidden" name="x_company" value="<?php echo $x_company; ?>" />
  <input type="hidden" name="x_address" value="<?php echo $x_address; ?>" />
  <input type="hidden" name="x_city" value="<?php echo $x_city; ?>" />
  <input type="hidden" name="x_state" value="<?php echo $x_state; ?>" />
  <input type="hidden" name="x_zip" value="<?php echo $x_zip; ?>" />
  <input type="hidden" name="x_country" value="<?php echo $x_country; ?>" />
  <input type="hidden" name="x_phone" value="<?php echo $x_phone; ?>" />
  <input type="hidden" name="x_ship_to_first_name" value="<?php echo $x_ship_to_first_name; ?>" />
  <input type="hidden" name="x_ship_to_last_name" value="<?php echo $x_ship_to_last_name; ?>" />
  <input type="hidden" name="x_ship_to_company" value="<?php echo $x_ship_to_company; ?>" />
  <input type="hidden" name="x_ship_to_address" value="<?php echo $x_ship_to_address; ?>" />
  <input type="hidden" name="x_ship_to_city" value="<?php echo $x_ship_to_city; ?>" />
  <input type="hidden" name="x_ship_to_state" value="<?php echo $x_ship_to_state; ?>" />
  <input type="hidden" name="x_ship_to_zip" value="<?php echo $x_ship_to_zip; ?>" />
  <input type="hidden" name="x_ship_to_country" value="<?php echo $x_ship_to_country; ?>" />
  <input type="hidden" name="x_customer_ip" value="<?php echo $x_customer_ip; ?>" />
  <input type="hidden" name="x_email" value="<?php echo $x_email; ?>" />
  
  <input type=hidden name=ver value="1" />
  <input type=hidden name=item_quantity_1 value="1" />
  <input type=hidden name=item_description_1 value="Sundry items purchased from <?php echo $x_store_name; ?>" />
  <input type=hidden name=item_price_1 value="<?php echo $x_amount; ?>" />
  
  <?php
      if (isset($x_live_order)) {
	    echo "<input type=hidden name=live_order />";
      }
  ?>


  <div class="buttons">
    <div class="right">
      <input type="submit" value="<?php echo $button_confirm; ?>" class="button" />
    </div>
  </div>
</form>

