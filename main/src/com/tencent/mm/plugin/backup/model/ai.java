package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.protocal.a.ae;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import java.util.LinkedList;

public final class ai
  implements y
{
  public final int a(ae paramae, boolean paramBoolean, ak paramak, LinkedList paramLinkedList)
  {
    if (paramak.getContent() == null)
      return 0;
    return paramak.getContent().getBytes().length;
  }

  public final int a(String paramString, ae paramae, ak paramak)
  {
    String str = new String(paramae.fzv.getString());
    ap localap = d.Gj().sw();
    paramak.setContent(str);
    switch (paramae.dGR)
    {
    default:
      if (paramak.Bo() == 0L)
        a.d(paramak);
      break;
    case 50:
    }
    while (true)
    {
      return 0;
      paramak.setStatus(6);
      break;
      localap.a(paramae.fzo, paramak);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ai
 * JD-Core Version:    0.6.2
 */