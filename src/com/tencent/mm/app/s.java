package com.tencent.mm.app;

import android.content.Context;
import com.tencent.mm.booter.w;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.pointers.PString;
import com.tencent.mm.storage.ak;

final class s
  implements com.tencent.mm.storage.s
{
  s(WorkerProfile paramWorkerProfile)
  {
  }

  public final String a(int paramInt1, String paramString1, String paramString2, int paramInt2, Context paramContext)
  {
    return w.a(paramInt1, paramString1, paramString2, paramInt2, paramContext);
  }

  public final void a(ak paramak, PString paramPString1, PString paramPString2, PInt paramPInt)
  {
    w.b(paramak, paramPString1, paramPString2, paramPInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.s
 * JD-Core Version:    0.6.2
 */