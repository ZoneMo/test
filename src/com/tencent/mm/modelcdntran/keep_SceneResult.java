package com.tencent.mm.modelcdntran;

import com.tencent.mm.sdk.platformtools.cj;

public class keep_SceneResult
{
  public String field_aesKey;
  public String field_arg;
  public String field_argInfo;
  public String field_fileId;
  public int field_fileLength;
  public boolean field_isHitCacheUpload = false;
  public int field_midimgLength;
  public int field_retCode;
  public int field_thumbimgLength;
  public String field_toUser;
  public String field_transInfo;
  public String field_videoFileId;
  public String mediaId;

  public String toString()
  {
    Object[] arrayOfObject = new Object[12];
    arrayOfObject[0] = this.mediaId;
    arrayOfObject[1] = this.field_fileId;
    arrayOfObject[2] = Integer.valueOf(cj.hW(this.field_aesKey).length());
    arrayOfObject[3] = Integer.valueOf(this.field_fileLength);
    arrayOfObject[4] = Integer.valueOf(this.field_midimgLength);
    arrayOfObject[5] = Integer.valueOf(this.field_thumbimgLength);
    arrayOfObject[6] = this.field_transInfo;
    arrayOfObject[7] = Integer.valueOf(this.field_retCode);
    arrayOfObject[8] = this.field_toUser;
    arrayOfObject[9] = this.field_arg;
    arrayOfObject[10] = this.field_videoFileId;
    arrayOfObject[11] = this.field_argInfo;
    return String.format("id:%s file:%s aeskey:%d filelen:%d midlen:%d thlen:%d transInfo:%s retCode:%d toUser:%s arg:%s videoFileId:%s argInfo:%s", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.keep_SceneResult
 * JD-Core Version:    0.6.2
 */