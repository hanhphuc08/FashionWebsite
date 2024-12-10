package controllers.user;

import java.io.IOException;


import com.google.gson.Gson;
import com.google.gson.JsonObject;

import configs.Iconstant;
import models.UserModel;

import org.apache.hc.client5.http.ClientProtocolException;
public class GoogleLogin {
	public static String getToken(String code) throws ClientProtocolException, IOException {
        try {

            String response = Request.Post(Iconstant.GOOGLE_LINK_GET_TOKEN)
                    .bodyForm(Form.form()
                            .add("client_id", Iconstant.GOOGLE_CLIENT_ID)
                            .add("client_secret", Iconstant.GOOGLE_CLIENT_SECRET)
                            .add("redirect_uri", Iconstant.GOOGLE_REDIRECT_URI)
                            .add("code", code)
                            .add("grant_type", Iconstant.GOOGLE_GRANT_TYPE)
                            .build())
                    .execute().returnContent().asString();

            JsonObject jsonObject = new Gson().fromJson(response, JsonObject.class);
            return jsonObject.get("access_token").getAsString();
        } catch (IOException e) {
            e.printStackTrace();
            throw e; 
        }
    }
	public static UserModel getUserInfo(final String accessToken) throws ClientProtocolException, IOException {

        String link = Iconstant.GOOGLE_LINK_GET_USER_INFO + accessToken;

        String response = Request.Get(link).execute().returnContent().asString();

        UserModel googlePojo = new Gson().fromJson(response, UserModel.class);

        return googlePojo;

    }

}
