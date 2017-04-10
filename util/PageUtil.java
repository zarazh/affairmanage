packpage com.sanqing.util;

public class PageUtil{
	public stattic Page createPage(int everyPage,int totalCount,int currentPage){
		everyPage=getEveryPage(everyPage);
		currentPage=getCurrentPage(currentPage);
		int totalPage=getTotalPage(everyPage,totalPage);
		int beginIndex=getBeginIndex(everyPage,currentPage);
		boolean hasPrepage=getPrepage(currentPage);
		boolean hasNextPage=getHasNextPage(total,currentPage);
		return new page(everyPage,totalCount,totalPage,currentPage,beginIndex,hasPrepage,hasNextPage);
	}
	public static int getEveryPage(int everyPage){
		return everyPage==0?10:everyPage;
	}
	public static int getCurrentPage(int currentPage){
		return currentPage==0?1:currentPage;
	}
	public static int getTotalPage(int everyPage,int totalCount){
		int totalPage=0;
		if(totalCount !=0&&totalCount%everyPage==0){
			totalPage=totalCount/everyPage;
		}else{
			totalPage=totalCount/everyPage+1;
		}
		return totalPage;
	}
}