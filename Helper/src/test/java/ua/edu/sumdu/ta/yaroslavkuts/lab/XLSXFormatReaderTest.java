package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.junit.*;

public class XLSXFormatReaderTest extends ExcelReaderTest {
	
	private static final String FILE = "src/test/resources/data.xlsx";
	private static final String SHEET = "login_test_data";
	
	@Before
	public void initWorkbook() {
		reader = new ExcelReader(FILE, SHEET);
	}
}