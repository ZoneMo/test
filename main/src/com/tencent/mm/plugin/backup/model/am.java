package com.tencent.mm.plugin.backup.model;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.LinkedList;

public final class am
{
  private LinkedList cKY = new LinkedList();
  private Handler handler = new Handler(Looper.getMainLooper());

  public final String Ht()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = this.cKY.iterator();
    while (localIterator.hasNext())
    {
      aq localaq = (aq)localIterator.next();
      if ((localaq.type == 2) && (localaq.obj != null) && ((localaq.obj instanceof String)))
      {
        String str2 = (String)localaq.obj;
        localStringBuffer.append(localaq.type + " : " + str2 + " ,");
      }
      else if ((localaq.type == 1) && (localaq.obj != null) && ((localaq.obj instanceof String)))
      {
        String str1 = (String)localaq.obj;
        localStringBuffer.append(localaq.type + " : " + str1 + " ,");
      }
    }
    aa.d("MicroMsg.RecoverDelayData", "dump delay " + localStringBuffer.toString());
    return localStringBuffer.toString();
  }

  public final boolean Hu()
  {
    this.handler.post(new ap(this));
    return true;
  }

  public final boolean d(int paramInt, Object paramObject)
  {
    this.handler.post(new ao(this, paramInt, paramObject));
    return true;
  }

  public final void init()
  {
    this.handler.post(new an(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.am
 * JD-Core Version:    0.6.2
 */