package com.dht.pojo;

import com.dht.pojo.Booking;
import com.dht.pojo.Comment;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-04-08T23:12:08")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile ListAttribute<User, Comment> commentList;
    public static volatile SingularAttribute<User, String> password;
    public static volatile ListAttribute<User, Booking> bookingList;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> username;

}