package com.tencent.mm.model;

import android.content.ContentValues;
import android.database.Cursor;
import junit.framework.Assert;

public final class ck
{
  private int bOY = -1;
  private String chh = "";
  private String chj = "";
  private String cjA = "";
  private String cjq = "";
  private String cjr = "";
  private String cjs = "";
  private long cjt = 0L;
  private String cju = "";
  private String cjv = "";
  private int cjw = 0;
  private int cjx = 0;
  private int cjy = 0;
  private String cjz = "";
  private String name = "";
  private long time = 0L;
  private String title = "";
  private int type = 0;
  private String url = "";

  public static String cv(int paramInt)
  {
    if (paramInt == 20)
      return "newsapp";
    if (paramInt == 11)
      return "blogapp";
    Assert.assertTrue("INFO TYPE NEITHER NEWS NOR WEIBO", false);
    return null;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    this.cjq = paramCursor.getString(0);
    this.time = paramCursor.getLong(1);
    this.type = paramCursor.getInt(2);
    this.name = paramCursor.getString(3);
    this.title = paramCursor.getString(4);
    this.url = paramCursor.getString(5);
    this.cjr = paramCursor.getString(6);
    this.cjs = paramCursor.getString(7);
    this.cjt = paramCursor.getLong(8);
    this.cju = paramCursor.getString(9);
    this.cjv = paramCursor.getString(10);
    this.cjw = paramCursor.getInt(11);
    this.chh = paramCursor.getString(12);
    this.chj = paramCursor.getString(13);
    this.cjx = paramCursor.getInt(14);
    this.cjy = paramCursor.getInt(15);
    this.cjz = paramCursor.getString(16);
    this.cjA = paramCursor.getString(17);
  }

  public final void cw(int paramInt)
  {
    this.cjy = paramInt;
  }

  public final void cx(int paramInt)
  {
    this.cjx = paramInt;
  }

  public final void dD(String paramString)
  {
    this.cjq = paramString;
  }

  public final void dE(String paramString)
  {
    this.cjr = paramString;
  }

  public final void dF(String paramString)
  {
    this.cjs = paramString;
  }

  public final void dG(String paramString)
  {
    this.cju = paramString;
  }

  public final void dH(String paramString)
  {
    this.cjv = paramString;
  }

  public final void dI(String paramString)
  {
    this.chh = paramString;
  }

  public final void dJ(String paramString)
  {
    this.chj = paramString;
  }

  public final String getName()
  {
    if (this.name == null)
      return "";
    return this.name;
  }

  public final long getTime()
  {
    return this.time;
  }

  public final String getTitle()
  {
    if (this.title == null)
      return "";
    return this.title;
  }

  public final int getType()
  {
    return this.type;
  }

  public final String getUrl()
  {
    if (this.url == null)
      return "";
    return this.url;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("tweetid", vj());
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("time", Long.valueOf(this.time));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("type", Integer.valueOf(this.type));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("name", getName());
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("title", getTitle());
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("url", getUrl());
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("shorturl", vk());
    String str3;
    String str2;
    if ((0x80 & this.bOY) != 0)
    {
      if (this.cjs == null)
      {
        str3 = "";
        localContentValues.put("longurl", str3);
      }
    }
    else
    {
      if ((0x100 & this.bOY) != 0)
        localContentValues.put("pubtime", Long.valueOf(this.cjt));
      if ((0x200 & this.bOY) != 0)
        localContentValues.put("sourcename", vm());
      if ((0x400 & this.bOY) != 0)
        localContentValues.put("sourceicon", vn());
      if ((0x800 & this.bOY) != 0)
        localContentValues.put("istop", Integer.valueOf(this.cjw));
      if ((0x1000 & this.bOY) != 0)
        localContentValues.put("cover", vp());
      if ((0x2000 & this.bOY) != 0)
        localContentValues.put("digest", vq());
      if ((0x4000 & this.bOY) != 0)
        localContentValues.put("reserved1", Integer.valueOf(this.cjx));
      if ((0x8000 & this.bOY) != 0)
        localContentValues.put("reserved2", Integer.valueOf(this.cjy));
      if ((0x10000 & this.bOY) != 0)
      {
        if (this.cjz != null)
          break label425;
        str2 = "";
        label380: localContentValues.put("reserved3", str2);
      }
      if ((0x20000 & this.bOY) != 0)
        if (this.cjA != null)
          break label433;
    }
    label425: label433: for (String str1 = ""; ; str1 = this.cjA)
    {
      localContentValues.put("reserved4", str1);
      return localContentValues;
      str3 = this.cjs;
      break;
      str2 = this.cjz;
      break label380;
    }
  }

  public final void r(long paramLong)
  {
    this.cjt = paramLong;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setTime(long paramLong)
  {
    this.time = paramLong;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void vg()
  {
    this.bOY = -1;
  }

  public final int vh()
  {
    return this.cjy;
  }

  public final boolean vi()
  {
    return this.cjx == 1;
  }

  public final String vj()
  {
    if (this.cjq == null)
      return "";
    return this.cjq;
  }

  public final String vk()
  {
    if (this.cjr == null)
      return "";
    return this.cjr;
  }

  public final long vl()
  {
    return this.cjt;
  }

  public final String vm()
  {
    if (this.cju == null)
      return "";
    return this.cju;
  }

  public final String vn()
  {
    if (this.cjv == null)
      return "";
    return this.cjv;
  }

  public final void vo()
  {
    this.cjw = 1;
  }

  public final String vp()
  {
    if (this.chh != null)
    {
      String[] arrayOfString = this.chh.split("\\|");
      if ((arrayOfString != null) && (arrayOfString.length > 0))
        return arrayOfString[0];
      return "";
    }
    return "";
  }

  public final String vq()
  {
    if (this.chj == null)
      return "";
    return this.chj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.ck
 * JD-Core Version:    0.6.2
 */