package com.tencent.tmassistantsdk.protocol.jce;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ReportLogResponse extends JceStruct
  implements Cloneable
{
  public int ret = 0;

  static
  {
    if (!ReportLogResponse.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReportLogResponse()
  {
  }

  public ReportLogResponse(int paramInt)
  {
    this.ret = paramInt;
  }

  public final String className()
  {
    return "jce.ReportLogResponse";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.ret, "ret");
  }

  public final void displaySimple(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).displaySimple(this.ret, false);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null)
      return false;
    ReportLogResponse localReportLogResponse = (ReportLogResponse)paramObject;
    return JceUtil.equals(this.ret, localReportLogResponse.ret);
  }

  public final String fullClassName()
  {
    return "com.tencent.tmassistantsdk.protocol.jce.ReportLogResponse";
  }

  public final int getRet()
  {
    return this.ret;
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
    this.ret = paramJceInputStream.read(this.ret, 0, true);
  }

  public final void setRet(int paramInt)
  {
    this.ret = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ret, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.jce.ReportLogResponse
 * JD-Core Version:    0.6.2
 */