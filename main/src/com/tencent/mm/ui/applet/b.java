package com.tencent.mm.ui.applet;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.LinkedList;

public final class b
{
  private int Ix;
  private int direction = 0;
  private MessageQueue.IdleHandler gmg;
  private g gxg;
  private LinkedList gxh;
  private e gxi;
  private GestureDetector gxj = new GestureDetector(new d(this));

  public b(e parame)
  {
    this.gxi = parame;
    this.Ix = 15;
    this.gxg = new g(this);
    this.gxh = new LinkedList();
    this.gmg = new c(this);
    Looper.myQueue().addIdleHandler(this.gmg);
  }

  public final void a(int paramInt, f paramf)
  {
    if (paramf == null)
      aa.e("MicroMsg.EarlyGetHeadImg", "earlyGet, getter is null, no early get headimg will be performed");
    int i;
    int j;
    label37: 
    do
    {
      return;
      if (this.Ix <= 0)
      {
        aa.e("MicroMsg.EarlyGetHeadImg", "earlyGet fail, threshold is invalid");
        return;
      }
      i = paramf.zl();
      j = 1;
      if (j > this.Ix)
        break;
      if (this.direction != 1)
        break label123;
    }
    while (paramInt - j < 0);
    String str2 = paramf.de(paramInt - j);
    if ((str2 != null) && (str2.length() != 0) && (!this.gxg.contains(str2)))
    {
      this.gxg.eQ(str2);
      this.gxh.add(str2);
    }
    while (true)
    {
      j++;
      break label37;
      break;
      label123: if (paramInt + j >= i)
        break;
      String str1 = paramf.de(paramInt + j);
      if ((str1 != null) && (str1.length() != 0) && (!this.gxg.contains(str1)))
      {
        this.gxg.eQ(str1);
        this.gxh.add(str1);
      }
    }
  }

  public final void detach()
  {
    if (this.gmg != null)
      Looper.myQueue().removeIdleHandler(this.gmg);
  }

  public final void onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.gxj != null)
      this.gxj.onTouchEvent(paramMotionEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.b
 * JD-Core Version:    0.6.2
 */