 package com.alexthotse.RestApi;

import java.util.Objects;

public class User {

    private final String email;
    private Long id;
    private String password;

    public User( String email,String password ){
        this.email = email;
        this.password = password;

    }

    public String getEmail(){
        return email;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                "id='" + id +  '\'' +
                '}';
    }

    @Override
    public boolean equals( Object o ){
        if( this == o ) return true;
        if( o == null || getClass() != o.getClass() ) return false;
        User user = (User) o;
        return email.equalsIgnoreCase( user.email );
    }

    @Override
    public int hashCode(){
        return Objects.hash( email );
    }

    public String getName(){
        String pseudonym = this.email.split( "@" )[ 0 ];
        return capitaliseFirstLetter( pseudonym );
    }

    public Long getId(){
        return id;
    }

    public void setId( Long id ){
        this.id = id;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword( String password ){
        this.password = password;
    }

    public String capitaliseFirstLetter(String string) {
        return string.substring(0, 1)
                .toUpperCase() + string.substring(1);
    }
}
