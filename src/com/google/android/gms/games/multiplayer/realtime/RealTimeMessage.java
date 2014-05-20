package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.internal.i;

public final class RealTimeMessage
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  private final String Lp;
  private final byte[] Lq;
  private final int Lr;

  private RealTimeMessage(Parcel paramParcel)
  {
    this(paramParcel.readString(), paramParcel.createByteArray(), paramParcel.readInt());
  }

  private RealTimeMessage(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    this.Lp = ((String)i.M(paramString));
    this.Lq = ((byte[])((byte[])i.M(paramArrayOfByte)).clone());
    this.Lr = paramInt;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.Lp);
    paramParcel.writeByteArray(this.Lq);
    paramParcel.writeInt(this.Lr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RealTimeMessage
 * JD-Core Version:    0.6.2
 */