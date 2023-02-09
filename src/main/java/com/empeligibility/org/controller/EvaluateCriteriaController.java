package com.empeligibility.org.controller;
import com.empeligibility.org.repository.EmployeeRepository;
import com.empeligibility.org.model.Employee;
import com.empeligibility.org.repository.EligibilityRepository;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.swing.text.html.HTMLDocument.Iterator;

import java.util.ArrayList;
import java.util.Collections;

import com.empeligibility.org.model.EligibilityCondition;
import com.empeligibility.org.model.Employee;
public class EvaluateCriteriaController {
	static String name;
	static String jobpost;
	static String expression;;
	//HashMap<Integer,Integer> map=new HashMap<Integer,Integer>();
	public EvaluateCriteriaController(String name,String jobpost) {
		this.jobpost = jobpost;
		this.name = name;
	}
	
	public String normalizeExpression(String formulae)
	{
		String result = formulae.replaceAll("\\s+","");
		String replacedstr = result.replaceAll("(?i)AND", "&");
		String f_replacedstr = replacedstr.replaceAll("(?i)OR", "|");
		return f_replacedstr;
	}
	
	public boolean areBracketsBalanced(String expr)
    {
        Deque<Character> stack = new ArrayDeque<Character>();
        for (int i = 0; i < expr.length(); i++)
        {
            char x = expr.charAt(i);
            if (x == '(' || x == '[' || x == '{')
            {
                stack.push(x);
                continue;
            }
            char check;
            switch (x) {
            case ')':
                check = stack.pop();
                if (check == '{' || check == '[')
                    return false;
                break;
 
            case '}':
                check = stack.pop();
                if (check == '(' || check == '[')
                    return false;
                break;
 
            case ']':
                check = stack.pop();
                if (check == '(' || check == '{')
                    return false;
                break;
            }
        }
        return (stack.isEmpty());
    }
	
	public boolean areOpratorsBalanced(String expr)
	{
	     if( expr.contains("**") || expr.contains("++") || expr.contains("*+") || expr.contains("+*"))
	     {
	    	 return false;
	     }
	     return true;
	}
	
	public Boolean validateExpression(String expr){	
		boolean areBracketsBalanced = areBracketsBalanced(expr);
		boolean areOpratorsBalanced = areOpratorsBalanced(expr);
		if(areBracketsBalanced && areOpratorsBalanced)
			return true;
		else 
			return false;
	}
	
	private int evaluateParam(EligibilityCondition empcon,Employee emp) throws NoSuchMethodException, SecurityException, IllegalAccessException, InvocationTargetException
	{
			int torf = 0;
		    String field = empcon.getField();
		    System.out.println("my field name is: "+field);
		    String methodName = "get" + field;
		    Class<?> classObj = emp.getClass();
		    Method getterMethod = classObj.getDeclaredMethod(methodName, null);
		    //System.out.println(getterMethod.invoke(emp));
		    String s_empvalue = getterMethod.invoke(emp).toString();
		    String operator = empcon.getOperator();
		    String value = empcon.getValue();
		    System.out.println("condition value is"+value);
		    System.out.println("employee value is"+s_empvalue);
		    int int_value = 0;
			int i_empvalue = 0; 
		    if(operator.equals("<="))
			{
		    	int_value = Integer.parseInt(value);
				i_empvalue = Integer.parseInt(s_empvalue); 
				if(i_empvalue <= int_value)
				{	torf = 1; }
				else
				{	torf = 0; }
			}
		    else if(operator.equals(">"))
			{
		    	int_value = Integer.parseInt(value);
				i_empvalue = Integer.parseInt(s_empvalue); 
				if(i_empvalue > int_value)
				{	torf = 1; }
				else
				{	torf = 0; }
			}
			else if(operator.equals(">="))
			{	
				int_value = Integer.parseInt(value);
				i_empvalue = Integer.parseInt(s_empvalue); 
					if(i_empvalue >= int_value)
					{	torf = 1;	}
					else
					{	torf = 0;	}
			}
			else if(operator.equals("="))
			{
				if(field.equals("Qualification"))
				{	
		    		if( (value.equals("HigherSecondary") ) )
		    		{
		    			if( (s_empvalue).trim().equals("Higher Secondary") || ( s_empvalue).trim().equals("Graduation") || ( s_empvalue).trim().equals("Post Graduation") )
		    			torf = 1;
					else
						torf = 0;  
		    		}
		    		else if(value.equals("graduation"))
		    		{
		    			if( ( s_empvalue).trim().equals("Graduation") || ( s_empvalue).trim().equals("Post Graduation"))
		    				torf = 1;
		    			else
		    				torf = 0;  
		    		}
				}
			    else if(field.equals("TechnicalSkills"))
			    {
			    	if(value.equals("None"))
			    		torf = 1;
					else
						torf = 0; 
			    	if(value.equals("BackendDevelopment"))
			    	{
			    		if( ( s_empvalue).trim().equals("Backend Development") || ( s_empvalue).trim().equals("Fullstack Development") )
			    			torf = 1;
			    		else
			    			torf = 0; 
			    	}
			    	if(value.equals("FullstackDevelopment"))
			    	{
			    		if(( s_empvalue).trim().equals("Fullstack Development"))
				    		torf = 1;
						else
							torf = 0; 
			    	}
			    }
			    else if(field.equals("Skills"))
			    {
			    	if(value.equals("FluentCommunication"))
			    	{
			    		if(( s_empvalue).trim().contains("Fluent Communication"))
			    			torf = 1;
						else
							torf = 0; 
			    	}
			    	else
			    	{
				    	if(value.equalsIgnoreCase( (s_empvalue).trim().replaceAll("\\s", "") ))  
						{	torf = 1;	}
						else
						{	torf = 0;	}
			    	}
			    }
				else
					{
					if(value.equalsIgnoreCase( (s_empvalue).trim().replaceAll("\\s", "") ))  
					{	torf = 1;	}
					else
					{	torf = 0;	}
					}
			}
			System.out.println("true or false"+torf);
			return torf;
	}
	private String formulareplace(String expression,HashMap<Integer,Integer> map)
	{
  	   		 int sno;
			 Pattern p = Pattern.compile("\\d+");
		        Matcher m = p.matcher(expression);
		        while(m.find()) {
		           // System.out.println(m.group());
		            String val = m.group();
		           // System.out.println("digit is " + val);
					sno = Integer.parseInt(val);
					int s_no = map.get(sno);
					expression = expression.replace(val, String.valueOf(s_no));
		        }
		System.out.println("replaced formula"+expression);
		return expression;
	}
	
	 
    private int Prec(char ch)
    {
        switch (ch)
        {
        case '|':
            return 1;
      
        case '&':
            return 2;
        }
        return -1;
    }
    private  String infixToPostfix(String exp)
    {
        String result = new String("");
        Stack<Character> stack = new Stack<>();
        for (int i = 0; i<exp.length(); ++i)
        {
            char c = exp.charAt(i);
            if (Character.isLetterOrDigit(c))
                result += c;
            else if (c == '(')
                stack.push(c);
            else if (c == ')')
            {
                while (!stack.isEmpty() &&
                        stack.peek() != '(')
                    result += stack.pop();
                 
                    stack.pop();
            }
            else // an operator is encountered
            {
                while (!stack.isEmpty() && Prec(c)
                         <= Prec(stack.peek())){
                   
                    result += stack.pop();
             }
                stack.push(c);
            }
      
        }
        while (!stack.isEmpty()){      // pop all the operators from the stack
            if(stack.peek() == '(')
                return "Invalid Expression";
            result += stack.pop();
         }
        return result;
    }
	
