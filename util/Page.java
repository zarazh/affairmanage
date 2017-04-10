package com.sqnqing.util;
public class Page{
	private int everyPage;		//煤业显示记录数
	private int totalCount;		//总记录数
	private int totalPage;		//总页数
	private int curren Page;
	private int beginIndex;
	private boolean hasPrepage;
	private boolean hasNextpage;
	public Page(int everyPage ,int totalCount, int totalPage, int currentPage,int geginIndex,boolean hasPrepage,boolean hasNextpage){
		this.everyPage = everyPage;
		this.totalPage = totalPage;
		this.totalCount = totalCount;
		this.currentPage = currentPage;
		this.beginIndex = beginIndex;
		this.hasPrepage = hasPrepage;
		this.hasNextpage = hasNextpage;
	}
	public Page(){}
	public int getEveryPage(){
		return everyPage;
	}
	public void  setEveryPage(int everyPage){
		this.everyPage = everyPage;
	}
	public int getTotalCount(){
		return totalCount;
	}
	public void setTotalCount(int totalCount){
		this.totalCount = totalCount;
	} 
	public int getTotalPage(){
		return totalPage;
	}
	public void setTotalPage(int totalPage){
		this.totalPage=totalpage
	}
	public int getCurrentPage(){
		return currentPage;
	}
	public void setCurrentPage(int currentPage){
		this.currentPage=currentPage;
	}
	public int getBeginIndex(){
		return beginIndex;
	}
	public void setBeginIndex(int beginIndex){
		this.beginIndex=beginIndex;
	}
	public boolean getHasPrepage(){
		retrun hasPrepage;
	}
	public void setHasPrepage(boolean hasPrepage){
		this.hasPrepage=hasPrepage;
	}
	public boolean getHasNextpage(){
		return hasNextpage;
	}
	public void setHasNextpage(boolean hasNextpage){
		this.hasNextpage = hasNextpage;	
	}
