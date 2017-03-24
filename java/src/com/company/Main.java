package com.company;
import java.io.*;
import java.sql.*;
import java.util.*;
public class Main {
    public static void main(String[] args) {
        List data = new ArrayList();
        try {
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "fox123");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT name_auto, price_fuel, fuel_consumption, mileage_last_month, mileage_this_month FROM auto_park INNER JOIN fuel ON auto_park.name_fuel=fuel.name_fuel;");
            data.add("name_auto    costs_last_month    costs_this_month");
            while (rs.next()) {
                Double price_fuel = rs.getDouble("price_fuel");
                String name = rs.getString("name_auto");
                Double fuel_consumption = rs.getDouble("fuel_consumption");
                Double mileage_last_month = rs.getDouble("mileage_last_month");
                Double mileage_this_month = rs.getDouble("mileage_this_month");
                Double costs_last_month = price_fuel*mileage_last_month*fuel_consumption/100;
                Double costs_this_month = price_fuel*mileage_this_month*fuel_consumption/100;
                data.add( name+ "    " + costs_last_month + "    " + costs_this_month);

            }
            writeToFile(data, "Employee.txt");
            rs.close();
            st.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    private static void writeToFile(java.util.List list, String path) {
        BufferedWriter out = null;
        try {
            File file = new File(path);
            out = new BufferedWriter(new FileWriter(file, true));
            for (Object i : list) {
                out.write((String) i);
                out.newLine();

            }
            out.close();
        } catch (IOException e) {
        }
    }
}