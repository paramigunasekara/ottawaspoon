package ca.ottawaspoon.utils;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

import javax.tools.DocumentationTool.Location;

import ca.ottawaspoon.beans.*;

/**
 * This class uses SQL queries and return java elements.
 * @author Parami
 *
 */
public class DatabaseUtils {
	
	/**
	 * Finds a Rater by username and password.
	 * @param conn connection to the database
	 * @param userName user entered Username
	 * @param password user entered password
	 * @return a new <code>Rater</code> object with user if exists, otherwise null
	 * @throws SQLException if a database access error occurs or this method is called on a closed connection; if thrown returns a null
	 */
	public static Rater findUser(Connection conn, String userName, String password) throws SQLException {
 
        String sql = "Select * from rater r where r.userID = ? and r.password= ?";
 
        //Artem checkout PreparedStatement docs. The "?" is the placeholder. #cool
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
        pstm.setString(2, password);
        
        try {
        	 	ResultSet rs = pstm.executeQuery();
             if (rs.next()) {
             		Rater user = new Rater();
             		user.setUserName(userName);
             		user.setPassword(password);
             		user.setEmail(rs.getString("e_mail"));
             		user.setName(rs.getString("name"));
             		user.setJoin_date(rs.getDate("join_date"));
             		user.setType(rs.getString("type"));
             		user.setReputation(rs.getShort("reputation"));
             		System.out.println("Finding User: " + userName + " via: DatabaseUtils.findUser(username, password)");
                 return user;
             }
        } catch (SQLException e) {
        		System.out.println("Error Occured while executing DatabaseUtils.findUser(username, password)");
        }
        return null;
    }
	
