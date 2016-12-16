package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.apache.log4j.Logger;
import java.io.File;
import java.io.IOException;
import org.apache.poi.xssf.usermodel.*;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;

class XLSXHandler extends ExcelHandler {
	
	final static Logger LOG = Logger.getLogger(XLSXHandler.class);
	
	private XSSFWorkbook workbook;
	private XSSFSheet sheet;
	
	public XLSXHandler() {}
	
	public XLSXHandler(String file, String sheetName) throws NullPointerException {
		try {
			workbook = new XSSFWorkbook(new File(file));
			sheet = workbook.getSheet(sheetName);
			if (sheet == null) throw new NullPointerException("There is not such sheet");
		} catch (IOException | InvalidFormatException e) {
			LOG.error(e.getMessage());
		}
	}
	
	public int getNumberOfFilledRows() {
		return sheet.getPhysicalNumberOfRows();
	}
	
	public XSSFCell getCell(int rowIndex, int cellIndex) throws IllegalArgumentException {
		XSSFCell cell = null;
		if (rowIndex < 0 || cellIndex < 0) {
			throw new IllegalArgumentException("Row's or cell's index cannot be < 0");
		} else {
			cell = sheet.getRow(rowIndex).getCell(cellIndex);
		}
		return cell;
	}
}