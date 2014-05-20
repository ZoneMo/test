package com.tencent.mm.model;

import android.os.Handler;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public final class y
{
  private ad chS = null;
  private BlockingQueue chT = new ArrayBlockingQueue(80);
  public ab chU = null;
  Handler handler = new z(this, be.ut().getLooper());

  public static String l(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    return be.uz().sB() + "/reader_" + paramInt + "_" + f.h(paramString.getBytes()) + ".jpg";
  }

  public final String j(String paramString, int paramInt1, int paramInt2)
  {
    String str = l(paramString, paramInt1);
    aa.d("MicroMsg.GetPicService", "getPicfileByUrl type:" + paramInt1 + " url:" + paramString);
    try
    {
      boolean bool = c.as(str);
      if (bool)
        return str;
    }
    catch (Exception localException1)
    {
    }
    try
    {
      this.chT.add(new ac(this, paramString, str, paramInt2));
      if ((this.chS == null) || (!this.chS.isAlive()))
      {
        this.chS = new ad(this);
        this.chS.start();
      }
      label112: return null;
    }
    catch (Exception localException2)
    {
      break label112;
    }
  }

  public final void tV()
  {
    if (this.chS != null)
      this.chS.chZ = true;
    this.chS = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.y
 * JD-Core Version:    0.6.2
 */