package com.tencent.mm.storage;

import com.tencent.mm.c.b.l;
import com.tencent.mm.protocal.a.ev;
import com.tencent.mm.protocal.a.ew;
import com.tencent.mm.protocal.a.fb;
import com.tencent.mm.sdk.e.ae;
import java.lang.reflect.Field;
import java.util.Map;

public final class ad extends l
{
  protected static ae cfX = localae;

  static
  {
    ae localae = new ae();
    localae.cAj = new Field[24];
    localae.bZx = new String[25];
    StringBuilder localStringBuilder = new StringBuilder();
    localae.bZx[0] = "productId_type";
    localae.gfA.put("productId_type", "TEXT");
    localStringBuilder.append(" productId_type TEXT PRIMARY KEY  COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.gfz = "productId_type";
    localae.bZx[1] = "productId";
    localae.gfA.put("productId", "TEXT");
    localStringBuilder.append(" productId TEXT COLLATE NOCASE ");
    localStringBuilder.append(", ");
    localae.bZx[2] = "type";
    localae.gfA.put("type", "INTEGER");
    localStringBuilder.append(" type INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[3] = "iconUrl";
    localae.gfA.put("iconUrl", "TEXT");
    localStringBuilder.append(" iconUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[4] = "packName";
    localae.gfA.put("packName", "TEXT");
    localStringBuilder.append(" packName TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[5] = "packDesc";
    localae.gfA.put("packDesc", "TEXT");
    localStringBuilder.append(" packDesc TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[6] = "packAuthInfo";
    localae.gfA.put("packAuthInfo", "TEXT");
    localStringBuilder.append(" packAuthInfo TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[7] = "packPrice";
    localae.gfA.put("packPrice", "TEXT");
    localStringBuilder.append(" packPrice TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[8] = "packType";
    localae.gfA.put("packType", "INTEGER");
    localStringBuilder.append(" packType INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[9] = "packFlag";
    localae.gfA.put("packFlag", "INTEGER");
    localStringBuilder.append(" packFlag INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[10] = "coverUrl";
    localae.gfA.put("coverUrl", "TEXT");
    localStringBuilder.append(" coverUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[11] = "packExpire";
    localae.gfA.put("packExpire", "INTEGER");
    localStringBuilder.append(" packExpire INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[12] = "packCopyright";
    localae.gfA.put("packCopyright", "TEXT");
    localStringBuilder.append(" packCopyright TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[13] = "timeStamp";
    localae.gfA.put("timeStamp", "INTEGER");
    localStringBuilder.append(" timeStamp INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[14] = "panelUrl";
    localae.gfA.put("panelUrl", "TEXT");
    localStringBuilder.append(" panelUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[15] = "priceType";
    localae.gfA.put("priceType", "TEXT");
    localStringBuilder.append(" priceType TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[16] = "sendInfo";
    localae.gfA.put("sendInfo", "TEXT");
    localStringBuilder.append(" sendInfo TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[17] = "timeLimitStr";
    localae.gfA.put("timeLimitStr", "TEXT");
    localStringBuilder.append(" timeLimitStr TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[18] = "bannerImgUrl";
    localae.gfA.put("bannerImgUrl", "TEXT");
    localStringBuilder.append(" bannerImgUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[19] = "bannerWidth";
    localae.gfA.put("bannerWidth", "INTEGER");
    localStringBuilder.append(" bannerWidth INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[20] = "bannerHeight";
    localae.gfA.put("bannerHeight", "INTEGER");
    localStringBuilder.append(" bannerHeight INTEGER");
    localStringBuilder.append(", ");
    localae.bZx[21] = "stripUrl";
    localae.gfA.put("stripUrl", "TEXT");
    localStringBuilder.append(" stripUrl TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[22] = "introduce";
    localae.gfA.put("introduce", "TEXT");
    localStringBuilder.append(" introduce TEXT default '' ");
    localStringBuilder.append(", ");
    localae.bZx[23] = "tagUri";
    localae.gfA.put("tagUri", "TEXT");
    localStringBuilder.append(" tagUri TEXT");
    localae.bZx[24] = "rowid";
    localae.cjp = localStringBuilder.toString();
  }

  public ad()
  {
  }

  public ad(ev paramev)
  {
    a(paramev.fFt, 1);
    this.field_bannerImgUrl = paramev.fFu.fFv;
    this.field_bannerWidth = paramev.fFu.fFw;
    this.field_bannerHeight = paramev.fFu.fFx;
    this.field_stripUrl = paramev.fFu.fFy;
  }

  public ad(fb paramfb)
  {
    a(paramfb, 2);
  }

  private void a(fb paramfb, int paramInt)
  {
    this.field_productId_type = (paramfb.fFB + paramInt);
    this.field_productId = paramfb.fFB;
    this.field_type = paramInt;
    this.field_iconUrl = paramfb.dGT;
    this.field_packName = paramfb.fFC;
    this.field_packDesc = paramfb.fFD;
    this.field_packAuthInfo = paramfb.fFE;
    this.field_packPrice = paramfb.fFF;
    this.field_packType = paramfb.fFG;
    this.field_packFlag = paramfb.fFH;
    this.field_coverUrl = paramfb.fFK;
    this.field_packExpire = paramfb.fFL;
    this.field_packCopyright = paramfb.fFM;
    this.field_timeStamp = paramfb.fFX;
    this.field_panelUrl = paramfb.fFP;
    this.field_priceType = paramfb.fFO;
    this.field_sendInfo = paramfb.fFY;
    this.field_timeLimitStr = paramfb.fFU;
    this.field_introduce = paramfb.fFZ;
    this.field_tagUri = paramfb.fGa;
  }

  public final ev Ld()
  {
    ev localev = new ev();
    localev.fFt = aBO();
    localev.fFu = new ew();
    localev.fFu.fFv = this.field_bannerImgUrl;
    localev.fFu.fFw = this.field_bannerWidth;
    localev.fFu.fFx = this.field_bannerHeight;
    localev.fFu.fFy = this.field_stripUrl;
    return localev;
  }

  public final fb aBO()
  {
    fb localfb = new fb();
    localfb.fFB = this.field_productId;
    localfb.dGT = this.field_iconUrl;
    localfb.fFC = this.field_packName;
    localfb.fFD = this.field_packDesc;
    localfb.fFE = this.field_packAuthInfo;
    localfb.fFF = this.field_packPrice;
    localfb.fFG = this.field_packType;
    localfb.fFH = this.field_packFlag;
    localfb.fFK = this.field_coverUrl;
    localfb.fFL = this.field_packExpire;
    localfb.fFM = this.field_packCopyright;
    localfb.fFX = this.field_timeStamp;
    localfb.fFP = this.field_panelUrl;
    localfb.fFO = this.field_priceType;
    localfb.fFY = this.field_sendInfo;
    localfb.fFU = this.field_timeLimitStr;
    localfb.fFZ = this.field_introduce;
    localfb.fGa = this.field_tagUri;
    return localfb;
  }

  protected final ae qE()
  {
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ad
 * JD-Core Version:    0.6.2
 */