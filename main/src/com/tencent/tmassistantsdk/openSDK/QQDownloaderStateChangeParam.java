package com.tencent.tmassistantsdk.openSDK;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class QQDownloaderStateChangeParam
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new QQDownloaderStateChangeParam.1();
  public int errorCode;
  public String errorMsg;
  public String hostPackageName;
  public String hostVersion;
  public QQDownloaderParam param;
  public int state;
  public String taskId;

  public QQDownloaderStateChangeParam()
  {
  }

  public QQDownloaderStateChangeParam(QQDownloaderParam paramQQDownloaderParam, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, String paramString4)
  {
    this.param = paramQQDownloaderParam;
    this.hostPackageName = paramString1;
    this.hostVersion = paramString2;
    this.taskId = paramString3;
    this.state = paramInt1;
    this.errorCode = paramInt2;
    this.errorMsg = paramString4;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.param != null)
    {
      paramParcel.writeParcelable(this.param, paramInt);
      if (this.hostPackageName == null)
        break label102;
      paramParcel.writeString(this.hostPackageName);
      label31: if (this.hostVersion == null)
        break label111;
      paramParcel.writeString(this.hostVersion);
      label46: if (this.taskId == null)
        break label120;
      paramParcel.writeString(this.taskId);
    }
    while (true)
    {
      paramParcel.writeInt(this.state);
      paramParcel.writeInt(this.errorCode);
      if (this.errorMsg == null)
        break label129;
      paramParcel.writeString(this.errorMsg);
      return;
      paramParcel.writeParcelable(null, paramInt);
      break;
      label102: paramParcel.writeString("");
      break label31;
      label111: paramParcel.writeString("");
      break label46;
      label120: paramParcel.writeString("");
    }
    label129: paramParcel.writeString("");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderStateChangeParam
 * JD-Core Version:    0.6.2
 */