package com.tencent.tmassistantsdk.protocol.jce;

import java.io.Serializable;

public final class JceCmd
  implements Serializable
{
  public static final JceCmd Empty;
  public static final JceCmd GetSettings;
  public static final JceCmd ReportLog;
  public static final int _Empty = 0;
  public static final int _GetSettings = 2;
  public static final int _ReportLog = 1;
  private static JceCmd[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!JceCmd.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new JceCmd[3];
      Empty = new JceCmd(0, 0, "Empty");
      ReportLog = new JceCmd(1, 1, "ReportLog");
      GetSettings = new JceCmd(2, 2, "GetSettings");
      return;
    }
  }

  private JceCmd(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static JceCmd convert(int paramInt)
  {
    for (int i = 0; i < __values.length; i++)
      if (__values[i].value() == paramInt)
        return __values[i];
    if (!$assertionsDisabled)
      throw new AssertionError();
    return null;
  }

  public static JceCmd convert(String paramString)
  {
    for (int i = 0; i < __values.length; i++)
      if (__values[i].toString().equals(paramString))
        return __values[i];
    if (!$assertionsDisabled)
      throw new AssertionError();
    return null;
  }

  public final String toString()
  {
    return this.__T;
  }

  public final int value()
  {
    return this.__value;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.jce.JceCmd
 * JD-Core Version:    0.6.2
 */