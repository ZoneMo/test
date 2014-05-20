package com.tencent.tmassistantsdk.protocol.jce;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Request extends JceStruct
  implements Cloneable
{
  static byte[] cache_body;
  static ReqHead cache_head;
  public byte[] body = null;
  public ReqHead head = null;

  static
  {
    if (!Request.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Request()
  {
  }

  public Request(ReqHead paramReqHead, byte[] paramArrayOfByte)
  {
    this.head = paramReqHead;
    this.body = paramArrayOfByte;
  }

  public final String className()
  {
    return "jce.Request";
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
    localJceDisplayer.display(this.head, "head");
    localJceDisplayer.display(this.body, "body");
  }

  public final void displaySimple(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.displaySimple(this.head, true);
    localJceDisplayer.displaySimple(this.body, false);
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    Request localRequest;
    do
    {
      return false;
      localRequest = (Request)paramObject;
    }
    while ((!JceUtil.equals(this.head, localRequest.head)) || (!JceUtil.equals(this.body, localRequest.body)));
    return true;
  }

  public final String fullClassName()
  {
    return "com.tencent.tmassistantsdk.protocol.jce.Request";
  }

  public final byte[] getBody()
  {
    return this.body;
  }

  public final ReqHead getHead()
  {
    return this.head;
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
    if (cache_head == null)
      cache_head = new ReqHead();
    this.head = ((ReqHead)paramJceInputStream.read(cache_head, 0, true));
    if (cache_body == null)
    {
      byte[] arrayOfByte = (byte[])new byte[1];
      cache_body = arrayOfByte;
      ((byte[])arrayOfByte)[0] = 0;
    }
    this.body = ((byte[])paramJceInputStream.read(cache_body, 1, false));
  }

  public final void setBody(byte[] paramArrayOfByte)
  {
    this.body = paramArrayOfByte;
  }

  public final void setHead(ReqHead paramReqHead)
  {
    this.head = paramReqHead;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.head, 0);
    if (this.body != null)
      paramJceOutputStream.write(this.body, 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.protocol.jce.Request
 * JD-Core Version:    0.6.2
 */