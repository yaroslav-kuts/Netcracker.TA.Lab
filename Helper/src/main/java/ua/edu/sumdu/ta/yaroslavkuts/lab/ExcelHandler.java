package ua.edu.sumdu.ta.yaroslavkuts.lab;

import org.apache.poi.ss.usermodel.Cell;

abstract class ExcelHandler {
	
	public abstract Cell getCell(int rowIndex, int cellIndex);
	
	public abstract int getNumberOfFilledRows();
}