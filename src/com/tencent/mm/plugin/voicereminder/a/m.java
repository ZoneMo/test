package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.c.b.ai;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class m extends ai
{
  protected static ae cfX = localae;
  private int bOY = -1;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[17];
    localae.bZx = new String[18];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "filename";
    localae.gfA.put("filename", "TEXT");
    localStringBuilder.append(" filename TEXT");
    localStringBuilder.append(", ");
    localae.bZx[1] = "user";
    localae.gfA.put("user", "TEXT");
    localStringBuilder.append(" user TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "msgid";
    localae.gfA.put("msgid", "INTEGER");
    localStringBuilder.append(" msgid INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[3] = "offset";
    localae.gfA.put("offset", "INTEGER");
    localStringBuilder.append(" offset INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[4] = "filenowsize";
    localae.gfA.put("filenowsize", "INTEGER");
    localStringBuilder.append(" filenowsize INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[5] = "totallen";
    localae.gfA.put("totallen", "INTEGER");
    localStringBuilder.append(" totallen INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[6] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[7] = "createtime";
    localae.gfA.put("createtime", "LONG");
    localStringBuilder.append(" createtime LONG");
    localStringBuilder.append(", ");
    localae.bZx[8] = "lastmodifytime";
    localae.gfA.put("lastmodifytime", "LONG");
    localStringBuilder.append(" lastmodifytime LONG");
    localStringBuilder.append(", ");
    localae.bZx[9] = "clientid";
    localae.gfA.put("clientid", "TEXT");
    localStringBuilder.append(" clientid TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "voicelenght";
    localae.gfA.put("voicelenght", "INTEGER");
    localStringBuilder.append(" voicelenght INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[11] = "msglocalid";
    localae.gfA.put("msglocalid", "INTEGER");
    localStringBuilder.append(" msglocalid INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[12] = "human";
    localae.gfA.put("human", "TEXT");
    localStringBuilder.append(" human TEXT");
    localStringBuilder.append(", ");
    localae.bZx[13] = "voiceformat";
    localae.gfA.put("voiceformat", "INTEGER");
    localStringBuilder.append(" voiceformat INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[14] = "nettimes";
    localae.gfA.put("nettimes", "INTEGER");
    localStringBuilder.append(" nettimes INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[15] = "reserved1";
    localae.gfA.put("reserved1", "INTEGER");
    localStringBuilder.append(" reserved1 INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[16] = "reserved2";
    localae.gfA.put("reserved2", "TEXT");
    localStringBuilder.append(" reserved2 TEXT");
    localae.bZx[17] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public final int AF()
  {
    return this.field_msglocalid;
  }

  public final int AH()
  {
    return this.field_msgid;
  }

  public final String DG()
  {
    return this.field_human;
  }

  public final int DH()
  {
    return this.field_offset;
  }

  public final int DI()
  {
    return this.field_filenowsize;
  }

  public final long DL()
  {
    return this.field_createtime;
  }

  public final long DM()
  {
    return this.field_lastmodifytime;
  }

  public final int DP()
  {
    return this.field_nettimes;
  }

  public final int EA()
  {
    return this.field_voicelenght;
  }

  public final String EB()
  {
    return this.field_clientid;
  }

  public final boolean Ex()
  {
    return (this.field_status == 5) || (this.field_status == 6);
  }

  public final boolean Ey()
  {
    return ((this.field_status > 1) && (this.field_status <= 3)) || (this.field_status == 8);
  }

  public final void G(long paramLong)
  {
    this.field_createtime = paramLong;
  }

  public final void H(long paramLong)
  {
    this.field_lastmodifytime = paramLong;
  }

  public final void cJ(int paramInt)
  {
    this.field_totallen = paramInt;
  }

  public final void cL(int paramInt)
  {
    this.bOY = paramInt;
  }

  public final void dA(int paramInt)
  {
    this.field_msgid = paramInt;
  }

  public final void dw(int paramInt)
  {
    this.field_nettimes = paramInt;
  }

  public final void dy(int paramInt)
  {
    this.field_msglocalid = paramInt;
  }

  public final void eD(int paramInt)
  {
    this.field_voicelenght = paramInt;
  }

  public final void ev(int paramInt)
  {
    this.field_offset = paramInt;
  }

  public final void gR(String paramString)
  {
    this.field_filename = paramString;
  }

  public final void gS(String paramString)
  {
    this.field_human = paramString;
  }

  public final String getFileName()
  {
    return this.field_filename;
  }

  public final int getStatus()
  {
    return this.field_status;
  }

  public final String getUser()
  {
    return this.field_user;
  }

  public final void hn(String paramString)
  {
    this.field_clientid = paramString;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final void setStatus(int paramInt)
  {
    this.field_status = paramInt;
  }

  public final void setUser(String paramString)
  {
    this.field_user = paramString;
  }

  public final int vR()
  {
    return this.field_totallen;
  }

  public final int vU()
  {
    return this.bOY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.m
 * JD-Core Version:    0.6.2
 */