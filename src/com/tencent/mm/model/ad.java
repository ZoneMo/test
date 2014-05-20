package com.tencent.mm.model;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.a.c;
import com.tencent.mm.network.bd;
import com.tencent.mm.network.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

final class ad extends Thread
{
  boolean chZ = true;

  ad(y paramy)
  {
  }

  public final void run()
  {
    this.chZ = false;
    int i = 0;
    while (true)
    {
      if (!this.chZ)
      {
        if (i > 10)
          this.chZ = true;
      }
      else
        return;
      try
      {
        localac = (ac)y.a(this.chV).poll(500L, TimeUnit.MILLISECONDS);
        if (localac != null)
        {
          boolean bool = cj.hX(localac.url);
          if (!bool);
        }
        else
        {
          i++;
        }
      }
      catch (Exception localException1)
      {
        int j;
        try
        {
          ac localac;
          aa.d("MicroMsg.GetPicService", "Thread get :" + localac.url + " file:" + localac.filename);
          if (c.as(localac.filename))
          {
            aa.d("MicroMsg.GetPicService", "Thread exist file:" + localac.filename);
            i = 0;
            continue;
          }
          bd localbd = k.hD(localac.url);
          localbd.setUseCaches(true);
          localbd.setConnectTimeout(3000);
          localbd.setReadTimeout(3000);
          InputStream localInputStream = localbd.getInputStream();
          byte[] arrayOfByte = new byte[1024];
          FileOutputStream localFileOutputStream = new FileOutputStream(localac.filename + ".tmp");
          while (true)
          {
            int k = localInputStream.read(arrayOfByte);
            if (k == -1)
              break;
            localFileOutputStream.write(arrayOfByte, 0, k);
          }
          localFileOutputStream.close();
          localInputStream.close();
          new File(localac.filename + ".tmp").renameTo(new File(localac.filename));
          Message localMessage = new Message();
          localMessage.obj = localac;
          localMessage.arg1 = localac.pos;
          this.chV.handler.sendMessage(localMessage);
          i = 0;
          continue;
          localException1 = localException1;
          j = i;
        }
        catch (Exception localException2)
        {
          j = 0;
        }
        i = j;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ad
 * JD-Core Version:    0.6.2
 */