    static int evaluatePostfix(String exp)
    {
        //create a stack
        Stack<Integer> stack=new Stack<>();
          
        // Scan all characters one by one
        for(int i=0;i<exp.length();i++)
        {
            char c=exp.charAt(i);
              
            // If the scanned character is an operand (number here),
            // push it to the stack.
            if(Character.isDigit(c))
            stack.push(c - '0');
              
            //  If the scanned character is an operator, pop two
            // elements from stack apply the operator
            else
            {
                int val1 = stack.pop();
                int val2 = stack.pop();
                  
                switch(c)
                {
                    case '&':
                    stack.push(val2&val1);
                    break;
                      
                    case '|':
                    stack.push(val2| val1);
                    break;
              }
            }
        }
        return stack.pop(); 
    }   
	
	private <E> int conditionTable(String f_expression) throws NoSuchMethodException, SecurityException, IllegalAccessException, InvocationTargetException
	{
		EligibilityRepository emprepo = new EligibilityRepository();
		ArrayList<EligibilityCondition> eligibilityConditions = emprepo.getCriteria(this.jobpost);
		EmployeeRepository obj = new EmployeeRepository();
		Employee emp = obj.getEmployee(this.name);
		HashMap<Integer,Integer> map = new HashMap<Integer,Integer>();
		Vector<String> vec = new Vector<String>();
		Pattern p = Pattern.compile("\\d+");
        Matcher m = p.matcher(f_expression);
        while(m.find()) {
        	vec.add(m.group());
        }
        Collections.sort(vec);
		for(EligibilityCondition empcon: eligibilityConditions)
		{
			int sno = empcon.getSno();
			//System.out.println("sno="+Integer.toString(sno));
			String s_sno = Integer.toString(sno);
			if(vec.contains(s_sno)){
				int torf = evaluateParam(empcon,emp);
				map.put(sno, torf);
			}
		}
		//System.out.println(map);
		String replacedFormula = formulareplace(f_expression,map);
		String postfixFormula = infixToPostfix(replacedFormula);
		//System.out.println("postfix"+postfixFormula);
		int evaluatePostfix = evaluatePostfix(postfixFormula);
		//System.out.println("final result"+evaluatePostfix);
		boolean f_result;
		if(evaluatePostfix==0)
			f_result = false;
		else
			f_result = true;
		return evaluatePostfix;
	}
	
	public Boolean evaluate(String expression) throws NoSuchMethodException, SecurityException, IllegalAccessException, InvocationTargetException {
		this.expression = expression;
		EmployeeRepository obj = new EmployeeRepository();
		Employee emp = obj.getEmployee(this.name);
		
		String f_expression =  normalizeExpression(expression);
		//System.out.println(f_expression);
		
		boolean validateExpression = validateExpression(f_expression);
		if(!validateExpression)
		{System.out.println("invalid expresion");}
		else
		{System.out.println("validateExpression");}
		int f_result = conditionTable(f_expression);
		System.out.println("return"+f_result);
		if(f_result == 0)
			return false;
		else
			return true;

		 //conditionTable(f_expression);
//		System.out.println("return"+conditionTable(f_expression));
//		return conditionTable(f_expression);
	}	
}
 