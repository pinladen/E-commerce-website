package com.demo.services;

import org.springframework.stereotype.Service;

@Service
public class CaculateServiceImpl implements CaculateService{

	@Override
	public double addition(double number1, double number2) {
		// TODO Auto-generated method stub
		return Math.round(((number1 + number2) * 10) / 10) ;
	}
	
	@Override
	public double subtraction(double number1, double number2) {
		// TODO Auto-generated method stub
		return Math.round(((number1 - number2) * 10) / 10);
	}

	@Override
	public double multiplication(double number1, double number2) {
		// TODO Auto-generated method stub
		return Math.round(((number1 * number2) * 10) / 10);
	}

	@Override
	public double division(double number1, double number2) {
		// TODO Auto-generated method stub
		return Math.round(((number1 / number2) * 10) / 10);
	}
	
	@Override
	public double percentage(double a, double total) {
		// TODO Auto-generated method stub
		return Math.round((((a/total)*100) * 10) / 10);
	}

	@Override
	public double percentageConvert(double precent, double total) {
		
		return Math.round((((precent*total)/100) * 10) / 10);
	}
	
	@Override
	public double medium(double[] arg) {
        double total = 0;
        for(int i=0; i<arg.length; i++){
            total = total + arg[i];
        }
        double average = total / arg.length;
		return Math.round((average * 10) / 10);
	}

	



}
