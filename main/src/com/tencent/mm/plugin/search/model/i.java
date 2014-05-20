package com.tencent.mm.plugin.search.model;

import com.tencent.mm.modelfriend.h;

final class i
{
  String bPx;
  String bTR;
  String cie;
  String cqh;
  String egX;
  String egY;
  String egZ;
  String eha;
  long id;
  int status;
  int type;

  i()
  {
  }

  i(h paramh)
  {
    this.id = h.eW(paramh.yK());
    this.cqh = paramh.yM();
    this.egX = paramh.yO();
    this.egY = paramh.yN();
    this.cie = paramh.yP();
    this.egZ = paramh.yR();
    this.eha = paramh.yQ();
    this.bPx = paramh.getUsername();
    this.bTR = paramh.yS();
    this.type = paramh.getType();
    this.status = paramh.getStatus();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.i
 * JD-Core Version:    0.6.2
 */