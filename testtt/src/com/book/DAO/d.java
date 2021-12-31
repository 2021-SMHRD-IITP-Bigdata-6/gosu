package com.book.DAO;

import java.util.Random;

public class d {
	public static void main(String[] args) {
		int LottoNumber[] = new int[6];

		Random random = new Random();

		int min = 1;
		int max = 45;

		for (int i = 0; i < LottoNumber.length; i++) {
			LottoNumber[i] = (random.nextInt((max - min) + 1) + min);
			System.out.println("LottoNumber --> " + LottoNumber[i]);

			for (int j = 0; j < i; j++) {
				if (LottoNumber[i] == LottoNumber[j]) {
					i--;
				}

				if (LottoNumber[i] < LottoNumber[j]) {
					int LottoNumberTemp = LottoNumber[i];
					LottoNumber[i] = LottoNumber[j];
					LottoNumber[j] = LottoNumberTemp;
				}

			}

		}

		for (int i = 0; i < LottoNumber.length; i++) {
			System.out.println("LOTTO NUMBER  ------->               " + LottoNumber[i]);
		}
	}
}
