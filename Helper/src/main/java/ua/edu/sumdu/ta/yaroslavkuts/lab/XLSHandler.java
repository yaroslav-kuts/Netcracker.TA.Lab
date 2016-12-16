package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.apache.log4j.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import org.apache.poi.hssf.usermodel.*;

class XLSHandler extends ExcelHandler {
	
	final static Logger LOG = Logger.getLogger(XLSXHandler.class);
	
	private HSSFWorkbook workbook;
	private HSSFSheet sheet;
	
	public XLSHandler() {}
	
	public XLSHandler(String file, String sheetName) throws NullPointerException  {
		try {
			workbook = new HSSFWorkbook(new FileInputStream(new File(file)));
			sheet = workbook.getSheet(sheetName);
			if (sheet == null) throw new NullPointerException("There is not such sheet");
		} catch (IOException e) {
			LOG.error(e.getMessage());
		}
	}
	
	public int getNumberOfFilledRows() {
		return sheet.getPhysicalNumberOfRows();
	}
	
	public HSSFCell getCell(int rowIndex, int cellIndex) throws IllegalArgumentException {
		HSSFCell cell = null;
		if (rowIndex < 0 || cellIndex < 0) {
			throw new IllegalArgumentException("Row's or cell's index cannot be < 0");
		} else {
			cell = sheet.getRow(rowIndex).getCell(cellIndex);
		}
		return cell;
	}
}