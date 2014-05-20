package com.tencent.tmassistantsdk.downloadclient;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TMAssistantDownloadTaskInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new TMAssistantDownloadTaskInfo.1();
  protected String mContentType;
  protected long mReceiveDataLen;
  protected String mSavePath;
  protected int mState;
  protected long mTotalDataLen;
  protected String mUrl;

  public TMAssistantDownloadTaskInfo(String paramString1, String paramString2, int paramInt, long paramLong1, long paramLong2, String paramString3)
  {
    this.mUrl = paramString1;
    this.mSavePath = paramString2;
    this.mState = paramInt;
    this.mReceiveDataLen = paramLong1;
    this.mTotalDataLen = paramLong2;
    this.mContentType = paramString3;
  }

  public int describeContents()
  {
    return 0;
  }

  public String getContentType()
  {
    return this.mContentType;
  }

  public long getReceiveDataLen()
  {
    return this.mReceiveDataLen;
  }

  public String getSavePath()
  {
    return this.mSavePath;
  }

  public int getState()
  {
    return this.mState;
  }

  public long getTotalDataLen()
  {
    return this.mTotalDataLen;
  }

  public String getUrl()
  {
    return this.mUrl;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.mUrl != null)
    {
      paramParcel.writeString(this.mUrl);
      if (this.mSavePath == null)
        break label72;
      paramParcel.writeString(this.mSavePath);
    }
    while (true)
    {
      paramParcel.writeInt(this.mState);
      paramParcel.writeLong(this.mReceiveDataLen);
      paramParcel.writeLong(this.mTotalDataLen);
      paramParcel.writeString(this.mContentType);
      return;
      paramParcel.writeString("");
      break;
      label72: paramParcel.writeString("");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.downloadclient.TMAssistantDownloadTaskInfo
 * JD-Core Version:    0.6.2
 */