package com.tencent.tmassistantsdk.protocol.jce;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SettingsCfg extends JceStruct
  implements Cloneable
{
  static byte[] cache_cfg;
  public byte[] cfg = null;
  public long revision = 0L;
  public byte type = 0;

  static
  {
    if (!SettingsCfg.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SettingsCfg()
  {
  }

  public SettingsCfg(byte paramByte, byte[] paramArrayOfByte, long paramLong)
  {
    this.type = paramByte;
    this.cfg = paramArrayOfByte;
    this.revision = paramLong;
  }

  public final String className()
  {
    return "jce.SettingsCfg";
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
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.cfg, "cfg");
    localJceDisplayer.display(this.revision, "revision");
  }

  public final void displaySimple(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.displaySimple(this.type, true);
    localJceDisplayer.displaySimple(this.cfg, true);
    localJceDisplayer.displaySimple(this.revision, false);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    SettingsCfg localSettingsCfg;
    do
    {
      return false;
      localSettingsCfg = (SettingsCfg)paramObject;
    }
    while ((!JceUtil.equals(this.type, localSettingsCfg.type)) || (!JceUtil.equals(this.cfg, localSettingsCfg.cfg)) || (!JceUtil.equals(this.revision, localSettingsCfg.revision)));
    return true;
  }

  public final String fullClassName()
  {
    return "com.tencent.tmassistantsdk.protocol.jce.SettingsCfg";
  }

  public final byte[] getCfg()
  {
    return this.cfg;
  }

  public final long getRevision()
  {
    return this.revision;
  }

  public final byte getType()
  {
    return this.type;
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
    this.type = paramJceInputStream.read(this.type, 0, true);
    if (cache_cfg == null)
    {
      byte[] arrayOfByte = (byte[])new byte[1];
      cache_cfg = arrayOfByte;
      ((byte[])arrayOfByte)[0] = 0;
    }
    this.cfg = ((byte[])paramJceInputStream.read(cache_cfg, 1, true));
    this.revision = paramJceInputStream.read(this.revision, 2, false);
  }

  public final void setCfg(byte[] paramArrayOfByte)
  {
    this.cfg = paramArrayOfByte;
  }

  public final void setRevision(long paramLong)
  {
    this.revision = paramLong;
  }

  public final void setType(byte paramByte)
  {
    this.type = paramByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.type, 0);
    paramJceOutputStream.write(this.cfg, 1);
    paramJceOutputStream.write(this.revision, 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.jce.SettingsCfg
 * JD-Core Version:    0.6.2
 */