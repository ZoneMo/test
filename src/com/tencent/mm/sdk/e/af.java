package com.tencent.mm.sdk.e;

import android.content.ContentValues;
import android.database.Cursor;

public abstract interface af
{
  public abstract Cursor K(String paramString, boolean paramBoolean);

  public abstract Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4);

  public abstract boolean aQ(String paramString1, String paramString2);

  public abstract int delete(String paramString1, String paramString2, String[] paramArrayOfString);

  public abstract long insert(String paramString1, String paramString2, ContentValues paramContentValues);

  public abstract Cursor rawQuery(String paramString, String[] paramArrayOfString);

  public abstract long replace(String paramString1, String paramString2, ContentValues paramContentValues);

  public abstract int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.e.af
 * JD-Core Version:    0.6.2
 */