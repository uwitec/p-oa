<?php
/**
 * 文本编辑器，调用方法
 * {:W('Fck')}
 *
 */
class FckeditorWidget extends Widget{
	public function render($name){
		$html=<<<EOF
		<script type="text/javascript" src="/Public/js/fckeditor/fckeditor.js"></script>
<script language="javascript">
var sBasePath = "/Public/js/fckeditor/";
	var oFCKeditor = new FCKeditor( '{$name}','100%','420px' ) ;
	oFCKeditor.BasePath	= sBasePath ;
	oFCKeditor.ReplaceTextarea() ;
</script>
EOF;
		
		return $html;
	}
}

?>