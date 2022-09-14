package com.demo.services;

public interface CaculateService {
	
	public double addition(double number1 , double number2);
	
	public double subtraction(double number1 , double number2);
	
	public double multiplication(double number1 , double number2);

	public double division(double number1 , double number2);
	
	public double medium(double[] arg);
	
	public double percentage(double a , double total );
	
	public double percentageConvert(double precent , double total );
}
