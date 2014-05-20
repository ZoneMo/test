package com.tencent.mm.sandbox.updater;

import android.os.AsyncTask;
import com.tencent.mm.platformtools.at;
import com.tencent.mm.sandbox.b;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

final class aa extends AsyncTask
{
  private HttpClient dOc = null;
  private int gbB;
  private HttpPost gbC = null;
  private HttpResponse gbD = null;
  private OutputStream gbE = new ab(this);
  private b gbn;
  private int size;

  public aa(w paramw, int paramInt1, int paramInt2, b paramb)
  {
    this.size = paramInt1;
    this.gbB = paramInt2;
    this.gbn = paramb;
  }

  private Integer y(String[] paramArrayOfString)
  {
    String str = paramArrayOfString[0];
    Object localObject1;
    if ((str == null) || (str.length() == 0))
      localObject1 = Integer.valueOf(-1);
    while (true)
    {
      return localObject1;
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.NetSceneGetUpdatePackFromCDN", "current download url=" + str + ", range=" + this.gbB);
      this.dOc = new DefaultHttpClient();
      this.dOc.getParams().setIntParameter("http.connection.timeout", 15000);
      this.gbC = new HttpPost(str);
      HttpPost localHttpPost = this.gbC;
      StringBuilder localStringBuilder = new StringBuilder("bytes=").append(this.gbB).append("-");
      Object localObject2;
      if (this.size - this.gbB > 1048576)
      {
        localObject2 = Integer.valueOf(-1 + (1048576 + this.gbB));
        label155: localHttpPost.addHeader("RANGE", localObject2);
      }
      try
      {
        this.gbD = this.dOc.execute(this.gbC);
        int i = this.gbD.getStatusLine().getStatusCode();
        if ((i != 200) && (i != 206))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "HttpClient return code:" + i);
          if (i == 416)
          {
            Integer localInteger4 = Integer.valueOf(-2);
            localObject1 = localInteger4;
            return localObject1;
            localObject2 = "";
            break label155;
          }
          Integer localInteger5 = Integer.valueOf(-1);
          localObject1 = localInteger5;
          return localObject1;
        }
        if ((w.g(this.gbz)) && (at.cHA) && (Math.random() > 0.2D))
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "simulateNetworkFault");
          Integer localInteger3 = Integer.valueOf(-1);
          localObject1 = localInteger3;
          return localObject1;
        }
        Header[] arrayOfHeader = this.gbD.getHeaders("Content-Length");
        if (arrayOfHeader.length > 0)
          Integer.parseInt(arrayOfHeader[0].getValue());
        if (this.gbB > this.size)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "range out of size");
          Integer localInteger2 = Integer.valueOf(-2);
          localObject1 = localInteger2;
          return localObject1;
        }
        HttpEntity localHttpEntity = this.gbD.getEntity();
        localHttpEntity.writeTo(this.gbE);
        localHttpEntity.consumeContent();
        Integer localInteger1 = Integer.valueOf(0);
        localObject1 = localInteger1;
        return localObject1;
      }
      catch (Exception localException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.NetSceneGetUpdatePackFromCDN", "exception current in download pack");
        return Integer.valueOf(-1);
      }
      finally
      {
        if (this.dOc != null)
          this.dOc.getConnectionManager().shutdown();
      }
    }
  }

  protected final void onCancelled()
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "AsyncTask had been canceled.");
    if (this.gbC != null)
      this.gbC.abort();
    if (this.dOc != null)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.NetSceneGetUpdatePackFromCDN", "connection shutdown.");
      this.dOc.getConnectionManager().shutdown();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.aa
 * JD-Core Version:    0.6.2
 */