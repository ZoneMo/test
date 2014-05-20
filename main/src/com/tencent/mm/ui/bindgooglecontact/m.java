package com.tencent.mm.ui.bindgooglecontact;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

final class m extends AsyncTask
{
  private String gHE;
  private String gHF;
  private boolean gHG;

  public m(BindGoogleContactUI paramBindGoogleContactUI, String paramString)
  {
    this.gHE = paramString;
  }

  private Void QA()
  {
    aa.i("MicroMsg.GoogleContact.BindGoogleContactUI", "doInBackground");
    try
    {
      String str1 = this.gHE;
      str2 = "";
      localHttpURLConnection = (HttpURLConnection)new URL("https://www.googleapis.com/oauth2/v1/userinfo?access_token=" + str1).openConnection();
      localHttpURLConnection.setRequestProperty("Charset", "UTF-8");
      localHttpURLConnection.setRequestMethod("GET");
      localHttpURLConnection.setConnectTimeout(20000);
      localHttpURLConnection.setReadTimeout(20000);
      int i = localHttpURLConnection.getResponseCode();
      aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "responseCode:" + i);
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
    catch (MalformedURLException localMalformedURLException)
    {
      String str2;
      HttpURLConnection localHttpURLConnection;
      StringBuffer localStringBuffer;
      BufferedReader localBufferedReader;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = localMalformedURLException.getMessage();
      aa.b("MicroMsg.GoogleContact.BindGoogleContactUI", "MalformedURLException:%s", arrayOfObject4);
      while (true)
      {
        return null;
        localBufferedReader.close();
        str2 = localStringBuffer.toString();
        aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "get EmailAccount respone:%s", new Object[] { str2 });
        localHttpURLConnection.disconnect();
        this.gHF = new JSONObject(str2).optString("email");
        if (!TextUtils.isEmpty(this.gHF))
          this.gHG = true;
      }
    }
    catch (ProtocolException localProtocolException)
    {
      while (true)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localProtocolException.getMessage();
        aa.b("MicroMsg.GoogleContact.BindGoogleContactUI", "ProtocolException:%s", arrayOfObject3);
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localUnsupportedEncodingException.getMessage();
        aa.b("MicroMsg.GoogleContact.BindGoogleContactUI", "UnsupportedEncodingException:%s", arrayOfObject2);
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localIOException.getMessage();
        aa.b("MicroMsg.GoogleContact.BindGoogleContactUI", "IOException:%s", arrayOfObject1);
      }
    }
    catch (JSONException localJSONException)
    {
      label199: break label199;
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    aa.i("MicroMsg.GoogleContact.BindGoogleContactUI", "onPreExecute");
    this.gHG = false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.m
 * JD-Core Version:    0.6.2
 */