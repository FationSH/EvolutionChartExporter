package test;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.junit.Test;

import engine.ComputeCumulativeEngine;

public class ComputeCumulativeTest {

	private String fileCommitHistory = "testCumulative"; // .tsv
	private String fileResults = "testCumulativeResult.tsv";
	private String fileExpectedResults = "testCumulativeExpectedResult.tsv";
	
	
	@Test
	public void test() throws Exception {
		
		ComputeCumulativeEngine computeCumulativeEngine = new ComputeCumulativeEngine(new File(fileCommitHistory), true);
		computeCumulativeEngine.createCumulativeFile();
		
		File fileRes = new File("file_Test\\CumulTest"+File.separator+fileResults);
	    File fileExpRes = new File("file_Test\\CumulTest"+File.separator+fileExpectedResults);
		
	    Assert.assertEquals(FileUtils.readLines(fileRes), FileUtils.readLines(fileExpRes));
	    System.out.println("\n\nCumulative TEST finished");
	    
	}
	
}