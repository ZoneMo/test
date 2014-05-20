package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.games.GameEntity;
import java.util.ArrayList;

final class a extends b
{
  public final InvitationEntity c(Parcel paramParcel)
  {
    if ((InvitationEntity.a(InvitationEntity.hI())) || (InvitationEntity.S(InvitationEntity.class.getCanonicalName())))
      return super.c(paramParcel);
    GameEntity localGameEntity = GameEntity.KG.a(paramParcel);
    String str = paramParcel.readString();
    long l = paramParcel.readLong();
    int i = paramParcel.readInt();
    ParticipantEntity localParticipantEntity = ParticipantEntity.Li.d(paramParcel);
    int j = paramParcel.readInt();
    ArrayList localArrayList = new ArrayList(j);
    for (int k = 0; k < j; k++)
      localArrayList.add(ParticipantEntity.Li.d(paramParcel));
    return new InvitationEntity(1, localGameEntity, str, l, i, localParticipantEntity, localArrayList, -1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.a
 * JD-Core Version:    0.6.2
 */