function ArticleDetail__Body__init() {
	if (toastui === undefined) {
		return;
	}

	var body = document.querySelector('.article-detail__body');
	var initialValue = body.innerHTML.trim();

	var viewer = new toastui.Editor.factory({
		el: body,
		initialValue: initialValue,
		viewer: true,
		plugins: [toastui.Editor.plugin.codeSyntaxHighlight]
	});
}

ArticleDetail__Body__init();

var topEle = $('.topBtn-2');
var delay = 500;
topEle.on('click', function() {
	$('html, body').stop().animate({
		scrollTop: 0
	}, delay);
});

const toggleSwitch = document.querySelector('.theme-switch input[type="checkbox"]');
const currentTheme = localStorage.getItem('theme');

if (currentTheme) {
	document.documentElement.setAttribute('data-theme', currentTheme);

	if (currentTheme === 'dark') {
		toggleSwitch.checked = true;
	}
}

function switchTheme(e) {
	if (e.target.checked) {
		document.documentElement.setAttribute('data-theme', 'dark');
		localStorage.setItem('theme', 'dark');
	}
	else {
		document.documentElement.setAttribute('data-theme', 'light');
		localStorage.setItem('theme', 'light');
	}
}

toggleSwitch.addEventListener('change', switchTheme, false);
