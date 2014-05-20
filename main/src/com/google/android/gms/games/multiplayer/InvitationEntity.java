package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.bq;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
import java.util.ArrayList;
import java.util.Arrays;

public final class InvitationEntity extends bq
  implements Invitation
{
  public static final b La = new a();
  private final int KH;
  private final GameEntity Lb;
  private final String Lc;
  private final long Ld;
  private final int Le;
  private final ParticipantEntity Lf;
  private final ArrayList Lg;
  private final int Lh;

  InvitationEntity(int paramInt1, GameEntity paramGameEntity, String paramString, long paramLong, int paramInt2, ParticipantEntity paramParticipantEntity, ArrayList paramArrayList, int paramInt3)
  {
    this.KH = paramInt1;
    this.Lb = paramGameEntity;
    this.Lc = paramString;
    this.Ld = paramLong;
    this.Le = paramInt2;
    this.Lf = paramParticipantEntity;
    this.Lg = paramArrayList;
    this.Lh = paramInt3;
  }

  public InvitationEntity(Invitation paramInvitation)
  {
    this.KH = 1;
    this.Lb = new GameEntity(paramInvitation.hL());
    this.Lc = paramInvitation.hM();
    this.Ld = paramInvitation.hO();
    this.Le = paramInvitation.hP();
    this.Lh = paramInvitation.hQ();
    String str = paramInvitation.hN().hV();
    Object localObject = null;
    ArrayList localArrayList = paramInvitation.hR();
    int i = localArrayList.size();
    this.Lg = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      Participant localParticipant = (Participant)localArrayList.get(j);
      if (localParticipant.hV().equals(str))
        localObject = localParticipant;
      this.Lg.add((ParticipantEntity)localParticipant.hr());
    }
    i.c(localObject, "Must have a valid inviter!");
    this.Lf = ((ParticipantEntity)localObject.hr());
  }

  public static int a(Invitation paramInvitation)
  {
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = paramInvitation.hL();
    arrayOfObject[1] = paramInvitation.hM();
    arrayOfObject[2] = Long.valueOf(paramInvitation.hO());
    arrayOfObject[3] = Integer.valueOf(paramInvitation.hP());
    arrayOfObject[4] = paramInvitation.hN();
    arrayOfObject[5] = paramInvitation.hR();
    arrayOfObject[6] = Integer.valueOf(paramInvitation.hQ());
    return Arrays.hashCode(arrayOfObject);
  }

  public static boolean a(Invitation paramInvitation, Object paramObject)
  {
    if (!(paramObject instanceof Invitation));
    Invitation localInvitation;
    do
    {
      return false;
      if (paramInvitation == paramObject)
        return true;
      localInvitation = (Invitation)paramObject;
    }
    while ((!g.b(localInvitation.hL(), paramInvitation.hL())) || (!g.b(localInvitation.hM(), paramInvitation.hM())) || (!g.b(Long.valueOf(localInvitation.hO()), Long.valueOf(paramInvitation.hO()))) || (!g.b(Integer.valueOf(localInvitation.hP()), Integer.valueOf(paramInvitation.hP()))) || (!g.b(localInvitation.hN(), paramInvitation.hN())) || (!g.b(localInvitation.hR(), paramInvitation.hR())) || (!g.b(Integer.valueOf(localInvitation.hQ()), Integer.valueOf(paramInvitation.hQ()))));
    return true;
  }

  public static String b(Invitation paramInvitation)
  {
    return g.L(paramInvitation).a("Game", paramInvitation.hL()).a("InvitationId", paramInvitation.hM()).a("CreationTimestamp", Long.valueOf(paramInvitation.hO())).a("InvitationType", Integer.valueOf(paramInvitation.hP())).a("Inviter", paramInvitation.hN()).a("Participants", paramInvitation.hR()).a("Variant", Integer.valueOf(paramInvitation.hQ())).toString();
  }

  public final int describeContents()
  {
    return 0;
  }

  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }

  public final int hH()
  {
    return this.KH;
  }

  public final Game hL()
  {
    return this.Lb;
  }

  public final String hM()
  {
    return this.Lc;
  }

  public final Participant hN()
  {
    return this.Lf;
  }

  public final long hO()
  {
    return this.Ld;
  }

  public final int hP()
  {
    return this.Le;
  }

  public final int hQ()
  {
    return this.Lh;
  }

  public final ArrayList hR()
  {
    return new ArrayList(this.Lg);
  }

  public final int hashCode()
  {
    return a(this);
  }

  public final String toString()
  {
    return b(this);
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (!lg())
      b.a(this, paramParcel, paramInt);
    while (true)
    {
      return;
      this.Lb.writeToParcel(paramParcel, paramInt);
      paramParcel.writeString(this.Lc);
      paramParcel.writeLong(this.Ld);
      paramParcel.writeInt(this.Le);
      this.Lf.writeToParcel(paramParcel, paramInt);
      int i = this.Lg.size();
      paramParcel.writeInt(i);
      for (int j = 0; j < i; j++)
        ((ParticipantEntity)this.Lg.get(j)).writeToParcel(paramParcel, paramInt);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.InvitationEntity
 * JD-Core Version:    0.6.2
 */