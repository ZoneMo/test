package b.a.d;

import b.a.b.b;
import b.a.g.e;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class g
{
  private int code;
  private Map hAc;
  private String hAi;
  private InputStream hAj;

  g(HttpURLConnection paramHttpURLConnection)
  {
    while (true)
    {
      try
      {
        paramHttpURLConnection.connect();
        this.code = paramHttpURLConnection.getResponseCode();
        this.hAc = d(paramHttpURLConnection);
        if ((this.code >= 200) && (this.code < 400))
        {
          i = 1;
          if (i != 0)
          {
            localObject = paramHttpURLConnection.getInputStream();
            this.hAj = ((InputStream)localObject);
            return;
          }
          InputStream localInputStream = paramHttpURLConnection.getErrorStream();
          Object localObject = localInputStream;
          continue;
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        throw new b("The IP address of a host could not be determined.", localUnknownHostException);
      }
      int i = 0;
    }
  }

  private static Map d(HttpURLConnection paramHttpURLConnection)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramHttpURLConnection.getHeaderFields().keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localHashMap;
      String str = (String)localIterator.next();
      localHashMap.put(str, (String)((List)paramHttpURLConnection.getHeaderFields().get(str)).get(0));
    }
  }

  public final int Hr()
  {
    return this.code;
  }

  public final String getBody()
  {
    if (this.hAi != null)
      return this.hAi;
    this.hAi = e.g(this.hAj);
    return this.hAi;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     b.a.d.g
 * JD-Core Version:    0.6.2
 */