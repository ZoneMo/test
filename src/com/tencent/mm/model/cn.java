package com.tencent.mm.model;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.sdk.platformtools.aa;

public final class cn
{
  private int cjE;
  private int cjF;
  private int cjG;
  private int id;

  public final cn cC(int paramInt)
  {
    this.id = paramInt;
    return this;
  }

  public final cn cD(int paramInt)
  {
    this.cjE = paramInt;
    return this;
  }

  public final cn cE(int paramInt)
  {
    this.cjF = paramInt;
    return this;
  }

  public final cn cF(int paramInt)
  {
    this.cjG = paramInt;
    return this;
  }

  public final boolean commit()
  {
    SharedPreferences.Editor localEditor = cm.a(cm.vs()).edit();
    if (this.id > 0)
    {
      localEditor.putInt("MicroMsg.RegStyleStoragestyle_id", this.id);
      if (this.cjE <= 0)
        break label171;
      localEditor.putInt("MicroMsg.RegStyleStoragenew_flow", this.cjE);
      label52: if (this.cjF <= 0)
        break label183;
      localEditor.putInt("MicroMsg.RegStyleStoragehas_password", this.cjF);
      label72: if (this.cjG <= 0)
        break label195;
      localEditor.putInt("MicroMsg.RegStyleStoragehas_AVATAR", this.cjG);
    }
    while (true)
    {
      aa.i("MicroMsg.RegStyleStorage", "id: " + this.id + " newFlow: " + this.cjE + "hasPassword:" + this.cjF + "hasAvatar:" + this.cjG);
      return localEditor.commit();
      localEditor.remove("MicroMsg.RegStyleStoragestyle_id");
      break;
      label171: localEditor.remove("MicroMsg.RegStyleStoragenew_flow");
      break label52;
      label183: localEditor.remove("MicroMsg.RegStyleStoragehas_password");
      break label72;
      label195: localEditor.remove("MicroMsg.RegStyleStoragehas_AVATAR");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cn
 * JD-Core Version:    0.6.2
 */