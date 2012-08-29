<?php
class DigitsListPager extends CLinkPager{
    
	public function run()
	{
		 //
		 // here we call our createPageButtons
		 //
		 $buttons=$this->createPageButtons();
		 //
		 // if there is nothing to display return
		 if(empty($buttons))
			  return;
		 //
		 // display the buttons
		 //
		 echo $this->header; // if any
		 echo CHtml::tag('ul',$this->htmlOptions,implode("\n",$buttons));
		 echo $this->footer;  // if any
	}
	
	/**
	 * Creates the page buttons.
	 * @return array a list of page buttons (in HTML code).
	 */
	protected function createPageButtons()
	{
		if(($pageCount=$this->getPageCount())<=1)
			return array();

		list($beginPage,$endPage)=$this->getPageRange();
		$currentPage=$this->getCurrentPage(false); // currentPage is calculated in getPageRange()
		$buttons=array();

		// first page
		//$buttons[]=$this->createPageButton($this->firstPageLabel,0,self::CSS_FIRST_PAGE,$currentPage<=0,false);

		// prev page
		//if(($page=$currentPage-1)<0)
		//	$page=0;
		//$buttons[]=$this->createPageButton($this->prevPageLabel,$page,self::CSS_PREVIOUS_PAGE,$currentPage<=0,false);

		// internal pages
		for($i=$beginPage;$i<=$endPage;++$i)
			$buttons[]=$this->createPageButton($i+1,$i,($i==$beginPage)?self::CSS_FIRST_PAGE : self::CSS_INTERNAL_PAGE,false,$i==$currentPage);

		// next page
		if(($page=$currentPage+1)>=$pageCount-1)
			$page=$pageCount-1;
		$buttons[]=$this->createPageButton($this->nextPageLabel,$page,self::CSS_NEXT_PAGE,$currentPage>=$pageCount-1,false);

		// last page
		$buttons[]=$this->createPageButton($this->lastPageLabel,$pageCount-1,self::CSS_LAST_PAGE,$currentPage>=$pageCount-1,false);

		return $buttons;
	}
	
	/**
	 * Creates a page button.
	 * You may override this method to customize the page buttons.
	 * @param string the text label for the button
	 * @param integer the page number
	 * @param string the CSS class for the page button. This could be 'page', 'first', 'last', 'next' or 'previous'.
	 * @param boolean whether this page button is visible
	 * @param boolean whether this page button is selected
	 * @return string the generated button
	 */
	protected function createPageButton($label,$page,$class,$hidden,$selected)
	{
		   //
		   // CSS_HIDDEN_PAGE and CSS_SELECTED_PAGE
		   // are constants that we use to apply our styles
		   //
		if($class == 'last' || $class == 'next' || $class == 'previous') return;
		if($selected)
			$class=' '.($hidden ? self::CSS_HIDDEN_PAGE : self::CSS_SELECTED_PAGE);
		//$class .= ' number';
		   //
		   // here I write my custom link - site.call is a JS function that takes care of an AJAX call
		   //
		return '<li class="'.$class.'">'.CHtml::link($label,$this->createPageUrl($page)).'</li>';
	}
	
	/**
	* Creates the URL suitable for pagination.
	* This method is mainly called by pagers when creating URLs used to
	* perform pagination. The default implementation is to call
	* the controller's createUrl method with the page information.
	* @param CController the controller that will create the actual URL
	* @param integer the page that the URL should point to. This is a zero-based index.
	* @return string the created URL
	*/
	protected function createPageUrl($page)
	{
		return $this->getPages()->createPageUrl($this->getController(),$page);
	}
	  
}
?>
