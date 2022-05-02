package com.alexthotse.RestApi;


import org.json.JSONArray;
import org.json.JSONObject;


public class DataStore {

    private static JSONArray users = new JSONArray();
    private static JSONObject cards = new JSONObject();


    private static JSONObject usersAndChats = new JSONObject();


    public static void addUser(User user){

        users.put(user);
        JSONArray userChat = new JSONArray();
        JSONArray cardObject = new JSONArray();
        cards.put(user.getEmail(),cardObject);
        usersAndChats.put(user.getEmail(),userChat);
        System.out.println(users);
        System.out.println(user);
    }

    public static boolean checkUser(User user){

        for(int i = 0; i < users.length(); i++){

            if (users.get(i).equals(user)){
                return true;
            }

        }
        return false;
    }


    public static void saveUsersCards(Card card,String user){

        JSONArray cardObject = cards.getJSONArray(user);
        cardObject.put(card);
        cards.put(user,cardObject);
        System.out.println(cards);
        System.out.println(cardObject);

    }

    public static void saveUsersChat(String message,String date,String isSentByMe,String user){


        JSONArray userChat = usersAndChats.getJSONArray(user);
        JSONObject messageObject = new JSONObject();
        messageObject.put("message",message);
        messageObject.put("date",date);
        messageObject.put("isSentByMe",isSentByMe);
        userChat.put(messageObject);
        usersAndChats.put(user,userChat);
        System.out.println(user);
        System.out.println(userChat);
        System.out.println(usersAndChats);

    }
}
