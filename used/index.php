<?php
/**
 * 公開画面 中古製品
 *
 * @package	中古製品
 * @author	m.i
 *
*/
require_once dirname(dirname(dirname(__FILE__))) . '/app/classes/used.class.php';
require_once dirname(dirname(dirname(__FILE__))) . '/app/classes/common/paging.class.php';
try {

	// クラス生成
	$used = new Used();
	$paging = new Paging(WWW_LIST_LIMIT);

	// リスト総件数
	$listCnt = $used->getCnt();

	if (!$paging->isNo($_GET['page'])) {
		$_GET['page'] = 1;
	}

	// 一覧セット
	$used->assign('list', $used->getList($_GET['page']));

	// ページングHTMLセット
	$used->assign('paging_html', $paging->getHtml($_GET['page'], $listCnt));

	// メニューパラメータ
	$used->assign("head_menu_product", "on");
	$used->assign("used", true);

	$used->display('../../app/tpl/product/used/index.tpl');

// エラー
} catch (Exception $e) {
	$used->assign('return_url', "../../");
	$used->assign('error_msg', $e->getMessage());
	$used->display('../../app/tpl/error.tpl');
}
?>
