package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.junit.*;

public class XLSFormatReaderTest extends ExcelReaderTest {
	
	private static final String FILE = "src/test/resources/data.xls";
	private static final String SHEET = "login_test_data";
	
	@Before
	public void initWorkbook() {
		reader = new ExcelReader(FILE, SHEET);
	}
}