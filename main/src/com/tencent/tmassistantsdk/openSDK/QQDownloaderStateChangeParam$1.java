package com.tencent.tmassistantsdk.openSDK;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class QQDownloaderStateChangeParam$1
  implements Parcelable.Creator
{
  public final QQDownloaderStateChangeParam createFromParcel(Parcel paramParcel)
  {
    return new QQDownloaderStateChangeParam((QQDownloaderParam)paramParcel.readParcelable(QQDownloaderParam.class.getClassLoader()), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), paramParcel.readInt(), paramParcel.readString());
  }

  public final QQDownloaderStateChangeParam[] newArray(int paramInt)
  {
    return new QQDownloaderStateChangeParam[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderStateChangeParam.1
 * JD-Core Version:    0.6.2
 */