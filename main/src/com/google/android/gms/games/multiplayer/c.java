package com.google.android.gms.games.multiplayer;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.games.PlayerEntity;

final class c extends d
{
  public final ParticipantEntity d(Parcel paramParcel)
  {
    if ((ParticipantEntity.a(ParticipantEntity.hI())) || (ParticipantEntity.S(ParticipantEntity.class.getCanonicalName())))
      return super.d(paramParcel);
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    String str3 = paramParcel.readString();
    Uri localUri1;
    String str4;
    Uri localUri2;
    label64: int i;
    String str5;
    boolean bool;
    if (str3 == null)
    {
      localUri1 = null;
      str4 = paramParcel.readString();
      if (str4 != null)
        break label152;
      localUri2 = null;
      i = paramParcel.readInt();
      str5 = paramParcel.readString();
      if (paramParcel.readInt() <= 0)
        break label162;
      bool = true;
      label86: int j = paramParcel.readInt();
      int k = 0;
      if (j > 0)
        k = 1;
      if (k == 0)
        break label168;
    }
    label152: label162: label168: for (PlayerEntity localPlayerEntity = PlayerEntity.KX.b(paramParcel); ; localPlayerEntity = null)
    {
      return new ParticipantEntity(1, str1, str2, localUri1, localUri2, i, str5, bool, localPlayerEntity, 7);
      localUri1 = Uri.parse(str3);
      break;
      localUri2 = Uri.parse(str4);
      break label64;
      bool = false;
      break label86;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.c
 * JD-Core Version:    0.6.2
 */