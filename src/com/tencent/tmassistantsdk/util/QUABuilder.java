package com.tencent.tmassistantsdk.util;

import android.text.TextUtils;

public final class QUABuilder
{
  private String mAdrRelease;
  private String mBuildNo;
  private String mChannel;
  private String mChannelId;
  private int mDeviceHeight;
  private int mDeviceWidth;
  private int mRootStatus;
  private String mUA;
  private String mVersionName;

  private String getAppSpec()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("0");
    localStringBuffer.append(this.mVersionName.subSequence(0, 1));
    localStringBuffer.append(this.mBuildNo);
    return localStringBuffer.toString();
  }

  public final String get()
  {
    String str = getAppSpec();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("TMASDK_");
    localStringBuffer.append(this.mVersionName);
    if (!TextUtils.isEmpty(this.mChannel))
    {
      localStringBuffer.append("_");
      localStringBuffer.append(this.mChannel);
    }
    localStringBuffer.append("/");
    localStringBuffer.append(str);
    localStringBuffer.append("&NA/");
    localStringBuffer.append(str);
    localStringBuffer.append("&");
    localStringBuffer.append(this.mAdrRelease);
    localStringBuffer.append("_");
    localStringBuffer.append(this.mRootStatus);
    localStringBuffer.append("&");
    localStringBuffer.append(this.mDeviceWidth / 16);
    localStringBuffer.append("_");
    localStringBuffer.append(this.mDeviceHeight / 16);
    localStringBuffer.append("_");
    localStringBuffer.append("14&");
    localStringBuffer.append(this.mUA);
    localStringBuffer.append("&");
    localStringBuffer.append(this.mChannelId);
    localStringBuffer.append("&");
    localStringBuffer.append("NA");
    localStringBuffer.append("&");
    localStringBuffer.append("V3");
    return localStringBuffer.toString();
  }

  public final void setAdrRelease(String paramString)
  {
    this.mAdrRelease = paramString;
  }

  public final void setBuildNo(String paramString)
  {
    this.mBuildNo = paramString;
  }

  public final void setChannel(String paramString)
  {
    this.mChannel = paramString;
  }

  public final void setChannelId(String paramString)
  {
    this.mChannelId = paramString;
  }

  public final void setDeviceHeight(int paramInt)
  {
    this.mDeviceHeight = paramInt;
  }

  public final void setDeviceWidth(int paramInt)
  {
    this.mDeviceWidth = paramInt;
  }

  public final void setRootStatus(int paramInt)
  {
    this.mRootStatus = paramInt;
  }

  public final void setUA(String paramString)
  {
    this.mUA = paramString;
  }

  public final void setVersionName(String paramString)
  {
    this.mVersionName = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.util.QUABuilder
 * JD-Core Version:    0.6.2
 */