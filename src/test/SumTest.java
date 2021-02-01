package test;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;

import org.apache.commons.io.FileUtils;
import org.junit.Assert;
import org.junit.Test;

import engine.SumEngine;

public class SumTest {
	
	private static String filePath = "file_Test";
	private String fileName = "test.tsv";
	
	/**
	 * Input a file with multiple mixed registrations for a month and years.
	 * Compare file created from SumEngine with the expected file.
	 * @throws IOException
	 * @throws ParseException
	 */
	
	@Test
	public void test() throws ParseException, IOException {

		// Create sum file
		new SumEngine(filePath, fileName);
		
		String file1 = filePath + "/expected_sum_" + fileName;
		String file2 = filePath + "_months_sum/sum_" + fileName;
		
		File file = new File(file1);
	    File fileSum = new File(file2);
 
	    Assert.assertEquals(FileUtils.readLines(file), FileUtils.readLines(fileSum));
	    System.out.println("\n\nSUM TEST finished");
	}
	
}
