package com.qq.a.a;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c extends JceStruct
{
  protected HashMap SU = new HashMap();
  private HashMap SV = new HashMap(128);
  private HashMap SW = new HashMap(128);
  protected String SX = "GBK";
  JceInputStream SY = new JceInputStream();

  static
  {
    if (!c.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  private static void a(ArrayList paramArrayList, Object paramObject)
  {
    Object localObject1 = paramObject;
    while (true)
      if (localObject1.getClass().isArray())
      {
        if (!localObject1.getClass().getComponentType().toString().equals("byte"))
          throw new IllegalArgumentException("only byte[] is supported");
        if (Array.getLength(localObject1) > 0)
        {
          paramArrayList.add("java.util.List");
          localObject1 = Array.get(localObject1, 0);
        }
        else
        {
          paramArrayList.add("Array");
          paramArrayList.add("?");
        }
      }
      else
      {
        if ((localObject1 instanceof Array))
          throw new IllegalArgumentException("can not support Array, please use List");
        if ((localObject1 instanceof List))
        {
          paramArrayList.add("java.util.List");
          List localList = (List)localObject1;
          if (localList.size() > 0)
            localObject1 = localList.get(0);
          else
            paramArrayList.add("?");
        }
        else
        {
          if (!(localObject1 instanceof Map))
            break label235;
          paramArrayList.add("java.util.Map");
          Map localMap = (Map)localObject1;
          if (localMap.size() <= 0)
            break;
          Object localObject2 = localMap.keySet().iterator().next();
          localObject1 = localMap.get(localObject2);
          paramArrayList.add(localObject2.getClass().getName());
        }
      }
    paramArrayList.add("?");
    paramArrayList.add("?");
    return;
    label235: paramArrayList.add(localObject1.getClass().getName());
  }

  public final void ae(String paramString)
  {
    this.SX = paramString;
  }

  public void c(byte[] paramArrayOfByte)
  {
    this.SY.warp(paramArrayOfByte);
    this.SY.setServerEncoding(this.SX);
    HashMap localHashMap1 = new HashMap(1);
    HashMap localHashMap2 = new HashMap(1);
    localHashMap2.put("", new byte[0]);
    localHashMap1.put("", localHashMap2);
    this.SU = this.SY.readMap(localHashMap1, 0, false);
  }

  public Object clone()
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

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).display(this.SU, "_data");
  }

  public boolean equals(Object paramObject)
  {
    c localc = (c)paramObject;
    return JceUtil.equals(Integer.valueOf(1), localc.SU);
  }

  public final Object get(String paramString)
  {
    if (!this.SU.containsKey(paramString))
      return null;
    if (this.SW.containsKey(paramString))
      return this.SW.get(paramString);
    HashMap localHashMap = (HashMap)this.SU.get(paramString);
    byte[] arrayOfByte1 = new byte[0];
    Iterator localIterator = localHashMap.entrySet().iterator();
    String str1;
    byte[] arrayOfByte2;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str2 = (String)localEntry.getKey();
      byte[] arrayOfByte3 = (byte[])localEntry.getValue();
      str1 = str2;
      arrayOfByte2 = arrayOfByte3;
    }
    while (true)
    {
      try
      {
        if (this.SV.containsKey(str1))
        {
          localObject1 = this.SV.get(str1);
          this.SY.warp(arrayOfByte2);
          this.SY.setServerEncoding(this.SX);
          Object localObject2 = this.SY.read(localObject1, 0, true);
          this.SW.put(paramString, localObject2);
          return localObject2;
        }
      }
      catch (Exception localException)
      {
        throw new b(localException);
      }
      Object localObject1 = a.ac(str1);
      this.SV.put(str1, localObject1);
      continue;
      arrayOfByte2 = arrayOfByte1;
      str1 = null;
    }
  }

  public byte[] lN()
  {
    JceOutputStream localJceOutputStream = new JceOutputStream(0);
    localJceOutputStream.setServerEncoding(this.SX);
    localJceOutputStream.write(this.SU, 0);
    return JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer());
  }

  public void put(String paramString, Object paramObject)
  {
    if (paramString == null)
      throw new IllegalArgumentException("put key can not is null");
    if (paramObject == null)
      throw new IllegalArgumentException("put value can not is null");
    if ((paramObject instanceof Set))
      throw new IllegalArgumentException("can not support Set");
    JceOutputStream localJceOutputStream = new JceOutputStream();
    localJceOutputStream.setServerEncoding(this.SX);
    localJceOutputStream.write(paramObject, 0);
    byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream.getByteBuffer());
    HashMap localHashMap = new HashMap(1);
    ArrayList localArrayList = new ArrayList(1);
    a(localArrayList, paramObject);
    localHashMap.put(a.c(localArrayList), arrayOfByte);
    this.SW.remove(paramString);
    this.SU.put(paramString, localHashMap);
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    this.SU.clear();
    HashMap localHashMap = new HashMap();
    byte[] arrayOfByte = (byte[])new byte[1];
    Byte localByte = Byte.valueOf((byte)0);
    ((byte[])arrayOfByte)[0] = localByte.byteValue();
    localHashMap.put("", arrayOfByte);
    this.SU.put("", localHashMap);
    this.SU = ((HashMap)paramJceInputStream.read(this.SU, 0, true));
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.SU, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.qq.a.a.c
 * JD-Core Version:    0.6.2
 */