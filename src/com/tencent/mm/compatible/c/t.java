package com.tencent.mm.compatible.c;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

final class t
{
  public static boolean a(String paramString, r paramr, b paramb, a parama, m paramm)
  {
    try
    {
      Map localMap = u.aL(paramString, "voip");
      if (localMap == null)
        return false;
      if (localMap.get(".voip.cpu.armv7") != null)
      {
        paramr.ceH = Integer.parseInt((String)localMap.get(".voip.cpu.armv7"));
        paramr.ceG = true;
      }
      if (localMap.get(".voip.cpu.armv6") != null)
      {
        paramr.ceI = Integer.parseInt((String)localMap.get(".voip.cpu.armv6"));
        paramr.ceG = true;
      }
      if (localMap.get(".voip.camera.num") != null)
      {
        paramb.cdo = Integer.parseInt((String)localMap.get(".voip.camera.num"));
        paramb.cdn = true;
      }
      if (localMap.get(".voip.camera.surface") != null)
      {
        paramb.cdq = Integer.parseInt((String)localMap.get(".voip.camera.surface"));
        paramb.cdp = true;
      }
      if (localMap.get(".voip.camera.format") != null)
      {
        paramb.cds = Integer.parseInt((String)localMap.get(".voip.camera.format"));
        paramb.cdr = true;
      }
      if (localMap.get(".voip.camera.back.enable") != null)
      {
        paramb.cdw.cdI = Integer.parseInt((String)localMap.get(".voip.camera.back.enable"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.fps") != null)
      {
        paramb.cdw.te = Integer.parseInt((String)localMap.get(".voip.camera.back.fps"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.orien") != null)
      {
        paramb.cdw.cdJ = Integer.parseInt((String)localMap.get(".voip.camera.back.orien"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.rotate") != null)
      {
        paramb.cdw.cdK = Integer.parseInt((String)localMap.get(".voip.camera.back.rotate"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.isleft") != null)
      {
        paramb.cdw.cdL = Integer.parseInt((String)localMap.get(".voip.camera.back.isleft"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.width") != null)
      {
        paramb.cdw.width = Integer.parseInt((String)localMap.get(".voip.camera.back.width"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.back.height") != null)
      {
        paramb.cdw.height = Integer.parseInt((String)localMap.get(".voip.camera.back.height"));
        paramb.cdv = true;
      }
      if (localMap.get(".voip.camera.front.enable") != null)
      {
        paramb.cdu.cdI = Integer.parseInt((String)localMap.get(".voip.camera.front.enable"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.fps") != null)
      {
        paramb.cdu.te = Integer.parseInt((String)localMap.get(".voip.camera.front.fps"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.orien") != null)
      {
        paramb.cdu.cdJ = Integer.parseInt((String)localMap.get(".voip.camera.front.orien"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.rotate") != null)
      {
        paramb.cdu.cdK = Integer.parseInt((String)localMap.get(".voip.camera.front.rotate"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.isleft") != null)
      {
        paramb.cdu.cdL = Integer.parseInt((String)localMap.get(".voip.camera.front.isleft"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.width") != null)
      {
        paramb.cdu.width = Integer.parseInt((String)localMap.get(".voip.camera.front.width"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.front.height") != null)
      {
        paramb.cdu.height = Integer.parseInt((String)localMap.get(".voip.camera.front.height"));
        paramb.cdt = true;
      }
      if (localMap.get(".voip.camera.videorecord.frotate") != null)
      {
        paramb.cdy = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.frotate"));
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.forientation") != null)
      {
        paramb.cdz = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.forientation"));
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.brotate") != null)
      {
        paramb.cdA = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.brotate"));
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.borientation") != null)
      {
        paramb.cdB = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.borientation"));
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.num") != null)
      {
        paramb.cdD = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.num"));
        paramb.cdE = true;
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.api20") != null)
        paramb.cdF = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.api20"));
      if (localMap.get(".voip.camera.setframerate") != null)
        paramb.cdC = Integer.parseInt((String)localMap.get(".voip.camera.setframerate"));
      if (localMap.get(".voip.camera.scannerFocusThreshold") != null)
        paramb.cdG = Integer.parseInt((String)localMap.get(".voip.camera.scannerFocusThreshold"));
      if (localMap.get(".voip.camera.scannerImageQuality") != null)
        paramb.cdH = Integer.parseInt((String)localMap.get(".voip.camera.scannerImageQuality"));
      if (localMap.get(".voip.camera.videorecord.num") != null)
      {
        paramb.cdD = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.num"));
        paramb.cdE = true;
        paramb.cdx = true;
      }
      if (localMap.get(".voip.camera.videorecord.api20") != null)
        paramb.cdF = Integer.parseInt((String)localMap.get(".voip.camera.videorecord.api20"));
      if (localMap.get(".voip.camera.setframerate") != null)
        paramb.cdC = Integer.parseInt((String)localMap.get(".voip.camera.setframerate"));
      if (localMap.get(".voip.audio.streamtype") != null)
      {
        parama.ccZ = Integer.parseInt((String)localMap.get(".voip.audio.streamtype"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.smode") != null)
      {
        parama.cda = Integer.parseInt((String)localMap.get(".voip.audio.smode"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.omode") != null)
      {
        parama.cdb = Integer.parseInt((String)localMap.get(".voip.audio.omode"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.ospeaker") != null)
      {
        parama.cdc = Integer.parseInt((String)localMap.get(".voip.audio.ospeaker"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.operating") != null)
      {
        parama.cdd = Integer.parseInt((String)localMap.get(".voip.audio.operating"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.moperating") != null)
      {
        parama.cde = Integer.parseInt((String)localMap.get(".voip.audio.moperating"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.mstreamtype") != null)
      {
        parama.cdf = Integer.parseInt((String)localMap.get(".voip.audio.mstreamtype"));
        parama.ccY = true;
      }
      if (localMap.get(".voip.audio.recordmode") != null)
        parama.cdg = Integer.parseInt((String)localMap.get(".voip.audio.recordmode"));
      if (localMap.get(".voip.audio.playenddelay") != null)
        parama.cdh = Integer.parseInt((String)localMap.get(".voip.audio.playenddelay"));
      if (localMap.get(".voip.audio.aecmode") != null)
        parama.cdj = Integer.parseInt((String)localMap.get(".voip.audio.aecmode"));
      if (localMap.get(".voip.audio.agcmode") != null)
        parama.cdi = Integer.parseInt((String)localMap.get(".voip.audio.agcmode"));
      if (localMap.get(".voip.audio.nsmode") != null)
        parama.cdk = Integer.parseInt((String)localMap.get(".voip.audio.nsmode"));
      if (localMap.get(".voip.audio.volummode") != null)
        parama.cdl = Integer.parseInt((String)localMap.get(".voip.audio.volummode"));
      if (localMap.get(".voip.audio.micmode") != null)
        parama.cdm = Integer.parseInt((String)localMap.get(".voip.audio.micmode"));
      if (localMap.get(".voip.common.js") != null)
      {
        paramm.cdW = true;
        paramm.cdX = Integer.parseInt((String)localMap.get(".voip.common.js"));
      }
      if (localMap.get(".voip.audio.playenddelay") != null)
        parama.cdh = Integer.parseInt((String)localMap.get(".voip.audio.playenddelay"));
      if (localMap.get(".voip.common.js") != null)
        paramm.cdO = Integer.parseInt((String)localMap.get(".voip.common.js"));
      if (localMap.get(".voip.common.stopbluetoothbr") != null)
        paramm.cdP = Integer.parseInt((String)localMap.get(".voip.common.stopbluetoothbr"));
      if (localMap.get(".voip.common.stopbluetoothbu") != null)
        paramm.cdQ = Integer.parseInt((String)localMap.get(".voip.common.stopbluetoothbu"));
      if (localMap.get(".voip.common.setbluetoothscoon") != null)
        paramm.cdS = Integer.parseInt((String)localMap.get(".voip.common.setbluetoothscoon"));
      if (localMap.get(".voip.common.startbluetoothsco") != null)
        paramm.cdR = Integer.parseInt((String)localMap.get(".voip.common.startbluetoothsco"));
      if (localMap.get(".voip.common.voicesearchfastmode") != null)
        paramm.cdT = Integer.parseInt((String)localMap.get(".voip.common.voicesearchfastmode"));
      if (localMap.get(".voip.common.pcmreadmode") != null)
        paramm.cdV = Integer.parseInt((String)localMap.get(".voip.common.pcmreadmode"));
      if (localMap.get(".voip.common.pcmbufferrate") != null)
        paramm.cdU = Integer.parseInt((String)localMap.get(".voip.common.pcmbufferrate"));
      if (localMap.get(".voip.common.app") != null)
        paramm.cdY = Integer.parseInt((String)localMap.get(".voip.common.app"));
      if (localMap.get(".voip.common.vmfd") != null)
        paramm.cdZ = Integer.parseInt((String)localMap.get(".voip.common.vmfd"));
      if (localMap.get(".voip.common.htcvoicemode") != null)
        paramm.cea = Integer.parseInt((String)localMap.get(".voip.common.htcvoicemode"));
      if (localMap.get(".voip.common.samsungvoicemode") != null)
        paramm.ceb = Integer.parseInt((String)localMap.get(".voip.common.samsungvoicemode"));
      if (localMap.get(".voip.common.speexbufferrate") != null)
        paramm.cec = Integer.parseInt((String)localMap.get(".voip.common.speexbufferrate"));
      if (localMap.get(".voip.common.linespe") != null)
        paramm.ced = Integer.parseInt((String)localMap.get(".voip.common.linespe"));
      if (localMap.get(".voip.common.extvideo") != null)
        paramm.cee = Integer.parseInt((String)localMap.get(".voip.common.extvideo"));
      if (localMap.get(".voip.common.extvideosam") != null)
        paramm.cef = Integer.parseInt((String)localMap.get(".voip.common.extvideosam"));
      if (localMap.get(".voip.common.sysvideodegree") != null)
        paramm.ceg = Integer.parseInt((String)localMap.get(".voip.common.sysvideodegree"));
      if (localMap.get(".voip.common.mmnotify") != null)
        paramm.cej = Integer.parseInt((String)localMap.get(".voip.common.mmnotify"));
      if (localMap.get(".voip.common.extsharevcard") != null)
        paramm.cei = Integer.parseInt((String)localMap.get(".voip.common.extsharevcard"));
      if (localMap.get(".voip.common.audioformat") != null)
        paramm.cek = Integer.parseInt((String)localMap.get(".voip.common.audioformat"));
      if (localMap.get(".voip.common.qrcam") != null)
        paramm.cel = Integer.parseInt((String)localMap.get(".voip.common.qrcam"));
      if (localMap.get(".voip.common.sysvideofdegree") != null)
        paramm.ceh = Integer.parseInt((String)localMap.get(".voip.common.sysvideofdegree"));
      if (localMap.get(".voip.common.audioformat") != null)
        paramm.cek = Integer.parseInt((String)localMap.get(".voip.common.audioformat"));
      if (localMap.get(".voip.common.qrcam") != null)
        paramm.cel = Integer.parseInt((String)localMap.get(".voip.common.qrcam"));
      if (localMap.get(".voip.common.base") != null)
        paramm.ceo = ((String)localMap.get(".voip.common.base"));
      if (localMap.get(".voip.common.packageinfo") != null)
        paramm.cep = ((String)localMap.get(".voip.common.packageinfo"));
      if (localMap.get(".voip.common.classloader") != null)
        paramm.ceq = ((String)localMap.get(".voip.common.classloader"));
      if (localMap.get(".voip.common.resources") != null)
        paramm.cer = ((String)localMap.get(".voip.common.resources"));
      if (localMap.get(".voip.common.sysvideofp") != null)
        paramm.cem = Integer.parseInt((String)localMap.get(".voip.common.sysvideofp"));
      if (localMap.get(".voip.common.extstoragedir") != null)
        paramm.ces = ((String)localMap.get(".voip.common.extstoragedir"));
      if (localMap.get(".voip.common.extpubdir") != null)
        paramm.cet = ((String)localMap.get(".voip.common.extpubdir"));
      if (localMap.get(".voip.common.extdatadir") != null)
        paramm.ceu = ((String)localMap.get(".voip.common.extdatadir"));
      if (localMap.get(".voip.common.extrootdir") != null)
        paramm.cev = ((String)localMap.get(".voip.common.extrootdir"));
      if (localMap.get(".voip.common.extstoragestate") != null)
        paramm.cew = ((String)localMap.get(".voip.common.extstoragestate"));
      if (localMap.get(".voip.common.extcachedir") != null)
        paramm.cex = ((String)localMap.get(".voip.common.extcachedir"));
      if (localMap.get(".voip.common.extvideoplayer") != null)
        paramm.cen = cj.getInt((String)localMap.get(".voip.common.extvideoplayer"), -1);
      if (localMap.get(".voip.common.loadDrawable") != null)
        paramm.cey = ((String)localMap.get(".voip.common.loadDrawable"));
      if (localMap.get(".voip.common.loadXmlResourceParser") != null)
        paramm.cez = ((String)localMap.get(".voip.common.loadXmlResourceParser"));
      if ((localMap.get(".voip.common.sensorNearFar") != null) && (1 == Integer.parseInt((String)localMap.get(".voip.common.sensorNearFar"))))
        com.tencent.mm.sdk.platformtools.SensorController.gfc = true;
      aa.d("MicroMsg.CommonInfo", "js " + paramm.cdO);
      aa.d("MicroMsg.CommonInfo", "stopBluetoothInBR " + paramm.cdP);
      aa.d("MicroMsg.CommonInfo", "stopBluetoothInBU " + paramm.cdQ);
      aa.d("MicroMsg.CommonInfo", "setBluetoothScoOn " + paramm.cdS);
      aa.d("MicroMsg.CommonInfo", "startBluetoothSco " + paramm.cdR);
      aa.d("MicroMsg.CommonInfo", "voiceSearchFastMode " + paramm.cdT);
      aa.d("MicroMsg.CommonInfo", "pcmReadMode " + paramm.cdV);
      aa.d("MicroMsg.CommonInfo", "pcmBufferRate " + paramm.cdU);
      aa.d("MicroMsg.CommonInfo", "audioPrePro " + paramm.cdY);
      aa.d("MicroMsg.CommonInfo", "voicemsgfd " + paramm.cdZ);
      aa.d("MicroMsg.CommonInfo", "htcvoicemode " + paramm.cea);
      aa.d("MicroMsg.CommonInfo", "samsungvoicemode " + paramm.ceb);
      aa.d("MicroMsg.CommonInfo", "speexBufferRate " + paramm.cec);
      aa.d("MicroMsg.CommonInfo", "linespe " + paramm.ced);
      aa.d("MicroMsg.CommonInfo", "extvideo " + paramm.cee);
      aa.d("MicroMsg.CommonInfo", "extvideosam " + paramm.cef);
      aa.d("MicroMsg.CommonInfo", "sysvideodegree " + paramm.ceg);
      aa.d("MicroMsg.CommonInfo", "mmnotify " + paramm.cej);
      aa.d("MicroMsg.CommonInfo", "extsharevcard " + paramm.cei);
      aa.d("MicroMsg.CommonInfo", "audioformat " + paramm.cek);
      aa.d("MicroMsg.CommonInfo", "qrcam " + paramm.cel);
      aa.d("MicroMsg.CommonInfo", "mBase " + paramm.ceo);
      aa.d("MicroMsg.CommonInfo", "mPackageInfo " + paramm.cep);
      aa.d("MicroMsg.CommonInfo", "mClassLoader " + paramm.ceq);
      aa.d("MicroMsg.CommonInfo", "mResources " + paramm.cer);
      aa.d("MicroMsg.CommonInfo", "sysvideofp " + paramm.cem);
      aa.d("MicroMsg.CommonInfo", "extstoragedir " + paramm.ces);
      aa.d("MicroMsg.CommonInfo", "extpubdir " + paramm.cet);
      aa.d("MicroMsg.CommonInfo", "extdatadir " + paramm.ceu);
      aa.d("MicroMsg.CommonInfo", "extrootdir " + paramm.cev);
      aa.d("MicroMsg.CommonInfo", "extstoragestate " + paramm.cew);
      aa.d("MicroMsg.CommonInfo", "extcachedir " + paramm.cex);
      aa.d("MicroMsg.CommonInfo", "extvideoplayer " + paramm.cen);
      aa.d("MicroMsg.CommonInfo", "loadDrawable " + paramm.cey);
      aa.d("MicroMsg.CommonInfo", "loadXmlResourceParser " + paramm.cez);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.c.t
 * JD-Core Version:    0.6.2
 */