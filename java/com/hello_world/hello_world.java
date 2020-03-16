package com.hello_world;
import java.lang.Math;
import java.util.Random;
public class hello_world {
	public static boolean is_prime(int num) {
		int root = (int)Math.floor(Math.sqrt(num));
		for(int i = 1; i<=root; i++) {
			if(num%i==0)
				return false;
		}
		return true;
	}
	public static long lcm(int a, int b) {
		if(a == b)
			return a;
		long a1 = a, b1 = b;
		while(true) {
			//System.out.println("a1:"+a1+"b1:"+b1);
			if(a1<b1)
				a1 += a;
			else if(a1>b1)
				b1 += b;
			else if(a1 == b1)
				return a1;
			else if(a1<0||b1<0)
				return -1;
		}
	}
	public static long gcd(long a, long b) {
		if(a==b)
			return a;
		long a1,a2 = a;
		while(true) {
			a1 = b%a2;
			if(a1 == 0)
				return b/a2;
			else
				a2 = a1;
		}
	}


	public static class Key_pair {
		// n = modulus
		// e = encription key
		// d = dectiption key
		//  m^e%n = encripted message
		// em^d%n = dectipted message
		long n;
		long e;
		long d;
	}

	public static Key_pair gen_keys() {
		final int min_key = (int)Math.pow(10, 1);
		int p = 0, q = 0;
		long n = 0, e = 0, d = 0;
		p = (int)(Math.random()*(Integer.MAX_VALUE-min_key) + min_key);
		q = (int)(Math.random()*(Integer.MAX_VALUE-min_key) + min_key);
		n = (long)p*q;
		long lambda_n = lcm(p-1,q-1);
		
		for(long i = Long.MAX_VALUE; i > 1; i++) {
			if(gcd(i, lambda_n) == 1) {
				e = i;
				break;
			}
		}
		long e1 = e;
		for(long i = 0; i < Long.MAX_VALUE; i++) {
			if(e1%lambda_n == 1) {
				d = i;
				break;
			}
			e1 += e;
		}
		Key_pair output = new Key_pair();
		output.n = n;
		output.e = e;
		output.d = d;
		return output;
	}

	public static void main(String[] args){
		Key_pair keys = gen_keys();
		//System.gc();
	}
}
/*
class entety {
	int array[] = new int[128];
	public entety() {
		for(int i = 0; i < array.length; i++)
			array[i] = i;
		System.out.println("entety created: " + this);
	}
	public void finalize() {
		System.out.println("entety destoryed: " + this);
	}
	public void print() {
		System.out.println("hello");
	}
}
*/