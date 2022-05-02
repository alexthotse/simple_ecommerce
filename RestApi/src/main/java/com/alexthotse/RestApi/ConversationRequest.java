package com.alexthotse.RestApi;

public class ConversationRequest {

    private String message;
    private String date;
    private String isSentByMe;

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message= message;
    }

    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date= date;
    }

    public String getIsSentByMe() {
        return isSentByMe;
    }
    public void setIsSentByMe(String isSentByMe) {
        this.isSentByMe= isSentByMe;
    }

}
