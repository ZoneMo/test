package com.google.android.gms.games;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import java.util.Arrays;

public final class PlayerEntity extends bq
  implements Player
{
  public static final d KX = new c();
  private final int KH;
  private final String KJ;
  private final Uri KO;
  private final Uri KP;
  private final String KY;
  private final long KZ;

  PlayerEntity(int paramInt, String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, long paramLong)
  {
    this.KH = paramInt;
    this.KY = paramString1;
    this.KJ = paramString2;
    this.KO = paramUri1;
    this.KP = paramUri2;
    this.KZ = paramLong;
  }

  public PlayerEntity(Player paramPlayer)
  {
    this.KH = i;
    this.KY = paramPlayer.hJ();
    this.KJ = paramPlayer.getDisplayName();
    this.KO = paramPlayer.hy();
    this.KP = paramPlayer.hz();
    this.KZ = paramPlayer.hK();
    cz.P(this.KY);
    cz.P(this.KJ);
    if (this.KZ > 0L);
    while (i == 0)
    {
      throw new IllegalStateException();
      i = 0;
    }
  }

  public static int a(Player paramPlayer)
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramPlayer.hJ();
    arrayOfObject[1] = paramPlayer.getDisplayName();
    arrayOfObject[2] = paramPlayer.hy();
    arrayOfObject[3] = paramPlayer.hz();
    arrayOfObject[4] = Long.valueOf(paramPlayer.hK());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Player paramPlayer, Object paramObject)
  {
    if (!(paramObject instanceof Player));
    Player localPlayer;
    do
    {
      return false;
      if (paramPlayer == paramObject)
        return true;
      localPlayer = (Player)paramObject;
    }
    while ((!g.b(localPlayer.hJ(), paramPlayer.hJ())) || (!g.b(localPlayer.getDisplayName(), paramPlayer.getDisplayName())) || (!g.b(localPlayer.hy(), paramPlayer.hy())) || (!g.b(localPlayer.hz(), paramPlayer.hz())) || (!g.b(Long.valueOf(localPlayer.hK()), Long.valueOf(paramPlayer.hK()))));
    return true;
  }

  public static String b(Player paramPlayer)
  {
    return g.L(paramPlayer).a("PlayerId", paramPlayer.hJ()).a("DisplayName", paramPlayer.getDisplayName()).a("IconImageUri", paramPlayer.hy()).a("HiResImageUri", paramPlayer.hz()).a("RetrievedTimestamp", Long.valueOf(paramPlayer.hK())).toString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final String getDisplayName()
  {
    return this.KJ;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final String hJ()
  {
    return this.KY;
  }

  public final long hK()
  {
    return this.KZ;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final Uri hy()
  {
    return this.KO;
  }

  public final Uri hz()
  {
    return this.KP;
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (!lg())
    {
      d.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeString(this.KY);
    paramParcel.writeString(this.KJ);
    String str1;
    String str2;
    if (this.KO == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      Uri localUri = this.KP;
      str2 = null;
      if (localUri != null)
        break label84;
    }
    while (true)
    {
      paramParcel.writeString(str2);
      paramParcel.writeLong(this.KZ);
      return;
      str1 = this.KO.toString();
      break;
      label84: str2 = this.KP.toString();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.PlayerEntity
 * JD-Core Version:    0.6.2
 */