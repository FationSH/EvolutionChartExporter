package client;

import java.io.File;

import engine.SchemaStatsMainEngine;
import engine.SumEngine;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

	private static String filePathCom = "COMMIT_SUMMARIES_DETAILED";
	private static String filePathSum = "COMMIT_SUMMARIES_DETAILED_months_sum";
	private String[] fileNamesCom, fileNamesSum;
	
	public static void main(String[] args){

		launch(args);
		
	}
	
	public void start(Stage primaryStage) throws Exception {
		
		File f_com = new File(filePathCom);
		File f_sum = new File(filePathSum);
		
		fileNamesCom = f_com.list();  // file name for files with all commits
		
		// Sum months and Create new .tsv files
		for (String fileName : fileNamesCom) {
			new SumEngine(filePathCom, fileName);
		}
		
		
		// Create figures for each project
		fileNamesSum = f_sum.list();  // file name for files with summed commits
		
		for (String fileName : fileNamesSum) {
			SchemaStatsMainEngine engine = new SchemaStatsMainEngine(filePathSum, fileName, primaryStage);
			// ++ Create figures with 0 values for months with no commits
			engine.produceFigures();
		}
		
		System.out.println("Finish");
	}
	
}