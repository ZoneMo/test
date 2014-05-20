package com.tencent.mm.g;

import com.tencent.mm.c.b.h;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public class a extends h
{
  public static ae cfX = localae;
  public static final String cgb = null;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[18];
    localae.bZx = new String[19];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "username";
    localae.gfA.put("username", "TEXT");
    localStringBuilder.append(" username TEXT default ''  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "username";
    localae.bZx[1] = "unReadCount";
    localae.gfA.put("unReadCount", "INTEGER");
    localStringBuilder.append(" unReadCount INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "chatmode";
    localae.gfA.put("chatmode", "INTEGER");
    localStringBuilder.append(" chatmode INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[4] = "isSend";
    localae.gfA.put("isSend", "INTEGER");
    localStringBuilder.append(" isSend INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "conversationTime";
    localae.gfA.put("conversationTime", "LONG");
    localStringBuilder.append(" conversationTime LONG default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "content";
    localae.gfA.put("content", "TEXT");
    localStringBuilder.append(" content TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[7] = "msgType";
    localae.gfA.put("msgType", "TEXT");
    localStringBuilder.append(" msgType TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[8] = "customNotify";
    localae.gfA.put("customNotify", "TEXT");
    localStringBuilder.append(" customNotify TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[9] = "showTips";
    localae.gfA.put("showTips", "INTEGER");
    localStringBuilder.append(" showTips INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[10] = "flag";
    localae.gfA.put("flag", "LONG");
    localStringBuilder.append(" flag LONG default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "digest";
    localae.gfA.put("digest", "TEXT");
    localStringBuilder.append(" digest TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "digestUser";
    localae.gfA.put("digestUser", "TEXT");
    localStringBuilder.append(" digestUser TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[13] = "hasTrunc";
    localae.gfA.put("hasTrunc", "INTEGER");
    localStringBuilder.append(" hasTrunc INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[14] = "parentRef";
    localae.gfA.put("parentRef", "TEXT");
    localStringBuilder.append(" parentRef TEXT");
    localStringBuilder.append(", ");
    localae.bZx[15] = "attrflag";
    localae.gfA.put("attrflag", "INTEGER");
    localStringBuilder.append(" attrflag INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[16] = "editingMsg";
    localae.gfA.put("editingMsg", "TEXT");
    localStringBuilder.append(" editingMsg TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[17] = "atCount";
    localae.gfA.put("atCount", "INTEGER");
    localStringBuilder.append(" atCount INTEGER default '0' ");
    localae.bZx[18] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public a()
  {
  }

  public a(String paramString)
  {
    this.field_username = paramString;
  }

  public final void bP(String paramString)
  {
    this.field_msgType = paramString;
  }

  public final void bY(int paramInt)
  {
    this.field_unReadCount = paramInt;
  }

  public final void bZ(int paramInt)
  {
    this.field_isSend = paramInt;
  }

  public final void ca(int paramInt)
  {
    this.field_chatmode = paramInt;
  }

  public final void cb(int paramInt)
  {
    this.field_showTips = (paramInt | this.field_showTips);
  }

  public final String getContent()
  {
    return this.field_content;
  }

  public final int getStatus()
  {
    return this.field_status;
  }

  public final String getUsername()
  {
    return this.field_username;
  }

  public final void o(long paramLong)
  {
    this.field_conversationTime = paramLong;
  }

  public final void p(long paramLong)
  {
    this.field_flag = paramLong;
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final int rN()
  {
    return this.field_unReadCount;
  }

  public final int rO()
  {
    return this.field_isSend;
  }

  public final int rP()
  {
    return this.field_chatmode;
  }

  public final long rQ()
  {
    return this.field_conversationTime;
  }

  public final String rR()
  {
    return this.field_msgType;
  }

  public final int rS()
  {
    return this.field_showTips;
  }

  public final long rT()
  {
    return this.field_flag;
  }

  public final void setContent(String paramString)
  {
    this.field_content = paramString;
  }

  public final void setStatus(int paramInt)
  {
    this.field_status = paramInt;
  }

  public final void setUsername(String paramString)
  {
    this.field_username = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.g.a
 * JD-Core Version:    0.6.2
 */