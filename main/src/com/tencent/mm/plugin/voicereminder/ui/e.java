package com.tencent.mm.plugin.voicereminder.ui;

import com.tencent.mm.platformtools.au;
import com.tencent.mm.ui.base.x;
import java.util.Iterator;
import java.util.List;

final class e
  implements Runnable
{
  e(RemindDialog paramRemindDialog)
  {
  }

  public final void run()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = RemindDialog.a(this.ePv).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (au.hX(str))
        localStringBuffer.append("\n\n");
      else
        localStringBuffer.append(str + "\n\n");
    }
    if (RemindDialog.d(this.ePv) != null)
      RemindDialog.d(this.ePv).setMessage(localStringBuffer);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.ui.e
 * JD-Core Version:    0.6.2
 */