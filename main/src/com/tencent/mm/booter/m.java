package com.tencent.mm.booter;

import android.media.MediaPlayer;
import com.tencent.mm.compatible.g.c;
import com.tencent.mm.sdk.platformtools.aa;

final class m
  implements c
{
  m(k paramk)
  {
  }

  public final void bq(int paramInt)
  {
    switch (paramInt)
    {
    case 0:
    default:
      aa.v("MicroMsg.DownloadPlayer", "UNKNOW_AUDIOFOCUS_LOSS");
    case 1:
    case -1:
    case -2:
    case -3:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            aa.v("MicroMsg.DownloadPlayer", "AUDIOFOCUS_GAIN");
          }
          while ((k.a(this.bZX) == null) || (!k.i(this.bZX)));
          this.bZX.resume();
          k.b(this.bZX, false);
          return;
          aa.v("MicroMsg.DownloadPlayer", "AUDIOFOCUS_LOSS");
          if (k.j(this.bZX))
          {
            aa.v("MicroMsg.DownloadPlayer", "startBySelfPlayer");
            k.k(this.bZX);
            return;
          }
        }
        while ((k.a(this.bZX) == null) || (!k.a(this.bZX).isPlaying()));
        k.b(this.bZX, true);
        aa.v("MicroMsg.DownloadPlayer", "mediaPlayer pause");
        this.bZX.pause();
        return;
        aa.v("MicroMsg.DownloadPlayer", "AUDIOFOCUS_LOSS_TRANSIENT");
      }
      while ((k.a(this.bZX) == null) || (!k.a(this.bZX).isPlaying()));
      k.b(this.bZX, true);
      this.bZX.pause();
      return;
      aa.v("MicroMsg.DownloadPlayer", "AUDIOFOCUS_LOSS_TRANSIENT");
    }
    while ((k.a(this.bZX) == null) || (!k.a(this.bZX).isPlaying()));
    k.b(this.bZX, true);
    this.bZX.pause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.m
 * JD-Core Version:    0.6.2
 */