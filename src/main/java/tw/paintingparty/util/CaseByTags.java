package tw.paintingparty.util;

public class CaseByTags {

	public String ToGetTheTagName(String tags) {
		
		int tagid = Integer.parseInt(tags);
		
			switch(tagid) {
				case 1:
					return "插畫";
				case 2:
					return "貼圖";
				case 3:
					return "貼圖";
				case 4:
					return "漫畫";
				case 5:
					return "UI";
				case 6:
					return "人物設計";
				case 7:
					return "風景";
				case 8:
					return "日系";
				case 9:
					return "歐美";
				case 10:
					return "武俠";
				case 11:
					return "Q版";
				case 12:
					return "寫實";
				case 13:
					return "3D";
				case 14:
					return "水墨";
				case 15:
					return "水彩";
				case 16:
					return "像素";
					
			}
			return "輸入錯誤";
	}
}
