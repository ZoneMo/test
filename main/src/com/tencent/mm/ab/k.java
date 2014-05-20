package com.tencent.mm.ab;

import android.content.ContentValues;
import android.database.Cursor;

public final class k
{
  private int bOY = -1;
  private String ckX = "";
  private String ckY = "";
  private int ckZ = 0;
  private int cla = 0;
  private String cvV = this.id + "_" + this.cvX;
  private String cvW = "";
  private int cvX = 0;
  private int id = 0;
  private String name = "";
  private int size = 0;
  private int status = 0;
  private int version = 0;

  public final int BH()
  {
    return this.cvX;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.version = paramCursor.getInt(2);
    this.name = paramCursor.getString(3);
    this.size = paramCursor.getInt(4);
    this.cvW = paramCursor.getString(5);
    this.status = paramCursor.getInt(6);
    this.ckX = paramCursor.getString(8);
    this.ckY = paramCursor.getString(9);
    this.cvX = paramCursor.getInt(7);
    this.cla = paramCursor.getInt(11);
    this.id = paramCursor.getInt(1);
    this.ckZ = paramCursor.getInt(10);
    this.cvV = paramCursor.getString(0);
  }

  public final void dO(int paramInt)
  {
    this.cvX = paramInt;
  }

  public final int getId()
  {
    return this.id;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final int getVersion()
  {
    return this.version;
  }

  public final void gg(String paramString)
  {
    this.cvW = paramString;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("id", Integer.valueOf(this.id));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("version", Integer.valueOf(this.version));
    String str4;
    String str3;
    label125: String str2;
    if ((0x8 & this.bOY) != 0)
    {
      if (this.name == null)
      {
        str4 = "";
        localContentValues.put("name", str4);
      }
    }
    else
    {
      if ((0x10 & this.bOY) != 0)
        localContentValues.put("size", Integer.valueOf(this.size));
      if ((0x20 & this.bOY) != 0)
      {
        if (this.cvW != null)
          break label339;
        str3 = "";
        localContentValues.put("packname", str3);
      }
      if ((0x40 & this.bOY) != 0)
        localContentValues.put("status", Integer.valueOf(this.status));
      if ((0x80 & this.bOY) != 0)
        localContentValues.put("type", Integer.valueOf(this.cvX));
      if ((0x100 & this.bOY) != 0)
      {
        if (this.ckX != null)
          break label348;
        str2 = "";
        label201: localContentValues.put("reserved1", str2);
      }
      if ((0x200 & this.bOY) != 0)
        if (this.ckY != null)
          break label356;
    }
    label339: label348: label356: for (String str1 = ""; ; str1 = this.ckY)
    {
      localContentValues.put("reserved2", str1);
      if ((0x400 & this.bOY) != 0)
        localContentValues.put("reserved3", Integer.valueOf(this.ckZ));
      if ((0x800 & this.bOY) != 0)
        localContentValues.put("reserved4", Integer.valueOf(this.cla));
      if ((0x1 & this.bOY) != 0)
        localContentValues.put("localId", this.id + "_" + this.cvX);
      return localContentValues;
      str4 = this.name;
      break;
      str3 = this.cvW;
      break label125;
      str2 = this.ckX;
      break label201;
    }
  }

  public final void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.k
 * JD-Core Version:    0.6.2
 */