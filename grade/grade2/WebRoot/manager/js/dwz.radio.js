/**
 * @author wxy
 */
(function($){
	$.fn.extend({
		
		radioboxCtrl:function(parent){
			return this.each(function(){
				var $trigger = $(this);
				$trigger.click(function(){
					var group = $trigger.attr("group");
					var type=$trigger.val();
					$.radiobox.select(type,group);
				});
			});
		}
	});
	$.radiobox = {
		select:function(_type,_target){
			$target = $("a[name="+_target+"]");
			switch(_type){
				case "1":
					$target.show();
					$target.attr("href","user_list.html?type=org");
					break;
				case "2":
					$target.show();
					$target.attr("href","depart_list.html");
					break;
				default:
					$target.hide();
					break;
			}
		}
	};
})(jQuery);
