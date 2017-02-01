package com.avish.facebook;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.json.JSONException;
import org.json.JSONObject;

public class FBGraph {
    private String accessToken;
    public FBGraph(String accessToken) {
        this.accessToken = accessToken;
    }
    public String getFBGraph() {
        String graph = null;
        try {
        	String g = "https://graph.facebook.com/me?" + accessToken + "&fields=name,email,gender";
            URL u = new URL(g);
            HttpsURLConnection c = (HttpsURLConnection) u.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(
                    c.getInputStream()));
            
            System.out.println("buffered reader " + in);
            String inputLine;
            StringBuffer b = new StringBuffer();
            while ((inputLine = in.readLine()) != null)
                b.append(inputLine+"\n");
            in.close();
            graph = b.toString();
            System.out.println(graph);
        } catch (Exception e) {
            throw new RuntimeException("ERROR in getting FB graph data. " + e);
        }
        return graph;
    }
    @SuppressWarnings({ "unchecked", "rawtypes" })
    public Map getGraphData(String fbGraph) {
        Map fbUser = new HashMap();
        try {
            JSONObject data = new JSONObject(fbGraph);
            fbUser.put("id", data.getString("id"));
            fbUser.put("name", data.getString("name"));
            if (data.has("email"))
                fbUser.put("email", data.getString("email"));
            if (data.has("gender"))
                fbUser.put("gender", data.getString("gender"));
        } catch (JSONException e) {
            throw new RuntimeException("ERROR in parsing FB graph data. " + e);
        }
        return fbUser;
    }
}
