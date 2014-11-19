a = document.querySelectorAll('div[data-img-block-type="sponsor-item"]');

for (var i = 0; i < a.length; i++) {
	if (a[i].tagName == "a") {
	console.log(a[i].getAttribute("href"))
	}
}

var units = $('div[data-img-block-type="sponsor-item"]');
var list = [];

units.each(function(i, item){
	var unit = {};
	var $item = $(item);
	var link = $item.find('.imgLink').attr('href');
	var descp = $item.find('h3, p').text();
	unit = {
		link: link,
		descp: descp
	};

	console.log(link,  "\tDescription: "+descp);
	list.push(unit);
});

console.log(list);