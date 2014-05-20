package com.tencent.mm.af;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.qqpinyin.voicerecoapi.a;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public final class k
  implements bw
{
  private a cys = null;
  private FileOutputStream cyt = null;
  private BlockingQueue cyu = new ArrayBlockingQueue(1024);
  private String filename = null;

  public final boolean gv(String paramString)
  {
    aa.e("upload", "init ");
    this.cyu.clear();
    this.filename = (c.getPrefix() + paramString);
    return true;
  }

  public final void stop()
  {
    aa.e("upload", "stop ");
    new Handler(Looper.getMainLooper()).post(new l(this));
  }

  public final void v(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder("pushBuf ");
    if (paramArrayOfByte == null);
    for (Object localObject = "null"; ; localObject = Integer.valueOf(paramArrayOfByte.length))
    {
      aa.e("upload", localObject);
      aa.d("upload", "push into queue queueLen:" + this.cyu.size());
      if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0))
        this.cyu.add(new n(paramArrayOfByte, paramArrayOfByte.length));
      return;
    }
  }

  public final boolean ve()
  {
    aa.d("upload", "doEncode  ");
    String str = be.uz().sI();
    n localn;
    byte[] arrayOfByte;
    Object localObject1;
    Object localObject2;
    try
    {
      aa.e("upload", "path " + str);
      File localFile = new File(str);
      if (!localFile.exists())
        localFile.mkdir();
      this.cyt = new FileOutputStream(new File(str + this.filename + ".temp"));
      this.cys = new a();
      int i = this.cys.aPK();
      if (i != 0)
        aa.e("upload", "speexInit failed :" + i);
      while (true)
      {
        if (this.cyu.size() <= 0)
          break label362;
        localn = (n)this.cyu.poll();
        if ((this.cys != null) && (localn.buf != null) && (localn.ccL > 0))
          try
          {
            if ((localn.buf != null) && (localn.ccL > 0))
            {
              arrayOfByte = this.cys.m(localn.buf, localn.ccL);
              StringBuilder localStringBuilder1 = new StringBuilder(" pcmlen(short): inSpeexBuffer:");
              if (localn.buf != null)
                break;
              localObject1 = "null";
              StringBuilder localStringBuilder2 = localStringBuilder1.append(localObject1).append(" outSpeexBuf:");
              if (arrayOfByte != null)
                break label347;
              localObject2 = "null";
              label277: aa.d("upload", localObject2);
              if ((arrayOfByte != null) && (arrayOfByte.length > 0))
              {
                this.cyt.write(arrayOfByte);
                this.cyt.flush();
              }
            }
          }
          catch (Exception localException4)
          {
          }
      }
    }
    catch (Exception localException1)
    {
      aa.e("upload", "filename open failed");
    }
    while (true)
    {
      return true;
      localObject1 = localn.buf;
      break;
      label347: Integer localInteger = Integer.valueOf(arrayOfByte.length);
      localObject2 = localInteger;
      break label277;
      label362: if (this.cys != null)
      {
        this.cys.aPL();
        this.cys = null;
      }
      if (this.cyt != null);
      try
      {
        this.cyt.close();
        label396: this.cyt = null;
        try
        {
          new File(str + this.filename + ".temp").renameTo(new File(str + this.filename + ".spx"));
          label471: e.CL().start();
        }
        catch (Exception localException2)
        {
          break label471;
        }
      }
      catch (Exception localException3)
      {
        break label396;
      }
    }
  }

  public final boolean vf()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.k
 * JD-Core Version:    0.6.2
 */