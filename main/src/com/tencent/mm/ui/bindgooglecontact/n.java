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

final class n extends AsyncTask
{
  private String gHE;
  private String gHH;
  private String gHI;
  private boolean gHJ;

  public n(BindGoogleContactUI paramBindGoogleContactUI, String paramString)
  {
    this.gHH = paramString;
  }

  private Void QA()
  {
    try
    {
      String str1 = this.gHH;
      str2 = "";
      localHttpURLConnection = (HttpURLConnection)new URL("https://accounts.google.com/o/oauth2/token").openConnection();
      localHttpURLConnection.setRequestProperty("Charset", "UTF-8");
      localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setConnectTimeout(20000);
      localHttpURLConnection.setReadTimeout(20000);
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new BasicNameValuePair("code", str1));
      localArrayList.add(new BasicNameValuePair("client_id", "369820936870.apps.googleusercontent.com"));
      localArrayList.add(new BasicNameValuePair("client_secret", "wcFhvo-s7wNcmQ9Zjr00H06u"));
      localArrayList.add(new BasicNameValuePair("redirect_uri", "urn:ietf:wg:oauth:2.0:oob"));
      localArrayList.add(new BasicNameValuePair("grant_type", "authorization_code"));
      String str3 = ab.p(localArrayList);
      aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "QueryString:%s", new Object[] { str3 });
      localHttpURLConnection.setRequestProperty("Content-length", String.valueOf(str3.getBytes().length));
      BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(localHttpURLConnection.getOutputStream(), "UTF-8"));
      localBufferedWriter.write(str3);
      localBufferedWriter.flush();
      localBufferedWriter.close();
      int i = localHttpURLConnection.getResponseCode();
      aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "responseCode:" + i);
      if (200 == i)
      {
        localStringBuffer = new StringBuffer();
        localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream(), "UTF-8"));
        while (true)
        {
          String str4 = localBufferedReader.readLine();
          if (str4 == null)
            break;
          localStringBuffer.append(str4);
        }
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      String str2;
      HttpURLConnection localHttpURLConnection;
      StringBuffer localStringBuffer;
      BufferedReader localBufferedReader;
      aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "MalformedURLException:%s" + localMalformedURLException.getMessage());
      while (true)
      {
        return null;
        localBufferedReader.close();
        str2 = localStringBuffer.toString();
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "exchange token respone:%s", new Object[] { str2 });
        localHttpURLConnection.disconnect();
        this.gHE = new JSONObject(str2).optString("access_token");
        this.gHI = new JSONObject(str2).optString("refresh_token");
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "response:%s", new Object[] { str2 });
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.gHE;
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "mAccessToken:%s", arrayOfObject1);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.gHI;
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "mRefreshToken:%s", arrayOfObject2);
        this.gHJ = true;
      }
    }
    catch (ProtocolException localProtocolException)
    {
      while (true)
        aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "ProtocolException:%s" + localProtocolException.getMessage());
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "IOException:%s" + localIOException.getMessage());
    }
    catch (JSONException localJSONException)
    {
      while (true)
        aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "JSONException:%s" + localJSONException.getMessage());
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    aa.i("MicroMsg.GoogleContact.BindGoogleContactUI", "onPreExecute");
    this.gHE = "";
    this.gHI = "";
    this.gHJ = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.n
 * JD-Core Version:    0.6.2
 */