CREATE TABLE customer_reward (
	customer_id bigint REFERENCES bluebox.customer(customer_id) ON DELETE RESTRICT,
	reward_date timestamptz NOT NULL,
	reward_amount decimal(4,2)
);