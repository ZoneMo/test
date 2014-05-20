package com.tencent.mm.ui.bindgooglecontact;

import android.os.AsyncTask;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

final class z extends AsyncTask
{
  private String gHE;
  private boolean gHG;
  private String gHI;

  public z(GoogleFriendUI paramGoogleFriendUI, String paramString)
  {
    this.gHI = paramString;
  }

  private Void QA()
  {
    aa.i("MicroMsg.GoogleContact.GoogleFriendUI", "doInBackground");
    String str1 = "";
    try
    {
      localHttpURLConnection = (HttpURLConnection)new URL("https://accounts.google.com/o/oauth2/token").openConnection();
      localHttpURLConnection.setRequestProperty("Charset", "UTF-8");
      localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setConnectTimeout(20000);
      localHttpURLConnection.setReadTimeout(20000);
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("refresh_token", this.gHI));
      localArrayList.add(new BasicNameValuePair("client_id", "369820936870.apps.googleusercontent.com"));
      localArrayList.add(new BasicNameValuePair("client_secret", "wcFhvo-s7wNcmQ9Zjr00H06u"));
      localArrayList.add(new BasicNameValuePair("grant_type", "refresh_token"));
      String str2 = ab.p(localArrayList);
      aa.i("MicroMsg.GoogleContact.GoogleFriendUI", "QueryString:%s" + str2);
      BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(localHttpURLConnection.getOutputStream(), "UTF-8"));
      localBufferedWriter.write(str2);
      localBufferedWriter.flush();
      localBufferedWriter.close();
      int i = localHttpURLConnection.getResponseCode();
      aa.e("MicroMsg.GoogleContact.GoogleFriendUI", "responseCode:" + i);
      if (200 == i)
      {
        localStringBuffer = new StringBuffer();
        localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream(), "UTF-8"));
        while (true)
        {
          String str3 = localBufferedReader.readLine();
          if (str3 == null)
            break;
          localStringBuffer.append(str3);
        }
      }
    }
    catch (ProtocolException localProtocolException)
    {
      HttpURLConnection localHttpURLConnection;
      StringBuffer localStringBuffer;
      BufferedReader localBufferedReader;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = localProtocolException.getMessage();
      aa.b("MicroMsg.GoogleContact.GoogleFriendUI", "ProtocolException:%s", arrayOfObject4);
      while (true)
      {
        return null;
        localBufferedReader.close();
        str1 = localStringBuffer.toString();
        aa.i("MicroMsg.GoogleContact.GoogleFriendUI", "exchange token respone:%s" + str1);
        localHttpURLConnection.disconnect();
        aa.d("MicroMsg.GoogleContact.GoogleFriendUI", "refresh response:%s", new Object[] { str1 });
        this.gHE = new JSONObject(str1).optString("access_token");
        this.gHG = true;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localMalformedURLException.getMessage();
        aa.b("MicroMsg.GoogleContact.GoogleFriendUI", "MalformedURLException:%s", arrayOfObject3);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localIOException.getMessage();
        aa.b("MicroMsg.GoogleContact.GoogleFriendUI", "IOException:%s", arrayOfObject2);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localJSONException.getMessage();
        aa.b("MicroMsg.GoogleContact.GoogleFriendUI", "JSONException:%s", arrayOfObject1);
      }
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    aa.i("MicroMsg.GoogleContact.GoogleFriendUI", "onPreExecute");
    this.gHG = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.z
 * JD-Core Version:    0.6.2
 */