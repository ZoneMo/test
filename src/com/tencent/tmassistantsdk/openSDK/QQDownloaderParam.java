package com.tencent.tmassistantsdk.openSDK;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class QQDownloaderParam
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new QQDownloaderParam.1();
  public String SNGAppId = "";
  public String channelId = "";
  public String taskApkId = "";
  public String taskAppId = "";
  public String taskPackageName = "";
  public int taskVersion = 0;
  public String uin = "";
  public String uinType = "";
  public String via = "";

  public QQDownloaderParam()
  {
  }

  public QQDownloaderParam(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    this.SNGAppId = paramString1;
    this.taskAppId = paramString2;
    this.taskApkId = paramString3;
    this.taskVersion = paramInt;
    this.via = paramString4;
    this.taskPackageName = paramString5;
    this.uin = paramString6;
    this.uinType = paramString7;
    this.channelId = paramString8;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.SNGAppId != null)
    {
      paramParcel.writeString(this.SNGAppId);
      if (this.taskAppId == null)
        break label141;
      paramParcel.writeString(this.taskAppId);
      label30: if (TextUtils.isEmpty(this.taskApkId))
        break label150;
      paramParcel.writeString(this.taskApkId);
      label48: paramParcel.writeInt(this.taskVersion);
      if (this.via == null)
        break label159;
      paramParcel.writeString(this.via);
      label71: if (this.taskPackageName == null)
        break label168;
      paramParcel.writeString(this.taskPackageName);
      label86: if (this.uin == null)
        break label177;
      paramParcel.writeString(this.uin);
      label101: if (this.uinType == null)
        break label186;
      paramParcel.writeString(this.uinType);
    }
    while (true)
    {
      if (this.channelId == null)
        break label195;
      paramParcel.writeString(this.channelId);
      return;
      paramParcel.writeString("");
      break;
      label141: paramParcel.writeString("");
      break label30;
      label150: paramParcel.writeString("");
      break label48;
      label159: paramParcel.writeString("");
      break label71;
      label168: paramParcel.writeString("");
      break label86;
      label177: paramParcel.writeString("");
      break label101;
      label186: paramParcel.writeString("");
    }
    label195: paramParcel.writeString("");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.openSDK.QQDownloaderParam
 * JD-Core Version:    0.6.2
 */