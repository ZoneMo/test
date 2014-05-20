package com.tencent.mm.booter;

import com.tencent.mm.sdk.platformtools.ai;

final class e
  implements ai
{
  e(CoreService paramCoreService)
  {
  }

  public final void cancel()
  {
    MMReceivers.AlarmReceiver.B(this.bZw.getApplicationContext());
  }

  public final void prepare()
  {
    MMReceivers.AlarmReceiver.A(this.bZw.getApplicationContext());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.e
 * JD-Core Version:    0.6.2
 */