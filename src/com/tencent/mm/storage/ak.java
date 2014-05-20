package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.j.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;
import junit.framework.Assert;

public final class ak extends e
{
  public static String ghH = "voip_content_voice";
  public static String ghI = "voip_content_video";
  private int bOY = -2;

  public ak()
  {
    this.field_status = 1;
  }

  public static String tW(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if (!paramString.endsWith("@t.qq.com"))
        break;
      return "tmessage";
    }
    if (paramString.endsWith("@qqim"))
      return "qmessage";
    if (i.tC(paramString))
      return "bottlemessage";
    return "message";
  }

  public static ak u(ak paramak)
  {
    if (paramak == null)
    {
      aa.d("MicroMsg.MsgInfo", "convertFrom msg is null ");
      return null;
    }
    ak localak = new ak();
    localak.field_msgId = paramak.field_msgId;
    localak.field_msgSvrId = paramak.field_msgSvrId;
    localak.field_type = paramak.field_type;
    localak.field_status = paramak.field_status;
    localak.field_isSend = paramak.field_isSend;
    localak.field_isShowTimer = paramak.field_isShowTimer;
    localak.field_createTime = paramak.field_createTime;
    localak.field_talker = paramak.field_talker;
    localak.field_content = paramak.field_content;
    localak.field_imgPath = paramak.field_imgPath;
    localak.field_reserved = paramak.field_reserved;
    localak.field_lvbuffer = paramak.field_lvbuffer;
    localak.bXF = paramak.bXF;
    localak.bXG = paramak.bXG;
    localak.bXH = paramak.bXH;
    return localak;
  }

  public final int AH()
  {
    return this.field_msgSvrId;
  }

  public final long Bo()
  {
    return this.field_msgId;
  }

  public final long DL()
  {
    return this.field_createTime;
  }

  public final void G(long paramLong)
  {
    this.field_createTime = paramLong;
  }

  public final boolean MP()
  {
    return this.field_type == 43;
  }

  public final boolean aBT()
  {
    return (this.field_type == 49) || (this.field_type == 16777265) || (this.field_type == 268435505) || (this.field_type == 335544369) || (this.field_type == 402653233) || (this.field_type == 369098801);
  }

  public final boolean aBU()
  {
    return this.field_type == 285212721;
  }

  public final boolean aBV()
  {
    return this.field_type == 34;
  }

  public final boolean aBW()
  {
    return this.field_type == 301989937;
  }

  public final boolean aBX()
  {
    return (this.field_type == 50) || (this.field_type == 53);
  }

  public final boolean aBY()
  {
    switch (this.field_type)
    {
    default:
      return false;
    case 3:
    case 13:
    case 23:
    case 33:
    case 39:
    }
    return true;
  }

  public final boolean aBZ()
  {
    return this.field_type == 35;
  }

  public final boolean aCa()
  {
    return this.field_type == 42;
  }

  public final boolean aCb()
  {
    return this.field_type == 48;
  }

  public final boolean aCc()
  {
    switch (this.field_type)
    {
    default:
      return false;
    case 1:
    case 11:
    case 21:
    case 31:
    case 36:
    }
    return true;
  }

  public final boolean aCd()
  {
    return this.field_type == 47;
  }

  public final boolean aCe()
  {
    return this.field_type == 1048625;
  }

  public final boolean aCf()
  {
    return this.field_type == 16777265;
  }

  public final boolean aCg()
  {
    return this.field_type == 268435505;
  }

  public final boolean aCh()
  {
    return this.field_type == -1879048191;
  }

  public final boolean aCi()
  {
    return this.field_type == -1879048190;
  }

  public final boolean aCj()
  {
    return this.field_type == -1879048189;
  }

  public final boolean aCk()
  {
    switch (this.field_type)
    {
    case 56:
    default:
      return false;
    case 55:
    case 57:
    }
    return true;
  }

  public final String aCl()
  {
    return this.field_talker;
  }

  public final String aCm()
  {
    return this.bXF;
  }

  public final String aCn()
  {
    return this.bXH;
  }

  public final String aCo()
  {
    return this.field_reserved;
  }

  public final int aCp()
  {
    return 0x1 & this.bXG;
  }

  public final boolean aCq()
  {
    return (0x1 & this.bXK) > 0;
  }

  public final void aCr()
  {
    this.bXK = (0x1 | this.bXK);
  }

  public final void bT(long paramLong)
  {
    this.field_msgId = paramLong;
  }

  public final void bZ(int paramInt)
  {
    this.field_isSend = paramInt;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    super.convertFrom(paramCursor);
    if (this.field_content == null)
      this.field_content = "";
  }

  public final void dA(int paramInt)
  {
    this.field_msgSvrId = paramInt;
  }

  public final String getContent()
  {
    return this.field_content;
  }

  public final int getStatus()
  {
    return this.field_status;
  }

  public final int getType()
  {
    return this.field_type;
  }

  public final boolean isSystem()
  {
    return this.field_type == 10000;
  }

  public final void mi(int paramInt)
  {
    switch (paramInt)
    {
    default:
      aa.w("MicroMsg.MsgInfo", "Illgeal forwardflag !!!");
      return;
    case 0:
    case 1:
    }
    this.bXG = (paramInt | this.bXG);
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("msgId", Long.valueOf(this.field_msgId));
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("msgSvrId", Integer.valueOf(this.field_msgSvrId));
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("type", Integer.valueOf(this.field_type));
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("status", Integer.valueOf(this.field_status));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("isSend", Integer.valueOf(this.field_isSend));
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("isShowTimer", Integer.valueOf(this.field_isShowTimer));
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("createTime", Long.valueOf(this.field_createTime));
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("talker", this.field_talker);
    if ((0x100 & this.bOY) != 0)
      localContentValues.put("content", this.field_content);
    if ((0x200 & this.bOY) != 0)
      localContentValues.put("imgPath", this.field_imgPath);
    if ((0x400 & this.bOY) != 0)
      localContentValues.put("reserved", this.field_reserved);
    if ((0x800 & this.bOY) != 0)
    {
      oc();
      localContentValues.put("lvbuffer", this.field_lvbuffer);
    }
    return localContentValues;
  }

  public final String ot()
  {
    return this.field_imgPath;
  }

  public final int rO()
  {
    return this.field_isSend;
  }

  public final void setContent(String paramString)
  {
    this.field_content = paramString;
  }

  public final void setStatus(int paramInt)
  {
    this.field_status = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.field_type = paramInt;
  }

  public final void uK(String paramString)
  {
    this.field_talker = paramString;
  }

  public final void uL(String paramString)
  {
    this.bXF = paramString;
  }

  public final void uM(String paramString)
  {
    this.bXH = paramString;
  }

  public final void uN(String paramString)
  {
    this.field_imgPath = paramString;
  }

  public final void uO(String paramString)
  {
    this.field_reserved = paramString;
  }

  public final boolean uP(String paramString)
  {
    if ((!cj.hX(this.bXH)) && (!cj.hX(paramString)))
    {
      Map localMap = u.aL(this.bXH, "msgsource");
      if (localMap == null)
        return false;
      String str = (String)localMap.get(".msgsource.atuserlist");
      if (!cj.hX(str))
      {
        String[] arrayOfString = str.split(",");
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
          if (arrayOfString[j].trim().equals(paramString))
            return true;
      }
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ak
 * JD-Core Version:    0.6.2
 */