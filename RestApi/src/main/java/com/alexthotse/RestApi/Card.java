package com.alexthotse.RestApi;

import java.util.Objects;

public class Card {

    private String id;
    // private String name;
    private String bankName;
    private String cardNumber;
    private String cardHolder;
    private String currency;
    private String month;
    private String year;
    private int availableBalance;
    private String cvv;
    private Long color;

    public Card(String id, String bankName, String cardNumber, String cardHolder, String month, String year,
            String currency, int availableBalance, String cvv, Long color) {
        this.id = id;
        this.bankName = bankName;
        this.cardNumber = cardNumber;
        this.cardHolder = cardHolder;
        this.currency = currency;
        this.month = month;
        this.year = year;
        this.availableBalance = availableBalance;
        this.cvv = cvv;
        this.color = color;

    }

    public String getId() {
        return id;
    }

    public String getBankName() {
        return bankName;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public String getCardHolder() {
        return cardHolder;
    }

    public String getCurrency() {
        return currency;
    }

    public String getMonth() {
        return month;
    }

    public String getYear() {
        return year;
    }

    public int getAvailableBalance() {
        return availableBalance;
    }

    public String getCVV() {
        return cvv;
    }

    public Long getColor() {
        return color;
    }

    // New edits for card
    @Override
    public String toString() {
        return "Card{" +
                "id='" + id + '\'' +
                "bankName='" + bankName + '\'' +
                "cardNumber='" + cardNumber + '\'' +
                "cardHolder='" + cardHolder + '\'' +
                "currency='" + currency + '\'' +
                "month='" + month + '\'' +
                "year='" + year + '\'' +
                "availableBalance='" + availableBalance + '\'' +
                "cvv='" + cvv + '\'' +
                "color='" + color + '\'' +
                '}';
    }
}
