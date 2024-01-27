package model;

import java.util.*;
import java.io.*;

public class QuestionsBean{
	Map<Integer,String> m = new HashMap();
	String filePath = "test-paper/test1/questions.txt";

	public Map<Integer,String> getQuestionMap(){
		int count=0;
		BufferedReader br = null;
		try{
			br = new BufferedReader(new FileReader(filePath));
			String line;
			while((line = br.readLine()) != null){
				m.put(++count,line);
			}
			return m;
		}
		catch(IOException e){
			e.printStackTrace();
		}
		finally{
			try{
				if(br!=null){
					br.close();
				}
			}
			catch(IOException e){
				e.printStackTrace();
			}
		}				
		return null;
	}

	/*public static void main(String[] args){
		m = getQuestionMap();

		Iterator<Map.Entry<Integer,String>> itr = m.entrySet().iterator();

		while(itr.hasNext()){
			Map.Entry<Integer, String> entry = itr.next();
			System.out.println(entry.getValue());
		}
	}*/		
}