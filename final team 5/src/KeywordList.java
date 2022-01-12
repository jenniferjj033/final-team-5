import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Scanner;

public class KeywordList {
	/**
	 * To store provided keywords.
	 */

	private ArrayList<Keyword> lst;

	public KeywordList() throws FileNotFoundException {
		lst = new ArrayList<Keyword>();
		readTXT();
	}
	
	public void readTXT() throws FileNotFoundException {
	//	KeywordList lst = new KeywordList();
		File file = new File("C:\\Users\\st970\\git\\final-team-5(2)\\final team 5\\src\\history.txt");
		Scanner scanner = new Scanner(file);

		while (scanner.hasNext()) {
			String operation = scanner.next();

			switch (operation) {
			case "add":
				String name = scanner.next();
				int weight = scanner.nextInt();
				add(new Keyword(name, weight));
				break;
			}
		}
		scanner.close();
	}
	/*public void history() {
		lst.add(new Keyword("西元", 20));
		lst.add(new Keyword("歷史", 20));
		lst.add(new Keyword("炸藥", 20));
		lst.add(new Keyword("發明家", 20));
		lst.add(new Keyword("偉人", 20));
		lst.add(new Keyword("和平獎", 20));
		lst.add(new Keyword("化學", 20));
		lst.add(new Keyword("帝國", 20));
		lst.add(new Keyword("皇帝", 20));
		lst.add(new Keyword("戰爭", 20));
		lst.add(new Keyword("蒙娜麗莎", 20));
		lst.add(new Keyword("發明", 20));
		lst.add(new Keyword("最後的晚餐", 20));
		lst.add(new Keyword("文藝復興", 20));
		lst.add(new Keyword("出生", 10));
		lst.add(new Keyword("西元前", 10));
		lst.add(new Keyword("登基", 10));
		lst.add(new Keyword("統一", 10));
		lst.add(new Keyword("詩", 10));
		lst.add(new Keyword("詩人", 10));
		lst.add(new Keyword("貶謫", 10));
		lst.add(new Keyword("思想", 10));
		lst.add(new Keyword("朝", 10));
		lst.add(new Keyword("藝人", -10));
		lst.add(new Keyword("演員", -10));
		lst.add(new Keyword("衛浴", -10));
		lst.add(new Keyword("飯店", -10));
		lst.add(new Keyword("球員", -10));
		lst.add(new Keyword("棒球", -10));
		lst.add(new Keyword("女友", -10));
		lst.add(new Keyword("緋聞", -10));
		lst.add(new Keyword("鐵達尼號", -10));
		lst.add(new Keyword("奧斯卡", -10));
		lst.add(new Keyword("奶凍捲", -10));
		lst.add(new Keyword("書局", -10));
		lst.add(new Keyword("眼科", -10));
		lst.add(new Keyword("電視劇", -10));
		lst.add(new Keyword("劇情", -10));
		lst.add(new Keyword("劇", -10));

		
	}*/	

	public ArrayList<Keyword> getKeywordList() {
		return lst;
	}

	public void add(Keyword k) {
		lst.add(k);
	}

	public void remove(Keyword k) {
		lst.remove(lst.indexOf(k));
	}
}
