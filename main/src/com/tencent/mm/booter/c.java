package com.tencent.mm.booter;

import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements com.tencent.mm.compatible.g.c
{
  c(a parama)
  {
  }

  public final void bq(int paramInt)
  {
    switch (paramInt)
    {
    case 0:
    default:
      aa.v("MicroMsg.BackgroundPlayer", "UNKNOW_AUDIOFOCUS_LOSS");
    case 1:
      do
      {
        return;
        aa.v("MicroMsg.BackgroundPlayer", "AUDIOFOCUS_GAIN");
      }
      while (!a.b(this.bZk));
      a.b(this.bZk, false);
      this.bZk.oi();
      return;
    case -1:
      aa.v("MicroMsg.BackgroundPlayer", "AUDIOFOCUS_LOSS");
      a.b(this.bZk, true);
      this.bZk.oh();
      return;
    case -2:
      aa.v("MicroMsg.BackgroundPlayer", "AUDIOFOCUS_LOSS_TRANSIENT");
      a.b(this.bZk, true);
      this.bZk.oh();
      return;
    case -3:
    }
    aa.v("MicroMsg.BackgroundPlayer", "AUDIOFOCUS_LOSS_TRANSIENT");
    a.b(this.bZk, true);
    this.bZk.oh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.c
 * JD-Core Version:    0.6.2
 */