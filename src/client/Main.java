package client;

import java.io.File;
import java.util.ArrayList;

import engine.ComputeCumulativeEngine;
import engine.ProduceCumulativeImageEngine;
import engine.ProduceHTMLEngine;
import engine.SchemaStatsMainEngine;
import engine.SumEngine;

import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {

	private boolean exportMode = false;
	
	// Chart exporter variables
	private static String chartFileFolder = "COMMIT_SUMMARIES_DETAILED";
	private String[] fileNamesCom, folderNamesCom, fileNamesSum;
	private ArrayList<String> folderNamesSum = new ArrayList<>();
	
	// Cumulative analysis variables
	private static String cmlFileFolder ="SCHEMA_EVO_2019";
	private String[] fileCumulPrjName, folderCumulImg;
	
	
	public static void main(String[] args){

		launch(args);
		
	}
	
	public void start(Stage primaryStage) throws Exception {
		
		if (exportMode) {	// Export evolution Charts tsv files and images ===========================================
			
			System.out.println("Start exporting evolution charts");
			
			File f_com = new File(chartFileFolder);
			
			// Sum months and Create new .tsv files ===================================================================
			folderNamesCom = f_com.list();  // get folder name for each taxon
			
			if(folderNamesCom != null) {
				for (String folderName : folderNamesCom) {
					File taxon = new File(chartFileFolder + File.separator + folderName);
					fileNamesCom = taxon.list();  // file name for files with all commits in each taxon
					
					for (String fileName : fileNamesCom) {
						new SumEngine(chartFileFolder + File.separator + folderName, fileName);
					}
				}
			}
			
			// Create figures for each project ========================================================================
			
			// Find folders/taxa with summed .tsv files
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
					File summedTaxon = new File(chartFileFolder + File.separator + folderName);
					fileNamesSum = summedTaxon.list();  // file name for files with all summed commits in each taxon
					
					for (String fileName : fileNamesSum) {
						SchemaStatsMainEngine engine = new SchemaStatsMainEngine(chartFileFolder + File.separator + folderName, fileName, primaryStage);
						// ++ Create figures with 0 values for months with no commits
						engine.produceFigures();
					}
				}
			}
			
			// Create HTML for each taxon =============================================================================
			if(folderNamesSum != null) {
				for (String folderName : folderNamesSum) {
					String figuresFolder = chartFileFolder + File.separator + folderName + File.separator + "figures";
					
					ProduceHTMLEngine produceHTMLEngine = new ProduceHTMLEngine(figuresFolder, folderName);
					produceHTMLEngine.produceHTML();
				}
			}
			
			System.out.println("Finish exporting evolution charts");
			
		} else {	// Export Cumulative Analysis tsv file and images =================================================
			
			System.out.println("Start comulative analysis");
			
			// Create folder with the cumulative result files =========================================================
			File f_cumul = new File(cmlFileFolder);
			fileCumulPrjName = f_cumul.list();  // get folder name for each project
			
			// For each project compute and create the cumulative .tsv file
			if(fileCumulPrjName != null) {
				for (String folderPrjName : fileCumulPrjName) {
					
					File project = new File(cmlFileFolder + File.separator + folderPrjName);
					ComputeCumulativeEngine computeCumulative = new ComputeCumulativeEngine(project, false);
					computeCumulative.createCumulativeFile();
					
				}
			}
			
			// Create images for each cumulative .tsv file ============================================================
			File img_cumul = new File(cmlFileFolder + "_CUMULATIVE_FOLDER");
			folderCumulImg = img_cumul.list();  // get folder name for each project
			
			if(folderCumulImg != null) {
				for (String fileImgName : folderCumulImg) {
					
					if(fileImgName.contains(".tsv")) {
						ProduceCumulativeImageEngine produceCumulativeImage = new ProduceCumulativeImageEngine(cmlFileFolder+"_CUMULATIVE_FOLDER", fileImgName, primaryStage);
						produceCumulativeImage.produceFigure();
					}
					
				}
			}
			
			// Create HTML with figures ===============================================================================
			if(folderCumulImg != null) {
				for (String fileImgName : folderCumulImg) {
					String figuresFolder = cmlFileFolder+"_CUMULATIVE_FOLDER" + File.separator + "figures";
					
					ProduceHTMLEngine produceHTMLEngine = new ProduceHTMLEngine(figuresFolder, fileImgName);
					produceHTMLEngine.produceCumulativeHTML();
				}
			}
			
			System.out.println("Finish comulative analysis");
		}

		
	}
	
}