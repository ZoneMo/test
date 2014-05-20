package com.tencent.mm.compatible.h;

import android.content.Intent;
import com.tencent.mm.compatible.a.b;

final class d
  implements b
{
  d(Intent paramIntent)
  {
  }

  public final void run()
  {
    this.cfI.putExtra("android.intent.extra.durationLimit", 30);
    this.cfI.putExtra("android.intent.extra.sizeLimit", 10485760);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.h.d
 * JD-Core Version:    0.6.2
 */