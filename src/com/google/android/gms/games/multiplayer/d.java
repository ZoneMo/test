package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.p;
import com.google.android.gms.internal.q;

public class d
  implements Parcelable.Creator
{
  static void a(ParticipantEntity paramParticipantEntity, Parcel paramParcel, int paramInt)
  {
    int i = q.g(paramParcel);
    q.a(paramParcel, 1, paramParticipantEntity.hV(), false);
    q.c(paramParcel, 1000, paramParticipantEntity.hH());
    q.a(paramParcel, 2, paramParticipantEntity.getDisplayName(), false);
    q.a(paramParcel, 3, paramParticipantEntity.hy(), paramInt, false);
    q.a(paramParcel, 4, paramParticipantEntity.hz(), paramInt, false);
    q.c(paramParcel, 5, paramParticipantEntity.getStatus());
    q.a(paramParcel, 6, paramParticipantEntity.hS(), false);
    q.a(paramParcel, 7, paramParticipantEntity.hU());
    q.a(paramParcel, 8, paramParticipantEntity.hW(), paramInt, false);
    q.c(paramParcel, 9, paramParticipantEntity.hT());
    q.v(paramParcel, i);
  }

  public ParticipantEntity d(Parcel paramParcel)
  {
    int i = 0;
    PlayerEntity localPlayerEntity = null;
    int j = o.f(paramParcel);
    boolean bool = false;
    String str1 = null;
    int k = 0;
    Uri localUri1 = null;
    Uri localUri2 = null;
    String str2 = null;
    String str3 = null;
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
        str3 = o.l(paramParcel, n);
        break;
      case 1000:
        m = o.f(paramParcel, n);
        break;
      case 2:
        str2 = o.l(paramParcel, n);
        break;
      case 3:
        localUri2 = (Uri)o.a(paramParcel, n, Uri.CREATOR);
        break;
      case 4:
        localUri1 = (Uri)o.a(paramParcel, n, Uri.CREATOR);
        break;
      case 5:
        k = o.f(paramParcel, n);
        break;
      case 6:
        str1 = o.l(paramParcel, n);
        break;
      case 7:
        bool = o.c(paramParcel, n);
        break;
      case 8:
        localPlayerEntity = (PlayerEntity)o.a(paramParcel, n, PlayerEntity.KX);
        break;
      case 9:
        i = o.f(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != j)
      throw new p("Overread allowed size end=" + j, paramParcel);
    return new ParticipantEntity(m, str3, str2, localUri2, localUri1, k, str1, bool, localPlayerEntity, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.d
 * JD-Core Version:    0.6.2
 */