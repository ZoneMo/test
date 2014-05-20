package com.tencent.mm.ui.chatting;

import android.os.Looper;
import com.tencent.mm.model.ax;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.ak;
import java.util.Iterator;
import java.util.List;

final class jx
  implements ax
{
  private final ChattingUI gMB;
  private kc gQn;

  public jx(ChattingUI paramChattingUI)
  {
    this.gMB = paramChattingUI;
    this.gQn = new kc();
  }

  protected final boolean Q(String paramString, boolean paramBoolean)
  {
    return this.gQn.a(paramString, this.gMB, paramBoolean);
  }

  public final void b(ak paramak)
  {
    this.gMB.aJI();
    if ((!paramak.aCl().equals(this.gMB.aJe())) || (!paramak.aCc()))
      return;
    Q(paramak.getContent(), false);
  }

  public final void e(List paramList)
  {
    if (w.cp(this.gMB.aJe()));
    ak localak;
    do
    {
      return;
      Iterator localIterator;
      while (!localIterator.hasNext())
        localIterator = paramList.iterator();
      localak = (ak)localIterator.next();
    }
    while ((!localak.aCl().equals(this.gMB.aJe())) || (!localak.aCc()) || (!Q(localak.getContent(), false)));
  }

  public final Looper getLooper()
  {
    return Looper.getMainLooper();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.jx
 * JD-Core Version:    0.6.2
 */