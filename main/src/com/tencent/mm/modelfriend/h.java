package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.y;

public final class h
{
  private String Tu = "";
  private String Tv = "";
  private int bOY = -1;
  private String bPX = "";
  private String bTQ = "";
  private String cie = "";
  private String ckX = "";
  private String cqA = "";
  private long cqB = -1L;
  private int cqC = -1;
  private String cqD = "";
  private String cqE = "";
  private String cqF = "";
  private String cqf = "";
  private long cqg = 0L;
  private String cqh = "";
  private String cqi = "";
  private String cqj = "";
  private String cqk = "";
  private String cql = "";
  private String cqm = "";
  private int cqn = 0;
  public byte[] cqo;
  private String cqp = "";
  private int cqq = 0;
  private String cqr = "";
  private int cqs = 0;
  private String cqt = "";
  private int cqu = 0;
  private int cqv = 0;
  private String cqw = "";
  private String cqx = "";
  private String cqy = "";
  private int cqz = -1;
  private int id = 0;
  private int status = 0;
  private int type = 0;
  private String username = "";

  public static int eW(String paramString)
  {
    return (int)Long.parseLong(paramString.substring(0, 8), 16);
  }

  private byte[] yJ()
  {
    try
    {
      y localy = new y();
      localy.azg();
      localy.sz(this.cqp);
      localy.lG(this.cqq);
      localy.sz(this.Tu);
      localy.sz(this.Tv);
      localy.sz(this.cqr);
      localy.lG(this.cqs);
      localy.sz(this.cqt);
      localy.lG(this.cqu);
      localy.lG(this.cqv);
      localy.sz(this.cqw);
      localy.sz(this.cqx);
      localy.sz(this.cqy);
      localy.lG(this.cqz);
      localy.sz(this.cqA);
      localy.bN(this.cqB);
      localy.lG(this.cqC);
      localy.sz(this.cqD);
      localy.sz(this.cqE);
      localy.sz(this.cqF);
      byte[] arrayOfByte = localy.azh();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final void bA(String paramString)
  {
    this.Tu = paramString;
  }

  public final void bB(String paramString)
  {
    this.Tv = paramString;
  }

  public final void bF(String paramString)
  {
    this.bTQ = paramString;
  }

  public final void bL(int paramInt)
  {
    this.cqq = paramInt;
  }

  public final void bN(int paramInt)
  {
    this.cqs = paramInt;
  }

  public final void bx(String paramString)
  {
    this.cqt = paramString;
  }

  public final void bz(String paramString)
  {
    this.cqr = paramString;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void cW(int paramInt)
  {
    this.cqz = paramInt;
  }

  public final void cX(int paramInt)
  {
    this.cqC = paramInt;
  }

  public final void cY(int paramInt)
  {
    this.cqu = paramInt;
  }

  public final void cZ(int paramInt)
  {
    this.cqv = paramInt;
  }

  public final void convertFrom(Cursor paramCursor)
  {
    eX(paramCursor.getString(1));
    this.cqf = paramCursor.getString(2);
    this.cqg = paramCursor.getLong(3);
    this.cqh = paramCursor.getString(4);
    this.cqi = paramCursor.getString(5);
    this.cqj = paramCursor.getString(6);
    this.username = paramCursor.getString(7);
    this.cie = paramCursor.getString(8);
    this.cqk = paramCursor.getString(9);
    this.cql = paramCursor.getString(10);
    this.type = paramCursor.getInt(11);
    this.cqm = paramCursor.getString(12);
    this.bTQ = paramCursor.getString(13);
    int i = paramCursor.getInt(14);
    if (i == 65536)
      this.status = 0;
    while (true)
    {
      this.cqn = paramCursor.getInt(17);
      this.ckX = paramCursor.getString(15);
      this.cqo = paramCursor.getBlob(19);
      byte[] arrayOfByte;
      if (!cj.A(this.cqo))
        arrayOfByte = this.cqo;
      try
      {
        y localy = new y();
        int j = localy.cl(arrayOfByte);
        if (j != 0)
        {
          aa.e("MicroMsg.AddrUpload", "parse LVBuffer error:" + j);
          return;
          this.status = i;
        }
        else
        {
          this.cqp = localy.getString();
          this.cqq = localy.getInt();
          this.Tu = localy.getString();
          this.Tv = localy.getString();
          this.cqr = localy.getString();
          this.cqs = localy.getInt();
          this.cqt = localy.getString();
          this.cqu = localy.getInt();
          this.cqv = localy.getInt();
          this.cqw = localy.getString();
          this.cqx = localy.getString();
          this.cqy = localy.getString();
          this.cqz = localy.getInt();
          this.cqA = localy.getString();
          this.cqB = localy.getLong();
          this.cqC = localy.getInt();
          this.cqD = localy.getString();
          this.cqE = localy.getString();
          this.cqF = localy.getString();
          return;
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  public final void eX(String paramString)
  {
    this.bPX = paramString;
    this.id = eW(paramString);
  }

  public final void eY(String paramString)
  {
    this.cqf = paramString;
  }

  public final void eZ(String paramString)
  {
    this.cqh = paramString;
  }

  public final void fa(String paramString)
  {
    this.cqi = paramString;
  }

  public final void fb(String paramString)
  {
    this.cqj = paramString;
  }

  public final void fc(String paramString)
  {
    this.cie = paramString;
  }

  public final void fd(String paramString)
  {
    this.cqk = paramString;
  }

  public final void fe(String paramString)
  {
    this.cql = paramString;
  }

  public final void ff(String paramString)
  {
    this.cqm = paramString;
  }

  public final void fg(String paramString)
  {
    this.cqp = paramString;
  }

  public final void fh(String paramString)
  {
    this.cqy = paramString;
  }

  public final void fi(String paramString)
  {
    this.cqA = paramString;
  }

  public final void fj(String paramString)
  {
    this.cqD = paramString;
  }

  public final void fk(String paramString)
  {
    this.cqE = paramString;
  }

  public final void fl(String paramString)
  {
    this.cqF = paramString;
  }

  public final void fm(String paramString)
  {
    this.cqw = paramString;
  }

  public final void fn(String paramString)
  {
    this.cqx = paramString;
  }

  public final void fo(String paramString)
  {
    this.ckX = paramString;
  }

  public final String getCountry()
  {
    return this.cqx;
  }

  public final int getStatus()
  {
    return this.status;
  }

  public final int getType()
  {
    return this.type;
  }

  public final String getUsername()
  {
    if (this.username == null)
      return "";
    return this.username;
  }

  public final ContentValues oa()
  {
    ContentValues localContentValues = new ContentValues();
    if ((0x1 & this.bOY) != 0)
      localContentValues.put("id", Integer.valueOf(this.id));
    if ((0x2 & this.bOY) != 0)
      localContentValues.put("md5", yK());
    if ((0x4 & this.bOY) != 0)
      localContentValues.put("peopleid", yL());
    if ((0x8 & this.bOY) != 0)
      localContentValues.put("uploadtime", Long.valueOf(this.cqg));
    if ((0x10 & this.bOY) != 0)
      localContentValues.put("realname", yM());
    if ((0x20 & this.bOY) != 0)
      localContentValues.put("realnamepyinitial", yN());
    if ((0x40 & this.bOY) != 0)
      localContentValues.put("realnamequanpin", yO());
    if ((0x80 & this.bOY) != 0)
      localContentValues.put("username", getUsername());
    if ((0x100 & this.bOY) != 0)
      localContentValues.put("nickname", yP());
    if ((0x200 & this.bOY) != 0)
      localContentValues.put("nicknamepyinitial", yQ());
    if ((0x400 & this.bOY) != 0)
      localContentValues.put("nicknamequanpin", yR());
    if ((0x800 & this.bOY) != 0)
      localContentValues.put("type", Integer.valueOf(this.type));
    if ((0x1000 & this.bOY) != 0)
      localContentValues.put("moblie", yS());
    if ((0x2000 & this.bOY) != 0)
      localContentValues.put("email", yT());
    int i;
    if ((0x4000 & this.bOY) != 0)
    {
      i = this.status;
      if (i != 0)
        break label426;
      localContentValues.put("status", Integer.valueOf(65536));
    }
    while (true)
    {
      if ((0x8000 & this.bOY) != 0)
        localContentValues.put("reserved1", this.ckX);
      if ((0x20000 & this.bOY) != 0)
        localContentValues.put("reserved3", Integer.valueOf(this.cqn));
      if ((0x80000 & this.bOY) != 0)
      {
        this.cqo = yJ();
        localContentValues.put("lvbuf", this.cqo);
      }
      return localContentValues;
      label426: localContentValues.put("status", Integer.valueOf(i));
    }
  }

  public final String rB()
  {
    return this.cqr;
  }

  public final String rC()
  {
    return this.Tu;
  }

  public final String rD()
  {
    return this.Tv;
  }

  public final int rk()
  {
    return this.cqq;
  }

  public final String rp()
  {
    return this.cqt;
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setUsername(String paramString)
  {
    this.username = paramString;
  }

  public final void x(long paramLong)
  {
    this.cqg = paramLong;
  }

  public final void y(long paramLong)
  {
    this.cqB = paramLong;
  }

  public final String yK()
  {
    if (this.bPX == null)
      return "";
    return this.bPX;
  }

  public final String yL()
  {
    if (this.cqf == null)
      return "";
    return this.cqf;
  }

  public final String yM()
  {
    if (this.cqh == null)
      return "";
    return this.cqh;
  }

  public final String yN()
  {
    if (this.cqi == null)
      return "";
    return this.cqi;
  }

  public final String yO()
  {
    if (this.cqj == null)
      return "";
    return this.cqj;
  }

  public final String yP()
  {
    if (this.cie == null)
      return "";
    return this.cie;
  }

  public final String yQ()
  {
    if (this.cqk == null)
      return "";
    return this.cqk;
  }

  public final String yR()
  {
    if (this.cql == null)
      return "";
    return this.cql;
  }

  public final String yS()
  {
    if (this.cqm == null)
      return "";
    return this.cqm;
  }

  public final String yT()
  {
    if (this.bTQ == null)
      return "";
    return this.bTQ;
  }

  public final void yU()
  {
    this.cqn = (0xFFFFFFFE & this.cqn);
  }

  public final void yV()
  {
    this.cqn = (0x1 | this.cqn);
  }

  public final boolean yW()
  {
    return (0x1 & this.cqn) == 0;
  }

  public final String yX()
  {
    return this.cqp;
  }

  public final String yY()
  {
    return this.ckX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.h
 * JD-Core Version:    0.6.2
 */