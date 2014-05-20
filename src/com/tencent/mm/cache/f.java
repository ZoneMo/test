package com.tencent.mm.cache;

import android.os.Parcel;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

class f
{
  public static Map caW = new HashMap();
  public static Map caX = new HashMap();

  static
  {
    try
    {
      caW.put([B.class, f.class.getMethod("keep_writeByteArray", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Short.TYPE, f.class.getMethod("keep_writeShort", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Short.class, f.class.getMethod("keep_writeShort", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Boolean.TYPE, f.class.getMethod("keep_writeBoolean", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Boolean.class, f.class.getMethod("keep_writeBoolean", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Integer.TYPE, f.class.getMethod("keep_writeInt", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Integer.class, f.class.getMethod("keep_writeInt", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Float.TYPE, f.class.getMethod("keep_writeFloat", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Float.class, f.class.getMethod("keep_writeFloat", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Double.TYPE, f.class.getMethod("keep_writeDouble", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Double.class, f.class.getMethod("keep_writeDouble", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Long.TYPE, f.class.getMethod("keep_writeLong", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(Long.class, f.class.getMethod("keep_writeLong", new Class[] { Parcel.class, Field.class, Object.class }));
      caW.put(String.class, f.class.getMethod("keep_writeString", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put([B.class, f.class.getMethod("keep_readByteArray", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Short.TYPE, f.class.getMethod("keep_readShort", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Short.class, f.class.getMethod("keep_readShort", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Boolean.TYPE, f.class.getMethod("keep_readBoolean", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Boolean.class, f.class.getMethod("keep_readBoolean", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Integer.TYPE, f.class.getMethod("keep_readInt", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Integer.class, f.class.getMethod("keep_readInt", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Float.TYPE, f.class.getMethod("keep_readFloat", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Float.class, f.class.getMethod("keep_readFloat", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Double.TYPE, f.class.getMethod("keep_readDouble", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Double.class, f.class.getMethod("keep_readDouble", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Long.TYPE, f.class.getMethod("keep_readLong", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(Long.class, f.class.getMethod("keep_readLong", new Class[] { Parcel.class, Field.class, Object.class }));
      caX.put(String.class, f.class.getMethod("keep_readString", new Class[] { Parcel.class, Field.class, Object.class }));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readBoolean(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      if (paramParcel.readInt() != 0);
      for (boolean bool = true; ; bool = false)
      {
        paramField.setBoolean(paramObject, bool);
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readByteArray(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.set(paramObject, paramParcel.createByteArray());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readDouble(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.setDouble(paramObject, paramParcel.readDouble());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readFloat(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.setFloat(paramObject, paramParcel.readFloat());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readInt(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.setInt(paramObject, paramParcel.readInt());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readLong(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.set(paramObject, Long.valueOf(paramParcel.readLong()));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readShort(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.setShort(paramObject, (short)paramParcel.readInt());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_readString(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramField.set(paramObject, paramParcel.readString());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeBoolean(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      if (paramField.getBoolean(paramObject));
      for (int i = 1; ; i = 0)
      {
        paramParcel.writeInt(i);
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeByteArray(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeByteArray((byte[])paramField.get(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeDouble(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeDouble(paramField.getDouble(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeFloat(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeFloat(paramField.getFloat(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeInt(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeInt(paramField.getInt(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeLong(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeLong(paramField.getLong(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeShort(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeInt(paramField.getShort(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_writeString(Parcel paramParcel, Field paramField, Object paramObject)
  {
    try
    {
      paramParcel.writeString((String)paramField.get(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.cache.f
 * JD-Core Version:    0.6.2
 */