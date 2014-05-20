package com.tencent.mm.ah;

import com.tencent.mm.c.b.n;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class a extends n
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[17];
    localae.bZx = new String[18];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "talker";
    localae.gfA.put("talker", "TEXT");
    localStringBuilder.append(" talker TEXT default '0'  PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "talker";
    localae.bZx[1] = "encryptTalker";
    localae.gfA.put("encryptTalker", "TEXT");
    localStringBuilder.append(" encryptTalker TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "displayName";
    localae.gfA.put("displayName", "TEXT");
    localStringBuilder.append(" displayName TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[3] = "state";
    localae.gfA.put("state", "INTEGER");
    localStringBuilder.append(" state INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[4] = "lastModifiedTime";
    localae.gfA.put("lastModifiedTime", "LONG");
    localStringBuilder.append(" lastModifiedTime LONG default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "isNew";
    localae.gfA.put("isNew", "INTEGER");
    localStringBuilder.append(" isNew INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "addScene";
    localae.gfA.put("addScene", "INTEGER");
    localStringBuilder.append(" addScene INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[7] = "fmsgSysRowId";
    localae.gfA.put("fmsgSysRowId", "LONG");
    localStringBuilder.append(" fmsgSysRowId LONG default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[8] = "fmsgIsSend";
    localae.gfA.put("fmsgIsSend", "INTEGER");
    localStringBuilder.append(" fmsgIsSend INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[9] = "fmsgType";
    localae.gfA.put("fmsgType", "INTEGER");
    localStringBuilder.append(" fmsgType INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[10] = "fmsgContent";
    localae.gfA.put("fmsgContent", "TEXT");
    localStringBuilder.append(" fmsgContent TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "recvFmsgType";
    localae.gfA.put("recvFmsgType", "INTEGER");
    localStringBuilder.append(" recvFmsgType INTEGER default '0' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "contentFromUsername";
    localae.gfA.put("contentFromUsername", "TEXT");
    localStringBuilder.append(" contentFromUsername TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[13] = "contentNickname";
    localae.gfA.put("contentNickname", "TEXT");
    localStringBuilder.append(" contentNickname TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[14] = "contentPhoneNumMD5";
    localae.gfA.put("contentPhoneNumMD5", "TEXT");
    localStringBuilder.append(" contentPhoneNumMD5 TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[15] = "contentFullPhoneNumMD5";
    localae.gfA.put("contentFullPhoneNumMD5", "TEXT");
    localStringBuilder.append(" contentFullPhoneNumMD5 TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[16] = "contentVerifyContent";
    localae.gfA.put("contentVerifyContent", "TEXT");
    localStringBuilder.append(" contentVerifyContent TEXT default '' ");
    localae.bZx[17] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.a
 * JD-Core Version:    0.6.2
 */