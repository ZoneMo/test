package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.MediaPlayer;

public final class bq
{
  public static void a(Context paramContext, int paramInt, bs parambs)
  {
    a(paramContext, paramInt, bt.geK, parambs);
  }

  private static void a(Context paramContext, int paramInt, bt parambt, bs parambs)
  {
    if ((paramContext == null) || (parambt == null))
    {
      Object[] arrayOfObject1 = new Object[5];
      arrayOfObject1[0] = paramContext;
      arrayOfObject1[1] = Integer.valueOf(paramInt);
      arrayOfObject1[2] = parambt;
      arrayOfObject1[3] = Boolean.valueOf(false);
      arrayOfObject1[4] = parambs;
      aa.b("MicroMsg.PlaySound", "play Err context:%s pathId:%d speekeron:%s looping:%b listener:%s", arrayOfObject1);
      return;
    }
    String str = paramContext.getString(paramInt);
    MediaPlayer localMediaPlayer = new MediaPlayer();
    if (parambt != bt.geJ)
      if (parambt != bt.geK)
        break label261;
    label261: for (int i = 3; ; i = 0)
    {
      localMediaPlayer.setAudioStreamType(i);
      Object[] arrayOfObject2 = new Object[7];
      arrayOfObject2[0] = Integer.valueOf(localMediaPlayer.hashCode());
      arrayOfObject2[1] = str;
      arrayOfObject2[2] = paramContext;
      arrayOfObject2[3] = Integer.valueOf(paramInt);
      arrayOfObject2[4] = parambt;
      arrayOfObject2[5] = Boolean.valueOf(false);
      arrayOfObject2[6] = parambs;
      aa.d("MicroMsg.PlaySound", "play start mp:%d path:%s context:%s pathId:%d speekeron:%s looping:%b listener:%s ", arrayOfObject2);
      try
      {
        AssetFileDescriptor localAssetFileDescriptor = paramContext.getAssets().openFd(str);
        localMediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
        localMediaPlayer.prepare();
        localMediaPlayer.setLooping(false);
        localMediaPlayer.start();
        localMediaPlayer.setOnCompletionListener(new br(str, localAssetFileDescriptor, parambs));
        return;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(paramInt);
        arrayOfObject3[1] = localException.getMessage();
        aa.b("MicroMsg.PlaySound", "play failed pathId:%d e:%s", arrayOfObject3);
        return;
      }
    }
  }

  public static void a(Context paramContext, int paramInt, boolean paramBoolean, bs parambs)
  {
    if (paramBoolean);
    for (bt localbt = bt.geK; ; localbt = bt.geL)
    {
      a(paramContext, paramInt, localbt, parambs);
      return;
    }
  }

  public static void b(Context paramContext, int paramInt, bs parambs)
  {
    a(paramContext, paramInt, bt.geJ, parambs);
  }

  public static void q(Context paramContext, int paramInt)
  {
    a(paramContext, paramInt, bt.geJ, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.bq
 * JD-Core Version:    0.6.2
 */