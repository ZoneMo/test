package com.tencent.mm.modelfriend;

import com.tencent.mm.c.b.u;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class ac extends u
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[16];
    localae.bZx = new String[17];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "googleid";
    localae.gfA.put("googleid", "TEXT");
    localStringBuilder.append(" googleid TEXT");
    localStringBuilder.append(", ");
    localae.bZx[1] = "googlename";
    localae.gfA.put("googlename", "TEXT");
    localStringBuilder.append(" googlename TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "googlephotourl";
    localae.gfA.put("googlephotourl", "TEXT");
    localStringBuilder.append(" googlephotourl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "googlegmail";
    localae.gfA.put("googlegmail", "TEXT");
    localStringBuilder.append(" googlegmail TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "username";
    localae.gfA.put("username", "TEXT");
    localStringBuilder.append(" username TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "nickname";
    localae.gfA.put("nickname", "TEXT");
    localStringBuilder.append(" nickname TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "nicknameqp";
    localae.gfA.put("nicknameqp", "TEXT");
    localStringBuilder.append(" nicknameqp TEXT");
    localStringBuilder.append(", ");
    localae.bZx[7] = "usernamepy";
    localae.gfA.put("usernamepy", "TEXT");
    localStringBuilder.append(" usernamepy TEXT");
    localStringBuilder.append(", ");
    localae.bZx[8] = "small_url";
    localae.gfA.put("small_url", "TEXT");
    localStringBuilder.append(" small_url TEXT");
    localStringBuilder.append(", ");
    localae.bZx[9] = "big_url";
    localae.gfA.put("big_url", "TEXT");
    localStringBuilder.append(" big_url TEXT");
    localStringBuilder.append(", ");
    localae.bZx[10] = "ret";
    localae.gfA.put("ret", "INTEGER");
    localStringBuilder.append(" ret INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[11] = "status";
    localae.gfA.put("status", "INTEGER");
    localStringBuilder.append(" status INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[12] = "googleitemid";
    localae.gfA.put("googleitemid", "TEXT");
    localStringBuilder.append(" googleitemid TEXT PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "googleitemid";
    localae.bZx[13] = "googlecgistatus";
    localae.gfA.put("googlecgistatus", "INTEGER");
    localStringBuilder.append(" googlecgistatus INTEGER default '2' ");
    localStringBuilder.append(", ");
    localae.bZx[14] = "contecttype";
    localae.gfA.put("contecttype", "TEXT");
    localStringBuilder.append(" contecttype TEXT");
    localStringBuilder.append(", ");
    localae.bZx[15] = "googlenamepy";
    localae.gfA.put("googlenamepy", "TEXT");
    localStringBuilder.append(" googlenamepy TEXT");
    localae.bZx[16] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  protected final ae qE()
  {
    return cfX;
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("googleIDgoogleid\n");
    localStringBuffer.append("googleNamegooglename\n");
    localStringBuffer.append("googlePhotoUrlgooglephotourl\n");
    localStringBuffer.append("googleGmailgooglegmail\n");
    localStringBuffer.append("userNameusername\n");
    localStringBuffer.append("nickNamenickname\n");
    localStringBuffer.append("nickNameQuanPinnicknameqp\n");
    localStringBuffer.append("nickNamePYInitialusernamepy\n");
    localStringBuffer.append("smallHeaderUrlsmall_url\n");
    localStringBuffer.append("bigHeaderUrlbig_url\n");
    localStringBuffer.append("retret\n");
    localStringBuffer.append("statusstatus\n");
    localStringBuffer.append("googleItemIDgoogleitemid\n");
    localStringBuffer.append("cgiStatusgooglecgistatus\n");
    localStringBuffer.append("contactTypecontecttype\n");
    localStringBuffer.append("googleNamePYInitialgooglenamepy\n");
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.ac
 * JD-Core Version:    0.6.2
 */