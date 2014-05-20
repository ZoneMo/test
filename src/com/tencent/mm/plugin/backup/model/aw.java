package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.platformtools.aa;

public final class aw
{
  private long cLj = -1L;
  boolean cLk = false;
  private long cjN = 0L;

  public final void HA()
  {
    long l = System.currentTimeMillis();
    if (l - this.cjN > 10000L)
    {
      end();
      begin();
      this.cjN = l;
    }
  }

  public final void begin()
  {
    aa.d("MicroMsg.Recoverfaster", "begin");
    if (d.Gj().sp() != null)
    {
      this.cLj = d.Gj().sp().ca(Thread.currentThread().getId());
      this.cLk = true;
    }
    this.cjN = System.currentTimeMillis();
  }

  public final void end()
  {
    if ((this.cLk) && (d.Gj().sp() != null))
    {
      d.Gj().sp().cb(this.cLj);
      this.cLk = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.aw
 * JD-Core Version:    0.6.2
 */