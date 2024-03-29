package com.tencent.tmassistantsdk.downloadservice;

import android.text.TextUtils;
import org.apache.http.HttpHost;
import org.apache.http.client.HttpClient;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class HttpClientUtil
{
  public static HttpClient createHttpClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 4096);
    HttpClientParams.setRedirecting(localBasicHttpParams, true);
    return new DefaultHttpClient(localBasicHttpParams);
  }

  public static void setProxy(HttpClient paramHttpClient)
  {
    String str = DownloadHelper.getNetStatus();
    if (!TextUtils.isEmpty(str))
    {
      if ((!str.equalsIgnoreCase("cmwap")) && (!str.equalsIgnoreCase("3gwap")) && (!str.equalsIgnoreCase("uniwap")))
        break label66;
      localHttpHost1 = new HttpHost("10.0.0.172", 80);
      paramHttpClient.getParams().setParameter("http.route.default-proxy", localHttpHost1);
    }
    label66: 
    while (!str.equalsIgnoreCase("ctwap"))
    {
      HttpHost localHttpHost1;
      return;
    }
    HttpHost localHttpHost2 = new HttpHost("10.0.0.200", 80);
    paramHttpClient.getParams().setParameter("http.route.default-proxy", localHttpHost2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadservice.HttpClientUtil
 * JD-Core Version:    0.6.2
 */