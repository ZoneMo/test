package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import java.util.Arrays;

public final class ParticipantEntity extends bq
  implements Participant
{
  public static final d Li = new c();
  private final int KH;
  private final String KJ;
  private final Uri KO;
  private final Uri KP;
  private final String Lj;
  private final int Lk;
  private final String Ll;
  private final boolean Lm;
  private final PlayerEntity Ln;
  private final int Lo;

  ParticipantEntity(int paramInt1, String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, int paramInt2, String paramString3, boolean paramBoolean, PlayerEntity paramPlayerEntity, int paramInt3)
  {
    this.KH = paramInt1;
    this.Lj = paramString1;
    this.KJ = paramString2;
    this.KO = paramUri1;
    this.KP = paramUri2;
    this.Lk = paramInt2;
    this.Ll = paramString3;
    this.Lm = paramBoolean;
    this.Ln = paramPlayerEntity;
    this.Lo = paramInt3;
  }

  public ParticipantEntity(Participant paramParticipant)
  {
    this.KH = 1;
    this.Lj = paramParticipant.hV();
    this.KJ = paramParticipant.getDisplayName();
    this.KO = paramParticipant.hy();
    this.KP = paramParticipant.hz();
    this.Lk = paramParticipant.getStatus();
    this.Ll = paramParticipant.hS();
    this.Lm = paramParticipant.hU();
    Player localPlayer = paramParticipant.hW();
    if (localPlayer == null);
    for (PlayerEntity localPlayerEntity = null; ; localPlayerEntity = new PlayerEntity(localPlayer))
    {
      this.Ln = localPlayerEntity;
      this.Lo = paramParticipant.hT();
      return;
    }
  }

  public static int a(Participant paramParticipant)
  {
    Object[] arrayOfObject = new Object[8];
    arrayOfObject[0] = paramParticipant.hW();
    arrayOfObject[1] = Integer.valueOf(paramParticipant.getStatus());
    arrayOfObject[2] = paramParticipant.hS();
    arrayOfObject[3] = Boolean.valueOf(paramParticipant.hU());
    arrayOfObject[4] = paramParticipant.getDisplayName();
    arrayOfObject[5] = paramParticipant.hy();
    arrayOfObject[6] = paramParticipant.hz();
    arrayOfObject[7] = Integer.valueOf(paramParticipant.hT());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Participant paramParticipant, Object paramObject)
  {
    if (!(paramObject instanceof Participant));
    Participant localParticipant;
    do
    {
      return false;
      if (paramParticipant == paramObject)
        return true;
      localParticipant = (Participant)paramObject;
    }
    while ((!g.b(localParticipant.hW(), paramParticipant.hW())) || (!g.b(Integer.valueOf(localParticipant.getStatus()), Integer.valueOf(paramParticipant.getStatus()))) || (!g.b(localParticipant.hS(), paramParticipant.hS())) || (!g.b(Boolean.valueOf(localParticipant.hU()), Boolean.valueOf(paramParticipant.hU()))) || (!g.b(localParticipant.getDisplayName(), paramParticipant.getDisplayName())) || (!g.b(localParticipant.hy(), paramParticipant.hy())) || (!g.b(localParticipant.hz(), paramParticipant.hz())) || (!g.b(Integer.valueOf(localParticipant.hT()), Integer.valueOf(paramParticipant.hT()))));
    return true;
  }

  public static String b(Participant paramParticipant)
  {
    return g.L(paramParticipant).a("Player", paramParticipant.hW()).a("Status", Integer.valueOf(paramParticipant.getStatus())).a("ClientAddress", paramParticipant.hS()).a("ConnectedToRoom", Boolean.valueOf(paramParticipant.hU())).a("DisplayName", paramParticipant.getDisplayName()).a("IconImage", paramParticipant.hy()).a("HiResImage", paramParticipant.hz()).a("Capabilities", Integer.valueOf(paramParticipant.hT())).toString();
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
    if (this.Ln == null)
      return this.KJ;
    return this.Ln.getDisplayName();
  }

  public final int getStatus()
  {
    return this.Lk;
  }

  public final int hH()
  {
    return this.KH;
  }

  public final String hS()
  {
    return this.Ll;
  }

  public final int hT()
  {
    return this.Lo;
  }

  public final boolean hU()
  {
    return this.Lm;
  }

  public final String hV()
  {
    return this.Lj;
  }

  public final Player hW()
  {
    return this.Ln;
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final Uri hy()
  {
    if (this.Ln == null)
      return this.KO;
    return this.Ln.hy();
  }

  public final Uri hz()
  {
    if (this.Ln == null)
      return this.KP;
    return this.Ln.hz();
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
    paramParcel.writeString(this.Lj);
    paramParcel.writeString(this.KJ);
    String str1;
    label39: String str2;
    label58: int i;
    label90: int j;
    if (this.KO == null)
    {
      str1 = null;
      paramParcel.writeString(str1);
      Uri localUri = this.KP;
      str2 = null;
      if (localUri != null)
        break label144;
      paramParcel.writeString(str2);
      paramParcel.writeInt(this.Lk);
      paramParcel.writeString(this.Ll);
      if (!this.Lm)
        break label156;
      i = 1;
      paramParcel.writeInt(i);
      PlayerEntity localPlayerEntity = this.Ln;
      j = 0;
      if (localPlayerEntity != null)
        break label162;
    }
    while (true)
    {
      paramParcel.writeInt(j);
      if (this.Ln == null)
        break;
      this.Ln.writeToParcel(paramParcel, paramInt);
      return;
      str1 = this.KO.toString();
      break label39;
      label144: str2 = this.KP.toString();
      break label58;
      label156: i = 0;
      break label90;
      label162: j = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantEntity
 * JD-Core Version:    0.6.2
 */