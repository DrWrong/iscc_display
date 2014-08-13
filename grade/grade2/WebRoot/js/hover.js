// JavaScript Document
sc={
	alphaClass:'alpha',
	
	init:function(){
		var i;
		var sidebar = document.getElementById('sidebar');
		
		sc.spans = sidebar.getElementsByTagName('span');
		
		//var content = document.getElementById('submit');
		//DOMhelp.addEvent(content,'click',sc.test,false);
		
		for(i=0;i<sc.spans.length;i++)
		{
			DOMhelp.addEvent(sc.spans[i],'mouseover',sc.hover,false);
		}
		
	},
	hover:function(e){
		var i;
		for(i=0;i<sc.spans.length;i++)
		{
			var imgs = sc.spans[i].parentNode.getElementsByTagName('img')[0];
		    DOMhelp.cssjs('remove',imgs,sc.alphaClass);
		}
		var target = e.target.parentNode;
		var img = target.getElementsByTagName('img')[0];
		DOMhelp.cssjs('add',img,sc.alphaClass);
	},
	/*test:function(e){
		var target = e.target;
		var t = document.getElementById('submit');
		alert(t);
	}*/
}
window.addEventListener('load',sc.init,false);
		
		
		