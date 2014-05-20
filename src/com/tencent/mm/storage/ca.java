package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;

public final class ca
{
  private int bOY = 135;
  private cb gje = null;
  private int gjf;
  private String name = "";
  private int status;

  public ca()
  {
    this.gje = null;
    this.name = "";
    this.status = 0;
    this.gjf = 0;
  }

  public ca(String paramString, boolean paramBoolean, int paramInt)
  {
    this.gje = new cb(paramString);
    this.name = paramString;
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      this.status = (i | 0x2);
      this.gjf = paramInt;
      return;
    }
  }

  public final boolean aBS()
  {
    return (0x1 & this.status) != 0;
  }

  public final boolean aDi()
  {
    return (0x2 & this.status) != 0;
  }

  public final boolean aDj()
  {
    return this.gjf == 1;
  }

  public final cb aDk()
  {
    return this.gje;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void cU(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      int i = this.status;
      if (paramBoolean);
      for (int j = 1; ; j = 0)
      {
        this.status = (j | i);
        return;
      }
    }
    this.status = (0xFFFFFFFE & this.status);
  }

  public final void cV(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      int i = this.status;
      if (paramBoolean);
      for (int j = 2; ; j = 0)
      {
        this.status = (j | i);
        return;
      }
    }
    this.status = (0xFFFFFFFD & this.status);
  }

  public final void convertFrom(Cursor paramCursor)
  {
    if ((0x2 & this.bOY) != 0)
    {
      this.name = paramCursor.getString(1);
      if (this.gje == null)
        this.gje = new cb(this.name);
    }
    if ((0x4 & this.bOY) != 0)
      this.status = paramCursor.getInt(2);
    if ((0x80 & this.bOY) != 0)
      this.gjf = paramCursor.getInt(7);
  }

  public final String getName()
  {
    return this.name;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("name", this.name);
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("status", Integer.valueOf(this.status));
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("int_reserved1", Integer.valueOf(this.gjf));
    return localContentValues;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ca
 * JD-Core Version:    0.6.2
 */