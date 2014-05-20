package com.tencent.mm.m;

import com.tencent.mm.ap.i;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import java.util.List;

final class ae
  implements az
{
  private Runnable clu;

  protected final void c(Runnable paramRunnable)
  {
    this.clu = paramRunnable;
  }

  public final boolean ok()
  {
    int i = ac.wh().size();
    aa.e("MicroMsg.RemoveAvatarTask", "RemoveOldAvatar left count:" + i);
    if ((i <= 2000) || (ac.wi() >= 300))
    {
      if (this.clu != null)
        this.clu.run();
      ac.wj();
      return false;
    }
    long l = be.uz().sp().ca(Thread.currentThread().getId());
    for (int j = i - 1; j >= i - 30; j--)
    {
      ac.wk();
      String str = (String)ac.wh().get(j);
      ac.wh().remove(j);
      af.vJ().i(str, false);
      af.vJ().i(str, true);
      af.wm().er(str);
    }
    be.uz().sp().cb(l);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.ae
 * JD-Core Version:    0.6.2
 */