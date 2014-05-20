package com.tencent.mm.storage;

import com.tencent.mm.c.b.m;
import com.tencent.mm.protocal.a.ez;
import com.tencent.mm.protocal.a.wz;
import com.tencent.mm.protocal.a.xa;
import com.tencent.mm.sdk.e.ae;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.z;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.Map;

public final class af extends m
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[24];
    localae.bZx = new String[25];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "productID";
    localae.gfA.put("productID", "TEXT");
    localStringBuilder.append(" productID TEXT PRIMARY KEY ");
    localStringBuilder.append(", ");
    localae.gfz = "productID";
    localae.bZx[1] = "consumeProductID";
    localae.gfA.put("consumeProductID", "TEXT");
    localStringBuilder.append(" consumeProductID TEXT");
    localStringBuilder.append(", ");
    localae.bZx[2] = "packName";
    localae.gfA.put("packName", "TEXT");
    localStringBuilder.append(" packName TEXT");
    localStringBuilder.append(", ");
    localae.bZx[3] = "packDesc";
    localae.gfA.put("packDesc", "TEXT");
    localStringBuilder.append(" packDesc TEXT");
    localStringBuilder.append(", ");
    localae.bZx[4] = "packAuthInfo";
    localae.gfA.put("packAuthInfo", "TEXT");
    localStringBuilder.append(" packAuthInfo TEXT");
    localStringBuilder.append(", ");
    localae.bZx[5] = "packPrice";
    localae.gfA.put("packPrice", "TEXT");
    localStringBuilder.append(" packPrice TEXT");
    localStringBuilder.append(", ");
    localae.bZx[6] = "packType";
    localae.gfA.put("packType", "INTEGER");
    localStringBuilder.append(" packType INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[7] = "packFlag";
    localae.gfA.put("packFlag", "INTEGER");
    localStringBuilder.append(" packFlag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[8] = "packExpire";
    localae.gfA.put("packExpire", "INTEGER");
    localStringBuilder.append(" packExpire INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[9] = "packCopyright";
    localae.gfA.put("packCopyright", "TEXT");
    localStringBuilder.append(" packCopyright TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[10] = "priceNum";
    localae.gfA.put("priceNum", "TEXT");
    localStringBuilder.append(" priceNum TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "priceType";
    localae.gfA.put("priceType", "TEXT");
    localStringBuilder.append(" priceType TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[12] = "iconUrl";
    localae.gfA.put("iconUrl", "TEXT");
    localStringBuilder.append(" iconUrl TEXT");
    localStringBuilder.append(", ");
    localae.bZx[13] = "coverUrl";
    localae.gfA.put("coverUrl", "TEXT");
    localStringBuilder.append(" coverUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[14] = "panelUrl";
    localae.gfA.put("panelUrl", "TEXT");
    localStringBuilder.append(" panelUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[15] = "timeLimitStr";
    localae.gfA.put("timeLimitStr", "TEXT");
    localStringBuilder.append(" timeLimitStr TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[16] = "version";
    localae.gfA.put("version", "INTEGER");
    localStringBuilder.append(" version INTEGER default '-1' ");
    localStringBuilder.append(", ");
    localae.bZx[17] = "packThumbCnt";
    localae.gfA.put("packThumbCnt", "INTEGER");
    localStringBuilder.append(" packThumbCnt INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[18] = "thumbExtCount";
    localae.gfA.put("thumbExtCount", "INTEGER");
    localStringBuilder.append(" thumbExtCount INTEGER default '' ");
    localStringBuilder.append(", ");
    localae.bZx[19] = "packThumbList";
    localae.gfA.put("packThumbList", "BLOB");
    localStringBuilder.append(" packThumbList BLOB default '' ");
    localStringBuilder.append(", ");
    localae.bZx[20] = "thumbExtList";
    localae.gfA.put("thumbExtList", "BLOB");
    localStringBuilder.append(" thumbExtList BLOB default '' ");
    localStringBuilder.append(", ");
    localae.bZx[21] = "lang";
    localae.gfA.put("lang", "TEXT");
    localStringBuilder.append(" lang TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[22] = "shareDesc";
    localae.gfA.put("shareDesc", "TEXT");
    localStringBuilder.append(" shareDesc TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[23] = "oldRedirectUrl";
    localae.gfA.put("oldRedirectUrl", "TEXT");
    localStringBuilder.append(" oldRedirectUrl TEXT default '' ");
    localae.bZx[24] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  private static byte[] U(LinkedList paramLinkedList)
  {
    wz localwz = new wz();
    localwz.fFS = paramLinkedList;
    try
    {
      byte[] arrayOfByte = localwz.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.EmotionDetailInfo", "covertToThumbExtList failed");
    }
    return null;
  }

  private static byte[] V(LinkedList paramLinkedList)
  {
    xa localxa = new xa();
    localxa.fFJ = paramLinkedList;
    try
    {
      byte[] arrayOfByte = localxa.toByteArray();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.EmotionDetailInfo", "covertToThumbList failed");
    }
    return null;
  }

  public static ez a(af paramaf)
  {
    ez localez = new ez();
    localez.fFQ = paramaf.field_consumeProductID;
    localez.fFK = paramaf.field_coverUrl;
    localez.dGT = paramaf.field_iconUrl;
    localez.fFE = paramaf.field_packAuthInfo;
    localez.fFM = paramaf.field_packCopyright;
    localez.fFD = paramaf.field_packDesc;
    localez.fFL = paramaf.field_packExpire;
    localez.fFH = paramaf.field_packFlag;
    localez.fFC = paramaf.field_packName;
    localez.fFF = paramaf.field_packPrice;
    localez.fFI = paramaf.field_packThumbCnt;
    localez.fFJ = ct(paramaf.field_packThumbList);
    localez.fFG = paramaf.field_packType;
    localez.fFP = paramaf.field_panelUrl;
    localez.fFN = paramaf.field_priceNum;
    localez.fFO = paramaf.field_priceType;
    localez.fFB = paramaf.field_productID;
    localez.fFR = paramaf.field_thumbExtCount;
    localez.fFS = cs(paramaf.field_thumbExtList);
    localez.fFU = paramaf.field_timeLimitStr;
    localez.fFT = paramaf.field_version;
    localez.fFV = paramaf.field_shareDesc;
    localez.fFW = paramaf.field_oldRedirectUrl;
    return localez;
  }

  public static af a(ez paramez)
  {
    af localaf = new af();
    localaf.field_consumeProductID = paramez.fFQ;
    localaf.field_coverUrl = paramez.fFK;
    localaf.field_iconUrl = paramez.dGT;
    localaf.field_packAuthInfo = paramez.fFE;
    localaf.field_packCopyright = paramez.fFM;
    localaf.field_packDesc = paramez.fFD;
    localaf.field_packExpire = paramez.fFL;
    localaf.field_packFlag = paramez.fFH;
    localaf.field_packName = paramez.fFC;
    localaf.field_packPrice = paramez.fFF;
    localaf.field_packThumbCnt = paramez.fFI;
    localaf.field_packThumbList = V(paramez.fFJ);
    localaf.field_packType = paramez.fFG;
    localaf.field_panelUrl = paramez.fFP;
    localaf.field_priceNum = paramez.fFN;
    localaf.field_priceType = paramez.fFO;
    localaf.field_productID = paramez.fFB;
    localaf.field_thumbExtCount = paramez.fFR;
    localaf.field_thumbExtList = U(paramez.fFS);
    localaf.field_timeLimitStr = paramez.fFU;
    localaf.field_version = paramez.fFT;
    localaf.field_lang = z.azj();
    localaf.field_shareDesc = paramez.fFV;
    localaf.field_oldRedirectUrl = paramez.fFW;
    return localaf;
  }

  private static LinkedList cs(byte[] paramArrayOfByte)
  {
    wz localwz = new wz();
    try
    {
      localwz.bZ(paramArrayOfByte);
      if (localwz.fFS != null)
        return localwz.fFS;
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.EmotionDetailInfo", "covertFromThumbExtList failed");
    }
    return null;
  }

  private static LinkedList ct(byte[] paramArrayOfByte)
  {
    xa localxa = new xa();
    try
    {
      localxa.ca(paramArrayOfByte);
      if (localxa.fFJ != null)
        return localxa.fFJ;
    }
    catch (IOException localIOException)
    {
      while (true)
        aa.e("MicroMsg.EmotionDetailInfo", "covertFromThumbList failed");
    }
    return null;
  }

  protected final ae qE()
  {
    return cfX;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.af
 * JD-Core Version:    0.6.2
 */