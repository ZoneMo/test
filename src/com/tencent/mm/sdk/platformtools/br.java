package com.tencent.mm.sdk.platformtools;

import android.content.res.AssetFileDescriptor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class br
  implements MediaPlayer.OnCompletionListener
{
  br(String paramString, AssetFileDescriptor paramAssetFileDescriptor, bs parambs)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    int i = -1;
    Object[] arrayOfObject1 = new Object[2];
    int j;
    if (paramMediaPlayer == null)
      j = i;
    Object[] arrayOfObject2;
    while (true)
    {
      arrayOfObject1[0] = Integer.valueOf(j);
      arrayOfObject1[1] = this.dRp;
      aa.d("MicroMsg.PlaySound", "play completion mp:%d  path:%s", arrayOfObject1);
      try
      {
        this.geH.close();
        if (paramMediaPlayer != null)
          paramMediaPlayer.release();
        if (this.geI != null)
          this.geI.wE();
        return;
        j = paramMediaPlayer.hashCode();
      }
      catch (Exception localException)
      {
        arrayOfObject2 = new Object[3];
        if (paramMediaPlayer != null);
      }
    }
    while (true)
    {
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = this.dRp;
      arrayOfObject2[2] = localException.getMessage();
      aa.b("MicroMsg.PlaySound", "play mp:%d fd close failed path:%s e:%s", arrayOfObject2);
      break;
      i = paramMediaPlayer.hashCode();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.br
 * JD-Core Version:    0.6.2
 */