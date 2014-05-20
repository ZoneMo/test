package com.tencent.mm.sdk.e;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class a
{
  private static final Map caW = new HashMap();
  private static final Map caX = new HashMap();
  private static final Map gfx = new HashMap();

  static
  {
    try
    {
      caW.put([B.class, new b());
      caW.put(Short.TYPE, new m());
      caW.put(Short.class, new w());
      caW.put(Boolean.TYPE, new x());
      caW.put(Boolean.class, new y());
      caW.put(Integer.TYPE, new z());
      caW.put(Integer.class, new aa());
      caW.put(Float.TYPE, new ab());
      caW.put(Float.class, new ac());
      caW.put(Double.TYPE, new c());
      caW.put(Double.class, new d());
      caW.put(Long.TYPE, new e());
      caW.put(Long.class, new f());
      caW.put(String.class, new g());
      caX.put([B.class, new h());
      caX.put(Short.TYPE, new i());
      caX.put(Short.class, new j());
      caX.put(Boolean.TYPE, new k());
      caX.put(Boolean.class, new l());
      caX.put(Integer.TYPE, new n());
      caX.put(Integer.class, new o());
      caX.put(Float.TYPE, new p());
      caX.put(Float.class, new q());
      caX.put(Double.TYPE, new r());
      caX.put(Double.class, new s());
      caX.put(Long.TYPE, new t());
      caX.put(Long.class, new u());
      caX.put(String.class, new v());
      gfx.put([B.class, "BLOB");
      gfx.put(Short.TYPE, "SHORT");
      gfx.put(Short.class, "SHORT");
      gfx.put(Boolean.TYPE, "INTEGER");
      gfx.put(Boolean.class, "INTEGER");
      gfx.put(Integer.TYPE, "INTEGER");
      gfx.put(Integer.class, "INTEGER");
      gfx.put(Float.TYPE, "FLOAT");
      gfx.put(Float.class, "FLOAT");
      gfx.put(Double.TYPE, "DOUBLE");
      gfx.put(Double.class, "DOUBLE");
      gfx.put(Long.TYPE, "LONG");
      gfx.put(Long.class, "LONG");
      gfx.put(String.class, "TEXT");
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static String c(Class paramClass)
  {
    return (String)gfx.get(paramClass);
  }

  public static void keep_getBlob(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(ad.a(paramField), (byte[])paramField.get(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getBoolean(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      String str = ad.a(paramField);
      if (paramField.getBoolean(paramObject));
      for (int i = 1; ; i = 0)
      {
        paramContentValues.put(str, Integer.valueOf(i));
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getDouble(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Double.TYPE))
      {
        paramContentValues.put(ad.a(paramField), (Double)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(ad.a(paramField), Double.valueOf(paramField.getDouble(paramObject)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getFloat(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Float.TYPE))
      {
        paramContentValues.put(ad.a(paramField), (Float)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(ad.a(paramField), Float.valueOf(paramField.getFloat(paramObject)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getInt(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Integer.TYPE))
      {
        paramContentValues.put(ad.a(paramField), (Integer)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(ad.a(paramField), Integer.valueOf(paramField.getInt(paramObject)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getLong(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      if (!paramField.getType().equals(Long.TYPE))
      {
        paramContentValues.put(ad.a(paramField), (Long)paramField.get(paramObject));
        return;
      }
      paramContentValues.put(ad.a(paramField), Long.valueOf(paramField.getLong(paramObject)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getShort(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(ad.a(paramField), Short.valueOf(paramField.getShort(paramObject)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_getString(Field paramField, Object paramObject, ContentValues paramContentValues)
  {
    try
    {
      paramContentValues.put(ad.a(paramField), (String)paramField.get(paramObject));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setBlob(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      paramField.set(paramObject, paramCursor.getBlob(paramInt));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setBoolean(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    while (true)
    {
      try
      {
        if (paramField.getType().equals(Boolean.TYPE))
        {
          if (paramCursor.getInt(paramInt) != 0)
          {
            bool = true;
            paramField.setBoolean(paramObject, bool);
          }
        }
        else
        {
          paramField.set(paramObject, Integer.valueOf(paramCursor.getInt(paramInt)));
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      boolean bool = false;
    }
  }

  public static void keep_setDouble(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Double.TYPE))
      {
        paramField.setDouble(paramObject, paramCursor.getDouble(paramInt));
        return;
      }
      paramField.set(paramObject, Double.valueOf(paramCursor.getDouble(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setFloat(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Float.TYPE))
      {
        paramField.setFloat(paramObject, paramCursor.getFloat(paramInt));
        return;
      }
      paramField.set(paramObject, Float.valueOf(paramCursor.getFloat(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setInt(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Integer.TYPE))
      {
        paramField.setInt(paramObject, paramCursor.getInt(paramInt));
        return;
      }
      paramField.set(paramObject, Integer.valueOf(paramCursor.getInt(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setLong(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Long.TYPE))
      {
        paramField.setLong(paramObject, paramCursor.getLong(paramInt));
        return;
      }
      paramField.set(paramObject, Long.valueOf(paramCursor.getLong(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setShort(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      if (paramField.getType().equals(Short.TYPE))
      {
        paramField.setShort(paramObject, paramCursor.getShort(paramInt));
        return;
      }
      paramField.set(paramObject, Short.valueOf(paramCursor.getShort(paramInt)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void keep_setString(Field paramField, Object paramObject, Cursor paramCursor, int paramInt)
  {
    try
    {
      paramField.set(paramObject, paramCursor.getString(paramInt));
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.a
 * JD-Core Version:    0.6.2
 */