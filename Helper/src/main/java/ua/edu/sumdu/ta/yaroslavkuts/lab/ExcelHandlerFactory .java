package ua.edu.sumdu.ta.yaroslavkuts.lab;

class ExcelHandlerFactory {
	
	static ExcelHandler getExcelHandler(String file, String sheetName) throws IllegalArgumentException {
		ExcelHandler handler = null;
		if (getFileFormat(file).equals("xls")) {
			handler = new XLSHandler(file, sheetName);
		} else if (getFileFormat(file).equals("xlsx")) {
			handler = new XLSXHandler(file, sheetName);
		} else {
			throw new IllegalArgumentException("Wrong file format(it must be 'xls' or 'xlsx')");
		}
		return handler;
	}
	
	private static String getFileFormat(String file) throws IllegalArgumentException {
		String[] arr = file.split("\\.");
		if (arr.length == 0) throw new IllegalArgumentException("File name must contain format after point char"); 
		return arr[arr.length - 1];
	}
}