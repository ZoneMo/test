package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;
import java.util.ArrayList;

public class b
  implements Parcelable.Creator
{
  static void a(InvitationEntity paramInvitationEntity, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramInvitationEntity.hL(), paramInt, false);
    q.c(paramParcel, 1000, paramInvitationEntity.hH());
    q.a(paramParcel, 2, paramInvitationEntity.hM(), false);
    q.a(paramParcel, 3, paramInvitationEntity.hO());
    q.c(paramParcel, 4, paramInvitationEntity.hP());
    q.a(paramParcel, 5, paramInvitationEntity.hN(), paramInt, false);
    q.a(paramParcel, 6, paramInvitationEntity.hR(), false);
    q.c(paramParcel, 7, paramInvitationEntity.hQ());
    q.v(paramParcel, i);
  }

  public InvitationEntity c(Parcel paramParcel)
  {
    int i = 0;
    ArrayList localArrayList = null;
    int j = o.f(paramParcel);
    long l = 0L;
    ParticipantEntity localParticipantEntity = null;
    int k = 0;
    String str = null;
    GameEntity localGameEntity = null;
    int m = 0;
    while (paramParcel.dataPosition() < j)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default:
        o.b(paramParcel, n);
        break;
      case 1:
        localGameEntity = (GameEntity)o.a(paramParcel, n, GameEntity.KG);
        break;
      case 1000:
        m = o.f(paramParcel, n);
        break;
      case 2:
        str = o.l(paramParcel, n);
        break;
      case 3:
        l = o.g(paramParcel, n);
        break;
      case 4:
        k = o.f(paramParcel, n);
        break;
      case 5:
        localParticipantEntity = (ParticipantEntity)o.a(paramParcel, n, ParticipantEntity.Li);
        break;
      case 6:
        localArrayList = o.b(paramParcel, n, ParticipantEntity.Li);
        break;
      case 7:
        i = o.f(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != j)
      throw new p("Overread allowed size end=" + j, paramParcel);
    return new InvitationEntity(m, localGameEntity, str, l, k, localParticipantEntity, localArrayList, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.b
 * JD-Core Version:    0.6.2
 */