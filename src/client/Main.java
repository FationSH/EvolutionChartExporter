package client;

import java.io.File;
import java.util.ArrayList;

import engine.ProduceHTMLEngine;
import engine.SchemaStatsMainEngine;
import engine.SumEngine;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

	private static String filePath = "COMMIT_SUMMARIES_DETAILED";
	private String[] fileNamesCom, folderNamesCom, fileNamesSum, figureNames;
	private ArrayList<String> folderNamesSum = new ArrayList<>();
	
	public static void main(String[] args){

		launch(args);
		
	}
	
	public void start(Stage primaryStage) throws Exception {
		
		File f_com = new File(filePath);
		
		// Sum months and Create new .tsv files =================================================================
		folderNamesCom = f_com.list();  // folder name for each taxon
		
		if(folderNamesCom != null) {
			for (String folderName : folderNamesCom) {
				File taxon = new File(filePath + File.separator + folderName);
				fileNamesCom = taxon.list();  // file name for files with all commits in each taxon
				
				for (String fileName : fileNamesCom) {
					new SumEngine(filePath + File.separator + folderName, fileName);
				}
			}
		}
		
		
		// Create figures for each project ======================================================================
		
		// Find folders/taxons with summed .tsv files
		String[] fileNames = f_com.list();  // file name for files with summed commits
		if(fileNames != null) {
			for (String folderName : fileNames) {
				if (folderName.contains("_months_sum"))
					folderNamesSum.add(folderName);
			}
		}
		
		// Create figures within each taxon
		if(folderNamesSum != null) {
			for (String folderName : folderNamesSum) {
				File summedTaxon = new File(filePath + File.separator + folderName);
				fileNamesSum = summedTaxon.list();  // file name for files with all summed commits in each taxon
				
				for (String fileName : fileNamesSum) {
					SchemaStatsMainEngine engine = new SchemaStatsMainEngine(filePath + File.separator + folderName, fileName, primaryStage);
					// ++ Create figures with 0 values for months with no commits
					engine.produceFigures();
				}
			}
		}
		
		
		// Create HTML for each taxon ===========================================================================
		if(folderNamesSum != null) {
			for (String folderName : folderNamesSum) {
				String figuresFolder = filePath + File.separator + folderName + File.separator + "figures";
				
				ProduceHTMLEngine produceHTMLEngine = new ProduceHTMLEngine(figuresFolder, folderName);
				produceHTMLEngine.produceHTML();
			}
		}
		

		System.out.println("Finish");
	}
	
}