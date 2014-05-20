package com.tencent.mm.compatible.c;

import com.tencent.mm.sdk.platformtools.aa;

public final class a
{
  public boolean ccY = false;
  public int ccZ;
  public int cda;
  public int cdb;
  public int cdc;
  public int cdd;
  public int cde;
  public int cdf;
  public int cdg;
  public int cdh;
  public int cdi;
  public int cdj;
  public int cdk;
  public int cdl;
  public int cdm;

  public a()
  {
    reset();
  }

  public final void dump()
  {
    aa.d("VoipAudioInfo", "streamtype " + this.ccZ);
    aa.d("VoipAudioInfo", "smode " + this.cda);
    aa.d("VoipAudioInfo", "omode " + this.cdb);
    aa.d("VoipAudioInfo", "ospeaker " + this.cdc);
    aa.d("VoipAudioInfo", "operating" + this.cdd);
    aa.d("VoipAudioInfo", "moperating" + this.cde);
    aa.d("VoipAudioInfo", "mstreamtype" + this.cdf);
    aa.d("VoipAudioInfo", "mVoiceRecordMode" + this.cdg);
    aa.d("VoipAudioInfo", "agcMode :" + this.cdi);
    aa.d("VoipAudioInfo", "nsMode:" + this.cdk);
    aa.d("VoipAudioInfo", "aecMode:" + this.cdj);
    aa.d("VoipAudioInfo", "volumMode:" + this.cdl);
    aa.d("VoipAudioInfo", "micMode:" + this.cdm);
  }

  public final boolean pC()
  {
    return this.cdd >= 0;
  }

  public final boolean pD()
  {
    return this.cde >= 0;
  }

  public final int pE()
  {
    int i;
    if (pC())
    {
      i = (0xE0 & this.cdd) >> 5;
      aa.d("VoipAudioInfo", "getEnableMode " + i);
      if (i != 7);
    }
    else
    {
      return -1;
    }
    return i;
  }

  public final int pF()
  {
    int i;
    if (pC())
    {
      i = (0xE & this.cdd) >> 1;
      aa.d("VoipAudioInfo", "getDisableMode " + i);
      if (i != 7);
    }
    else
    {
      return -1;
    }
    return i;
  }

  public final int pG()
  {
    int i;
    if (pD())
    {
      i = (0xE0 & this.cde) >> 5;
      aa.d("VoipAudioInfo", "getEnableMode " + i);
      if (i != 7);
    }
    else
    {
      return -1;
    }
    return i;
  }

  public final int pH()
  {
    int i;
    if (pD())
    {
      i = (0xE & this.cde) >> 1;
      aa.d("VoipAudioInfo", "getDisableMode " + i);
      if (i != 7);
    }
    else
    {
      return -1;
    }
    return i;
  }

  public final void reset()
  {
    this.ccY = false;
    this.ccZ = -1;
    this.cda = -1;
    this.cdb = -1;
    this.cdc = -1;
    this.cdd = -1;
    this.cde = -1;
    this.cdf = -1;
    this.cdh = -1;
    this.cdg = -1;
    this.cdi = -1;
    this.cdj = -1;
    this.cdk = -1;
    this.cdl = -1;
    this.cdm = -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.a
 * JD-Core Version:    0.6.2
 */