package com.tencent.tmassistantsdk.protocol.jce;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GetSettingsRequest extends JceStruct
  implements Cloneable
{
  public String reserve = "";

  static
  {
    if (!GetSettingsRequest.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public GetSettingsRequest()
  {
  }

  public GetSettingsRequest(String paramString)
  {
    this.reserve = paramString;
  }

  public final String className()
  {
    return "jce.GetSettingsRequest";
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).display(this.reserve, "reserve");
  }

  public final void displaySimple(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).displaySimple(this.reserve, false);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null)
      return false;
    GetSettingsRequest localGetSettingsRequest = (GetSettingsRequest)paramObject;
    return JceUtil.equals(this.reserve, localGetSettingsRequest.reserve);
  }

  public final String fullClassName()
  {
    return "com.tencent.tmassistantsdk.protocol.jce.GetSettingsRequest";
  }

  public final String getReserve()
  {
    return this.reserve;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.reserve = paramJceInputStream.readString(0, false);
  }

  public final void setReserve(String paramString)
  {
    this.reserve = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.reserve != null)
      paramJceOutputStream.write(this.reserve, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.jce.GetSettingsRequest
 * JD-Core Version:    0.6.2
 */