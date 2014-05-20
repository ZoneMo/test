package com.tencent.tmassistantsdk.downloadclient;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class TMAssistantDownloadTaskInfo$1
  implements Parcelable.Creator
{
  public final TMAssistantDownloadTaskInfo createFromParcel(Parcel paramParcel)
  {
    return new TMAssistantDownloadTaskInfo(paramParcel.readString(), paramParcel.readString(), paramParcel.readInt(), paramParcel.readLong(), paramParcel.readLong(), paramParcel.readString());
  }

  public final TMAssistantDownloadTaskInfo[] newArray(int paramInt)
  {
    return new TMAssistantDownloadTaskInfo[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadclient.TMAssistantDownloadTaskInfo.1
 * JD-Core Version:    0.6.2
 */