package com.tencent.mm.sandbox.monitor;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.io.PrintStream;
import java.util.Map;
import java.util.Timer;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;

final class e
  implements Runnable
{
  e(int paramInt, String paramString1, String paramString2, PByteArray paramPByteArray)
  {
  }

  public final void run()
  {
    SharedPreferences localSharedPreferences = al.getContext().getSharedPreferences("system_config_prefs", 0);
    String str1 = "http://" + localSharedPreferences.getString("support.weixin.qq.com", "support.weixin.qq.com");
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(str1 + "/cgi-bin/mmsupport-bin/stackreport?version=");
    localStringBuffer.append(Integer.toHexString(a.fxr));
    localStringBuffer.append("&devicetype=");
    localStringBuffer.append(a.fxk);
    localStringBuffer.append("&filelength=");
    localStringBuffer.append(this.eOs);
    localStringBuffer.append("&sum=");
    localStringBuffer.append(this.eOt);
    localStringBuffer.append("&reporttype=");
    localStringBuffer.append(1);
    if ((this.ckt != null) && (!this.ckt.equals("")))
    {
      localStringBuffer.append("&username=");
      localStringBuffer.append(this.ckt);
    }
    aa.d("MicroMsg.CrashUpload", "dkcrash sb:" + localStringBuffer.toString());
    String str2 = localStringBuffer.toString();
    byte[] arrayOfByte = this.eOu.value;
    aa.e("MicroMsg.CrashUpload", "doPost : url = " + str2 + ", data.length = " + arrayOfByte.length);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpPost localHttpPost = new HttpPost(str2);
    try
    {
      ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(arrayOfByte);
      localByteArrayEntity.setContentType("binary/octet-stream");
      localHttpPost.setEntity(localByteArrayEntity);
      String str3 = cj.b(localDefaultHttpClient.execute(localHttpPost).getEntity().getContent());
      if ((str3 != null) && (str3.length() > 0))
      {
        Map localMap = u.aL(str3, "Response");
        if (("-1000".equalsIgnoreCase((String)localMap.get(".Response.retCode"))) && (localMap.get(".Response.url") != null))
          new Timer().schedule(new f(localMap), 500L);
      }
      System.out.println(str3);
      return;
    }
    catch (Exception localException)
    {
    }
    catch (IllegalStateException localIllegalStateException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.monitor.e
 * JD-Core Version:    0.6.2
 */