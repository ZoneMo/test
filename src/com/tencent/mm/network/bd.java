package com.tencent.mm.network;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class bd
{
  private int cEv;
  private HttpURLConnection cFg;
  private Map cFh = null;
  private URL url;

  public bd(URL paramURL, int paramInt)
  {
    this.url = paramURL;
    this.cEv = paramInt;
    this.cFg = ((HttpURLConnection)this.url.openConnection());
    if (1 == this.cEv)
      this.cFg.setInstanceFollowRedirects(false);
  }

  public final void EW()
  {
    this.cFg.setDoInput(true);
  }

  public final void EX()
  {
    this.cFg.setDoOutput(true);
  }

  public final void connect()
  {
    if ((1 == this.cEv) && (this.cFh == null))
      this.cFh = this.cFg.getRequestProperties();
    this.cFg.connect();
  }

  public final void disconnect()
  {
    this.cFg.disconnect();
  }

  public final String getHeaderField(String paramString)
  {
    if ((1 == this.cEv) && (this.cFh == null))
      this.cFh = this.cFg.getRequestProperties();
    return this.cFg.getHeaderField(paramString);
  }

  public final Map getHeaderFields()
  {
    if ((1 == this.cEv) && (this.cFh == null))
      this.cFh = this.cFg.getRequestProperties();
    return this.cFg.getHeaderFields();
  }

  public final InputStream getInputStream()
  {
    if (1 == this.cEv)
    {
      if (this.cFh == null)
        this.cFh = this.cFg.getRequestProperties();
      getResponseCode();
    }
    return this.cFg.getInputStream();
  }

  public final OutputStream getOutputStream()
  {
    if (1 == this.cEv)
    {
      if (this.cFh == null)
        this.cFh = this.cFg.getRequestProperties();
      getResponseCode();
    }
    return this.cFg.getOutputStream();
  }

  public final String getRequestProperty(String paramString)
  {
    return this.cFg.getRequestProperty(paramString);
  }

  public final int getResponseCode()
  {
    while (true)
    {
      if ((1 == this.cEv) && (this.cFh == null))
        this.cFh = this.cFg.getRequestProperties();
      int i = this.cFg.getResponseCode();
      String str1;
      if ((1 == this.cEv) && (302 == i))
      {
        str1 = this.cFg.getHeaderField("Location");
        if (str1 != null);
      }
      else
      {
        return i;
      }
      this.url = new URL(this.url, str1);
      this.cFg = ((HttpURLConnection)this.url.openConnection());
      this.cFg.setInstanceFollowRedirects(false);
      if (this.cFh != null)
      {
        Iterator localIterator = this.cFh.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          if ((!str2.equals("Host")) && (!str2.equals("X-Online-Host")))
          {
            List localList = (List)this.cFh.get(str2);
            for (int j = 0; j < localList.size(); j++)
              this.cFg.setRequestProperty(str2, (String)localList.get(j));
          }
        }
      }
      this.cFg.setRequestProperty("Host", this.url.getHost());
      this.cFg.setRequestProperty("X-Online-Host", this.url.getHost());
    }
  }

  public final void setConnectTimeout(int paramInt)
  {
    this.cFg.setConnectTimeout(paramInt);
  }

  public final void setReadTimeout(int paramInt)
  {
    this.cFg.setReadTimeout(paramInt);
  }

  public final void setRequestMethod(String paramString)
  {
    this.cFg.setRequestMethod(paramString);
  }

  public final void setRequestProperty(String paramString1, String paramString2)
  {
    this.cFg.setRequestProperty(paramString1, paramString2);
  }

  public final void setUseCaches(boolean paramBoolean)
  {
    this.cFg.setUseCaches(paramBoolean);
  }

  public final String toString()
  {
    return this.cFg.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bd
 * JD-Core Version:    0.6.2
 */