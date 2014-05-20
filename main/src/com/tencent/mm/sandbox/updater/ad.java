package com.tencent.mm.sandbox.updater;

import android.content.Context;
import com.tencent.mm.c.a.ht;
import com.tencent.mm.c.a.hu;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;

public final class ad extends g
{
  public final boolean a(e parame)
  {
    if (!(parame instanceof ht));
    ht localht;
    Updater localUpdater;
    do
    {
      return false;
      localht = (ht)parame;
      Context localContext = localht.bRo.context;
      localUpdater = Updater.a(localContext, null);
    }
    while (localUpdater == null);
    int i = localht.bRo.type;
    new ae(this, localht);
    localUpdater.lA(i);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sandbox.updater.ad
 * JD-Core Version:    0.6.2
 */