package com.tencent.mm.network;

class MMNativeNetComm$NetCmd
{
  public static final int EBoth = 3;
  public static final int ELong = 2;
  public static final int EShort = 1;
  int cmduser_readwritetimeout = -1;
  int cmduser_retrycount = -1;
  public boolean isFlowLimit;
  public boolean isNotResp;
  public boolean isSessionCmd;
  public int networkType;
  public int reqCmdID;
  public int respCmdID;
  public int rtType;
  public String uri;
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.MMNativeNetComm.NetCmd
 * JD-Core Version:    0.6.2
 */