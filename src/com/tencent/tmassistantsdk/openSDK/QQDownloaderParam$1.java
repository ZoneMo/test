package com.tencent.tmassistantsdk.openSDK;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class QQDownloaderParam$1
  implements Parcelable.Creator
{
  public final QQDownloaderParam createFromParcel(Parcel paramParcel)
  {
    return new QQDownloaderParam(paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString());
  }

  public final QQDownloaderParam[] newArray(int paramInt)
  {
    return new QQDownloaderParam[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderParam.1
 * JD-Core Version:    0.6.2
 */