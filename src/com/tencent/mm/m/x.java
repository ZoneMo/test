package com.tencent.mm.m;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.cj;

public final class x
{
  private int bOY = -1;
  private int bTM = 0;
  private int clb = 0;
  private String clc = "";
  private String cld = "";
  private int cle = 0;
  private int clf = 0;
  private String username = "";

  public final void Q(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      this.cle = i;
      return;
    }
  }

  public final void bU(int paramInt)
  {
    this.bTM = paramInt;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void cM(int paramInt)
  {
    this.clb = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.username = paramCursor.getString(0);
    this.bTM = paramCursor.getInt(1);
    this.clb = paramCursor.getInt(2);
    this.cld = paramCursor.getString(3);
    this.clc = paramCursor.getString(4);
    this.cle = paramCursor.getInt(5);
    this.clf = paramCursor.getInt(6);
  }

  public final void eo(String paramString)
  {
    this.cld = paramString;
  }

  public final void ep(String paramString)
  {
    this.clc = paramString;
  }

  public final String getUsername()
  {
    if (this.username == null)
      return "";
    return this.username;
  }

  public final int rz()
  {
    return this.bTM;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final ContentValues vT()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("username", getUsername());
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("imgflag", Integer.valueOf(this.bTM));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("lastupdatetime", Integer.valueOf(this.clb));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("reserved1", vV());
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("reserved2", vW());
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("reserved3", Integer.valueOf(this.cle));
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("reserved4", Integer.valueOf(this.clf));
    return localContentValues;
  }

  public final int vU()
  {
    return this.bOY;
  }

  public final String vV()
  {
    if (this.cld == null)
      return "";
    return this.cld;
  }

  public final String vW()
  {
    if (this.clc == null)
      return "";
    return this.clc;
  }

  public final void vX()
  {
    this.clf = 0;
  }

  public final void vY()
  {
    this.clf = ((int)(cj.FC() / 60L));
    this.bOY = (0x40 | this.bOY);
  }

  public final boolean vZ()
  {
    return cj.FC() - 60L * this.clf > 86400L;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.x
 * JD-Core Version:    0.6.2
 */