	/**
	 * Finds a Rater by username.
	 * @param conn connection to the database
	 * @param userName user entered Username
	 * @return a new <code>Rater</code> object with user if exists, otherwise null
	 * @throws SQLException if a database access error occurs or this method is called on a closed connection; if thrown returns a null
	 */
	public static Rater findUser(Connection conn, String userName) throws SQLException {
		 
        String sql = "Select * from rater r where r.userID = ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, userName);
 
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         if (rs.next()) {
	         		Rater user = new Rater();
	         		user.setUserName(userName);
	         		user.setPassword(rs.getString("password"));
	         		user.setEmail(rs.getString("e_mail"));
	         		user.setName(rs.getString("name"));
	         		user.setJoin_date(rs.getDate("join_date"));
	         		user.setType(rs.getString("type"));
	         		user.setReputation(rs.getShort("reputation"));
	         		System.out.println("Finding User: " + userName + " via: DatabaseUtils.findUser(username)");
	             return user;
	         }
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing DatabaseUtils.findUser(username)");
	    }
        return null;
    }
	
	/**
	 * Creates an ArrayList of restaurant names.
	 * @param conn connection to the database
	 * @return a new <code>ArrayList</code> with restaurant names
	 * @throws SQLException if a database access error occurs or this method is called on a closed connection; if thrown returns a null
	 */
	public static ArrayList<String> getRestaurantNames(Connection conn) throws SQLException {
		
		ArrayList<String> restaurantNames = new ArrayList<String>();
		
		try {
			Statement stm = conn.createStatement();
            ResultSet rs = stm.executeQuery("SELECT rs.name FROM restaurant rs");
            while (rs.next()) {
            		restaurantNames.add(rs.getString("name"));
            }
            rs.close();
            return restaurantNames;
		} catch (SQLException e) {
    			System.out.println("Error Occured while executing DatabaseUtils.getRestaurantNames()");
	    }
	    return null;
	}
	
	/**
	 * Creates a Rater record in the database.
	 * @param conn connection to the database
	 * @param newRater newRater object with new information
	 * @return a success signal
	 * @throws SQLException SQLException if a database access error occurs or this method is called on a closed connection; if thrown returns a false
	 */
	public static boolean addRater(Connection conn, Rater newRater) throws SQLException {
		
		boolean success = false;
		String sql = "insert into ottawaspoon.rater (userId,e_mail,name,type,join_date,reputation,password) values ('?','?','?','?','?',?,'?'),";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, newRater.getUserName());
        pstm.setString(2, newRater.getEmail());
        pstm.setString(3, newRater.getName());
        pstm.setString(4, newRater.getType());
        pstm.setDate(5, newRater.getJoin_date());
        pstm.setInt(6, newRater.getReputation());
        pstm.setString(7, newRater.getPassword());
        
        try {
	    	 	pstm.executeQuery();
	    	 	success = true;
		} catch (SQLException e) {
				success = false;
    			System.out.println("Error Occured while executing DatabaseUtils.addRater()");
	    }
	    return success;
	}
	

	public static ArrayList<Restaurant> aquery(Connection conn, String restName) throws SQLException {
		 
        String sql = "select *\n" + 
        		"from restaurant natural join location\n" + 
        		"where restaurant.name = '?'";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, restName);
        ArrayList<Restaurant> rests = new ArrayList<Restaurant>();
        
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 Restaurant rest = new Restaurant();
	        	 rest.setRestaurantID(Integer.valueOf(rs.getString("restaurantID")));
	        	 rest.setName(rs.getString("name"));
	        	 rest.setType(rs.getString("type"));
	        	 rest.setUrl(rs.getString("url"));
	        	 ca.ottawaspoon.beans.Location loc = new ca.ottawaspoon.beans.Location();
	        	 loc.setLocationID(Integer.valueOf(rs.getString("locationID")));
	        	 loc.setOpen_date(Date.valueOf(rs.getString("open_date")));
	        	 loc.setManager(rs.getString("manager"));
	        	 loc.setPhone(rs.getString("phone"));
	        	 loc.setAddress(rs.getString("address"));
	        	 loc.setHours_open(Integer.valueOf(rs.getString("hours_open")));
	        	 loc.setHours_close(Integer.valueOf(rs.getString("hours_close")));
	        	 loc.setRestaurantID(Integer.valueOf(rs.getString("restaurantID")));
	        	 ArrayList<ca.ottawaspoon.beans.Location> arrayLoc = new  ArrayList<ca.ottawaspoon.beans.Location>();
	        	 arrayLoc.add(loc);
	        	 rest.setLocations(arrayLoc);   	 
	        	 
	             rests.add(rest);
	         }
	         return rests;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing querry a");
	    }
        return null;
    }
	
	public static ArrayList<MenuItem> bquery(Connection conn, String restName) throws SQLException {
		 
        String sql = "select  i.name, i.price\n" + 
        		"from menuitem i, restaurant r\n" + 
        		"where r.name = '?'\n" + 
        		"and r.restaurantID = i.restaurantID\n" + 
        		"order by category";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, restName); 
        ArrayList<ca.ottawaspoon.beans.MenuItem> menus = new ArrayList<ca.ottawaspoon.beans.MenuItem>();
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 ca.ottawaspoon.beans.MenuItem item = new ca.ottawaspoon.beans.MenuItem();
	        	 item.setName(rs.getString("name"));
	        	 item.setCategory(rs.getString("category"));
	        	 item.setPrice(Integer.valueOf(rs.getString("price")));   
	             menus.add(item);
	         }
	         return menus;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing query b");
	    }
        return null;
    }
	public static ArrayList<Restaurant> cquery(Connection conn, String category) throws SQLException {
		 
        String sql = "select l.open_date, l.manager\n" + 
        		"from restaurant r natural join location l\n" + 
        		"where r.type = '?'";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, category); 
        ArrayList<Restaurant> rests = new ArrayList<Restaurant>();
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 Restaurant rest = new Restaurant();	        	
	        	 rest.setType(rs.getString("type"));	        	
	        	 ca.ottawaspoon.beans.Location loc = new ca.ottawaspoon.beans.Location();	        	 
	        	 loc.setOpen_date(Date.valueOf(rs.getString("open_date")));
	        	 loc.setManager(rs.getString("manager"));	        	
	        	 ArrayList<ca.ottawaspoon.beans.Location> arrayLoc = new  ArrayList<ca.ottawaspoon.beans.Location>();
	        	 arrayLoc.add(loc);
	        	 rest.setLocations(arrayLoc);   
	        	 rests.add(rest);
	         }
	         return rests;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing query c");
	    }
        return null;
    }	
	public static ArrayList<Restaurant> dquery(Connection conn, String restName) throws SQLException {
		 
        String sql = "select r.name, i.name as menue_Item, l.manager, pr.price as most_expensive_price, l.address, l.hours_open\n" + 
        		"from restaurant r, menuitem i, location l, (select price, restaurantID,itemID\n" + 
        		"												from menuitem\n" + 
        		"												) as pr\n" + 
        		"where pr.price >= all(select price\n" + 
        		"					from menuitem\n" + 
        		"					where r.restaurantID = restaurantID)\n" +         		
        		"		and r.name = '?'\n" + 
        		"		and i.itemID = pr.itemID\n" + 
        		"		and l.restaurantID = r.restaurantID\n" + 
        		"		and pr.restaurantID = r.restaurantID\n" + 
        		"		and i.restaurantID = r.restaurantID";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, restName);
        ArrayList<Restaurant> rests = new ArrayList<Restaurant>();
        
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 Restaurant rest = new Restaurant();
	        	 rest.setName(rs.getString("name"));
	        	 rest.setUrl(rs.getString("url"));
	        	 ca.ottawaspoon.beans.Location loc = new ca.ottawaspoon.beans.Location();
	        	 
	        	 ArrayList<ca.ottawaspoon.beans.Location> arrayLoc = new  ArrayList<ca.ottawaspoon.beans.Location>();
	        	 loc.setManager(rs.getString("manager"));	        	 
	        	 loc.setAddress(rs.getString("address"));
	        	 loc.setHours_open(Integer.valueOf(rs.getString("hours_open")));  
	        	 arrayLoc.add(loc);
	        	 rest.setLocations(arrayLoc);   
	        	 
	        	 ArrayList<MenuItem> menus= new ArrayList<MenuItem>();
	        	 MenuItem item = new MenuItem();
	        	 item.setName(rs.getString("menue_Item"));
	        	 item.setPrice(Integer.valueOf(rs.getString("price")));   
	             menus.add(item);
	        	 rest.setMenuItems(menus);
	             
	             rests.add(rest);
	         }
	         return rests;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing querry d");
	    }
        return null;
    }
	
	public static ArrayList<Restaurant> equery(Connection conn) throws SQLException {
		 
        String sql = "select r.type, i.category, avg(i.price) as average_price\n" + 
        		"from restaurant r, menuitem i\n" + 
        		"where r.restaurantID = i.restaurantID\n" + 
        		"group by r.type, i.category";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        ArrayList<Restaurant> rests = new ArrayList<Restaurant>();
        
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 Restaurant rest = new Restaurant();
	        	 rest.setType(rs.getString("type"));
	        	 
	        	 ArrayList<MenuItem> menus= new ArrayList<MenuItem>();
	        	 MenuItem item = new MenuItem();
	        	 item.setName(rs.getString("menue_Item"));
	        	 item.setPrice(Integer.valueOf(rs.getString("average_price")));   
	             menus.add(item);
	        	 rest.setMenuItems(menus);
	             
	             rests.add(rest);
	         }
	         return rests;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing querry e");
	    }
        return null;
    }
	//<3
	public static ArrayList<ArrayList<String>> fquery(Connection conn) throws SQLException {
		 
        String sql = "select r.name, rat.name as rater, round(avg(rt.food + rt.mood + rt.staff + rt.price),2) as average_score,count(*) as total_amount_of_ratings\n" + 
        		"from restaurant r, rater rat, rating rt\n" + 
        		"where r.restaurantiD = rt.restaurantiD\n" + 
        		"	and rt.userID = rat.userID\n" + 
        		"group by r.name, rat.name\n" + 
        		"order by r.name";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        ArrayList<ArrayList<String>> toReturn = new ArrayList<ArrayList<String>>();
        
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 ArrayList<String> allInOneLine = 
	        			 new ArrayList<>(Arrays.asList(rs.getString("name"),
	        				rs.getString("rater"), rs.getString("average_score"),
	        				rs.getString("total_amount_of_ratings")));
	        	 toReturn.add(allInOneLine);
	         }
	         return toReturn;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing querry f");
	    }
        return null;
    }
	
	public static ArrayList<Restaurant> gquery(Connection conn) throws SQLException {
		 
        String sql = "select name, type, phone\n" + 
        		"from restaurant r, location l, rating rt\n" + 
        		"where rt.restaurantiD = r.restaurantiD \n" + 
        		"and r.restaurantiD = l.restaurantiD\n" + 
        		"		and \n" + 
        		"		(select restaurantiD\n" + 
        		"		from restaurant\n" + 
        		"		where restaurantiD = r.restaurantiD) not in(select rr.restaurantiD\n" + 
        		"											from restaurant rr, rating rtt\n" + 
        		"											where rr.restaurantiD = r.restaurantiD\n" + 
        		"											and rtt.restaurantiD = rr.restaurantiD\n" + 
        		"											and rtt.date::text like '2015-1-__' )";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        ArrayList<Restaurant> rests = new ArrayList<Restaurant>();
        
        try {
	    	 	ResultSet rs = pstm.executeQuery();
	         while (rs.next()) {
	        	 Restaurant rest = new Restaurant();
	        	 rest.setName(rs.getString("name"));
	        	 rest.setType(rs.getString("type"));
	        	 ca.ottawaspoon.beans.Location loc = new ca.ottawaspoon.beans.Location();
	        	 
	        	 ArrayList<ca.ottawaspoon.beans.Location> arrayLoc = new  ArrayList<ca.ottawaspoon.beans.Location>();
	        	 loc.setPhone(rs.getString("phone"));   
	        	 arrayLoc.add(loc);
	        	 rest.setLocations(arrayLoc);   	 
	        	 
	             rests.add(rest);
	         }
	         return rests;
	    } catch (SQLException e) {
	    		System.out.println("Error Occured while executing querry g");
	    }
        return null;
    }
	
	
	//aleks
		public static ArrayList<ArrayList<String>> o(Connection conn){
			String sql = " select deviations.userid ,deviations.dev ,rat.name as ratname ,rat.type ,rat.e_mail ,rating.food ,r.name\n"+
			"from (select stddev(food) dev, rater.userid userid\n"+
			"from rating natural join rater\n"+
			"group by rater.userid) as deviations,\n"+
				
			"(select max(internDev.dev) devMax\n"+
			"from\n"+
			"(select stddev(food) dev, rater.userid userid\n"+
			"from rating natural join rater\n"+
			"group by rater.userid) as internDev)\n"+
			"as deviationsMax,\n"+
			"rater rat,\n"+
			"rating,\n"+
			"restaurant r\n"+
			"where deviations.dev = deviationsMax.devMax and rat.userid= deviations.userid and rating.userid = rat.userid and r.restaurantid = rating.restaurantid\n";

			ArrayList<ArrayList<String>> returnOfO = new ArrayList<ArrayList<String>>();

			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery(sql);
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("userid"));
					temp.add(rs.getString("dev"));
					temp.add(rs.getString("ratName"));
					temp.add(rs.getString("type"));
					temp.add(rs.getString("e_mail"));
					temp.add(rs.getString("food"));
					temp.add(rs.getString("name"));
					returnOfO.add(temp);
				}
				return returnOfO;
			}catch (SQLException e){
				System.out.println("Aleks error JAVAUtils o) ha-ha");
			}
			return null;
		}

		public static ArrayList<Rater> n(Connection conn){
			String sql = "select rat.name, rat.e_mail\n"+
						"from rater rat,	\n"+
						"(select (avg(price) + avg(food) + avg(mood) + avg(staff)) as tottalRating, rater.userid as thisguy\n"+
										"from rater, rating\n"+
										"where rater.userid = rating.userid\n"+
										"group by rater.userid\n"+
										") as userinfo,\n"+
										
										"(select (avg(price) + avg(food) + avg(mood) + avg(staff)) as tottalRating\n"+
										"from rater jrat, rating jrt\n"+
										"where jrat.userid = jrt.userid\n"+
										"and jrat.name = 'John') as john\n"+
							
			"where rat.userid = userinfo.thisguy\n"+
			"and userinfo.tottalRating < john.tottalRating\n";

			
			ArrayList<Rater> outN = new ArrayList<Rater>();
			try{
				//PrepareStatement pstm = ;
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while (rs.next()){
					Rater  temp = new Rater();
					temp.setName(rs.getString("name"));
					temp.setEmail(rs.getString("email"));
					outN.add(temp);
				}	return outN;
			}catch (SQLException e){
				System.out.println("Aleks error JAVAUtils n) ha-ha");
			}
			return null;
		}
		public static ArrayList<ArrayList<String>> m(Connection conn,String restaurant){
			String sql = "select rat.name, rat.reputation, rt.comment, mi.name, mi.price\n"+
						 "from rater rat, restaurant r, rating rt, \n"+
											"menuitem mi, ratingitem ri, (select count(*) as tottal, rat.userid as rater\n"+
																		"from rating rt, rater rat, restaurant r\n"+
																		"where rt.userid = rat.userid\n"+
																		"and r.restaurantid = rt.restaurantid\n"+
																		"-- z is place holder\n"+
																		"and r.name = ?\n"+
																		"group by rat.userid\n"+																												
																		") as ratings,\n"+
																		"(select max (ratings.tottal) as max_tottal\n"+
																		"from  (select count(*) as tottal, rat.userid\n"+
																													"from rating rt, rater rat, restaurant r\n"+
																													"where rt.userid = rat.userid\n"+
																													"and r.restaurantid = rt.restaurantid\n"+
																													"-- z is place holder\n"+
																													"and r.name = ?\n"+
																													"group by rat.userid\n"+																											
																													") as ratings\n"+																																							
																													") as max_ratings\n"+
																													"where ratings.rater = rat.userid\n"+
																													"	and ratings.tottal = max_ratings.max_tottal\n"+
																													"	and rt.restaurantid = r.restaurantid\n"+
																													"and rt.userid = rat.userid\n"+
																													"-- z is place holder\n"+
																													"and r.name = ?\n"+
																													"and mi.restaurantid = r.restaurantid\n"+
																													"and mi.itemid = ri.itemid\n";
		
			
			ArrayList<ArrayList<String>> outM = new ArrayList<ArrayList<String>>();
			try{
				PreparedStatement pstm = conn.prepareStatement(sql);
				pstm.setString(1, restaurant);
				pstm.setString(2, restaurant);
				pstm.setString(3, restaurant);
				
				ResultSet rs = pstm.executeQuery();
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("rater"));
					temp.add(rs.getString("reputation"));
					temp.add(rs.getString("comment"));
					temp.add(rs.getString("name"));
					temp.add(rs.getString("price"));
					outM.add(temp);
				}
				return outM;
			}catch (SQLException e) {
				System.out.println("Aleks m) ha-ha");
		}
		return null;
		}

		public static ArrayList<ArrayList<String>> l (Connection conn){
			String sql =  "select rat.name as rater, rat.reputation, food + mood as rating, \n"+
			"r.name, rt.date\n"+
			"from rater rat, rating rt, restaurant r\n"+
			"where rat.userid = rt.userid\n"+
			"and rt.restaurantID = r.restaurantID\n"+
			"order by rating desc\n"+
			"limit 10\n";
			ArrayList<ArrayList<String>> outL = new ArrayList<ArrayList<String>>();
			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("rater"));
					temp.add(rs.getString("reputation"));
					temp.add(rs.getString("rating"));
					temp.add(rs.getString("name"));
					temp.add(rs.getString("date"));
					outL.add(temp);
				}
				return outL;
			}catch (SQLException e){
				System.out.println("Aleks l) ho-ho-ho");
			}
			return null;
		}
		public static ArrayList<ArrayList<String>> k(Connection conn){
			String sql = "select rat.name as rater, rat.join_date, rat.reputation, food + mood as rating,"+ 
			"r.name, rt.date"+
			"from rater rat, rating rt, restaurant r"+
			"where rat.userid = rt.userid"+
			"and rt.restaurantID = r.restaurantID"+
			"order by rating desc"+
			"limit 10";
			ArrayList<ArrayList<String>> outK = new ArrayList<ArrayList<String>>();
			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("rater"));
					temp.add(rs.getString("join_date"));
					temp.add(rs.getString("reputation"));
					temp.add(rs.getString("rating"));
					temp.add(rs.getString("name"));
					temp.add(rs.getString("date"));

					outK.add(temp);
				}
				return outK;
			}catch (SQLException e) {
				System.out.println("Aleks k) ooo");
		}
		return null;
		}

		public static ArrayList<ArrayList<String>> j (Connection conn){
			String sql = "select r.type, round(avg(rrt.price + rrt.food + rrt.mood + rrt.staff), 2) as ave_rating"+
			"from restaurant r, rating rrt"+
			"where r.restaurantID = rrt.restaurantID"+
			"and (select count(*)"+
			"from rating"+
			"where r.restaurantID = rrt.restaurantID"+
			") > 0"+
			"group by r.type"+
			"order by ave_rating desc"+
			"limit 3";

			ArrayList<ArrayList<String>> outJ = new ArrayList<ArrayList<String>>();
			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("type"));
					temp.add(rs.getString("ave_rating"));
					outJ.add(temp);
				}
				return outJ;
			}catch (SQLException e) {
				System.out.println("Aleks k) why did you go wrong");
		}
		return null;
		}

		public static ArrayList<ArrayList<String>> i(Connection conn,String restaurant){
			String sql = "select r.name,rater.name\n"+
			"from rating rat natural join restaurant r,rater\n"+ 
			"where food =5 and rater.userid = rat.userid and r.type =?--chineese placeholder\n";

			ArrayList<ArrayList<String>> outI =new ArrayList<ArrayList<String>>();
		
			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while (rs.next()){
					ArrayList<String> temp = new ArrayList<String>();
					temp.add(rs.getString("restaurant"));
					temp.add(rs.getString("name"));
					outI.add(temp);
				}
				return outI;
			}catch (SQLException e){
				System.out.println("Aleks error JAVAUtils o) ha-ha");
			}
			return null;
		
		}

		public static ArrayList<ArrayList<String>> h (Connection conn,String id){
			String sql = "select r.name,l.open_date"+
			"from (location l natural join restaurant r)natural join rating rat "+
			"where"+
				"rat.staff< any( select rat.staff"+
								"from restaurant r natural join rating rat"+
								"--place holder"+
								"where rat.userId =? )--placeholder"+
			"order by rat.date";

			ArrayList<ArrayList<String>> returnOfH = new ArrayList<ArrayList<String>>();

			try{
				ResultSet rs = conn.prepareStatement(sql).executeQuery();
				while(rs.next()){
					ArrayList<String> temp = new ArrayList<String>(); 
					temp.add(rs.getString("name"));
					temp.add(rs.getString("open_date"));
					returnOfH.add(temp);
				}
				return returnOfH;
			}catch (SQLException e){
				System.out.println("Aleks error JAVAUtils h) ha-ha");
			}
			return null;

		}

}
