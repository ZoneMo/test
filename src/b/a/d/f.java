package b.a.d;

import b.a.b.a;
import b.a.b.b;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class f
{
  private String XZ;
  private HttpURLConnection cFg;
  private e hAa;
  private e hAb;
  private Map hAc;
  private String hAd = null;
  private byte[] hAe = null;
  private boolean hAf = false;
  private Long hAg = null;
  private Long hAh = null;
  private j hzZ;
  private String url;

  public f(j paramj, String paramString)
  {
    this.hzZ = paramj;
    this.url = paramString;
    this.hAa = new e();
    this.hAb = new e();
    this.hAc = new HashMap();
  }

  private byte[] aRv()
  {
    if (this.hAe != null)
      return this.hAe;
    String str;
    if (this.hAd != null)
      str = this.hAd;
    try
    {
      while (true)
      {
        byte[] arrayOfByte = str.getBytes(aRo());
        return arrayOfByte;
        str = this.hAb.aRt();
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new b("Unsupported Charset: " + aRo(), localUnsupportedEncodingException);
    }
  }

  private void c(HttpURLConnection paramHttpURLConnection)
  {
    Iterator localIterator = this.hAc.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      paramHttpURLConnection.setRequestProperty(str, (String)this.hAc.get(str));
    }
  }

  public e aRl()
  {
    try
    {
      e locale = new e();
      locale.yn(new URL(this.url).getQuery());
      locale.a(this.hAa);
      return locale;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new b("Malformed URL", localMalformedURLException);
    }
  }

  public j aRm()
  {
    return this.hzZ;
  }

  public String aRn()
  {
    return this.hAa.ym(this.url);
  }

  public String aRo()
  {
    if (this.XZ == null)
      return Charset.defaultCharset().name();
    return this.XZ;
  }

  public g aRp()
  {
    try
    {
      String str1 = aRn();
      if (this.cFg == null)
        if (!this.hAf)
          break label205;
      label205: for (String str2 = "true"; ; str2 = "false")
      {
        System.setProperty("http.keepAlive", str2);
        this.cFg = ((HttpURLConnection)new URL(str1).openConnection());
        this.cFg.setRequestMethod(this.hzZ.name());
        if (this.hAg != null)
          this.cFg.setConnectTimeout(this.hAg.intValue());
        if (this.hAh != null)
          this.cFg.setReadTimeout(this.hAh.intValue());
        c(this.cFg);
        if ((this.hzZ.equals(j.hAq)) || (this.hzZ.equals(j.hAp)))
        {
          HttpURLConnection localHttpURLConnection = this.cFg;
          byte[] arrayOfByte = aRv();
          localHttpURLConnection.setRequestProperty("Content-Length", String.valueOf(arrayOfByte.length));
          if (localHttpURLConnection.getRequestProperty("Content-Type") == null)
            localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
          localHttpURLConnection.setDoOutput(true);
          localHttpURLConnection.getOutputStream().write(arrayOfByte);
        }
        return new g(this.cFg);
      }
    }
    catch (Exception localException)
    {
      throw new a(localException);
    }
  }

  public e aRq()
  {
    return this.hAb;
  }

  public String aRr()
  {
    return this.url.replaceAll("\\?.*", "").replace("\\:\\d{4}", "");
  }

  public void addHeader(String paramString1, String paramString2)
  {
    this.hAc.put(paramString1, paramString2);
  }

  public void bp(String paramString1, String paramString2)
  {
    this.hAa.bq(paramString1, paramString2);
  }

  public String getUrl()
  {
    return this.url;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = aRm();
    arrayOfObject[1] = getUrl();
    return String.format("@Request(%s %s)", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.f
 * JD-Core Version:    0.6.2
 */