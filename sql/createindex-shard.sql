ALTER TABLE customer_03  ADD 
	CONSTRAINT PK_customer PRIMARY KEY   
	(
		c_w_id,
		c_d_id,
		c_id
	);
CREATE  INDEX IX_customer ON customer_03(c_w_id,c_d_id,c_last);
 
ALTER TABLE district_03  ADD 
	CONSTRAINT PK_district PRIMARY KEY   
	(
		d_w_id,
		d_id
	); 

ALTER TABLE order_line_03  ADD 
	CONSTRAINT PK_order_line PRIMARY KEY   
	(
		ol_w_id,
		ol_d_id,
		ol_o_id,
		ol_number
	); 
CREATE  INDEX IX_order_line ON order_line_03(ol_i_id);

CREATE  INDEX PK_orders on orders_03 (o_w_id,o_d_id,o_id);
CREATE  INDEX IX_orders ON orders_03(o_w_id,o_d_id,o_c_id);

CREATE  INDEX IX_new_order ON new_order_03(no_w_id, no_d_id, no_o_id);

ALTER TABLE stock_03 ADD 
CONSTRAINT PK_stock PRIMARY KEY   
	(
		s_w_id,
		s_i_id
	); 
CREATE INDEX IX_stock ON stock_03(s_i_id);

ALTER TABLE warehouse_03  ADD 
	CONSTRAINT PK_warehouse PRIMARY KEY   
	(
		w_id
	);
