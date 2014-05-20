package com.tencent.mm.ac;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import java.util.LinkedList;
import java.util.Queue;

public final class d
  implements j, m
{
  private Queue cwA = null;
  private boolean cwB = false;

  private void BR()
  {
    if (this.cwB);
    String str;
    do
    {
      do
        return;
      while (this.cwA.size() == 0);
      e locale = (e)this.cwA.peek();
      if (locale.cwD.size() == 0)
      {
        this.cwA.poll();
        be.uz().sr().set(8193, locale.cwC);
        be.uz().sr().set(8449, Long.valueOf(cj.FC()));
        return;
      }
      str = (String)locale.cwD.peek();
    }
    while ((str == null) || (str.length() <= 0));
    this.cwB = true;
    a locala = new a(str);
    be.uA().a(141, this);
    be.uA().d(locala);
  }

  public final k a(l paraml)
  {
    String str = an.a(paraml.fzv);
    if (this.cwA == null)
      this.cwA = new LinkedList();
    e locale = new e(str);
    if (locale.cwC != null)
    {
      this.cwA.offer(locale);
      BR();
    }
    return null;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 141)
    {
      this.cwB = false;
      return;
    }
    be.uA().b(141, this);
    String str = ((a)paramx).getUrl();
    e locale = (e)this.cwA.peek();
    if ((locale == null) || (locale.cwD.size() == 0))
    {
      aa.e("MicroMsg.PushMessageExtension", "getDoSceneQueue failed ! reset queue!");
      this.cwA = new LinkedList();
      this.cwB = false;
      return;
    }
    if (locale.cwD.size() == 0)
    {
      aa.e("MicroMsg.PushMessageExtension", "get imgQueue failed ! ignore this message");
      this.cwA.poll();
      this.cwB = false;
      return;
    }
    if (!((String)locale.cwD.peek()).equals(str))
    {
      aa.e("MicroMsg.PushMessageExtension", "check img url failed ! ignore this message");
      this.cwA.poll();
      this.cwB = false;
      return;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
    {
      aa.e("MicroMsg.PushMessageExtension", "down failed [" + paramInt1 + "," + paramInt2 + "] ignore this message : img:[" + str + "] ");
      this.cwA.poll();
      this.cwB = false;
      return;
    }
    locale.cwD.poll();
    this.cwB = false;
    BR();
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ac.d
 * JD-Core Version:    0.6.2
 */