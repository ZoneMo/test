.class public final Lcom/tencent/mm/storage/ak;
.super Lcom/tencent/mm/j/e;
.source "SourceFile"


# static fields
.field public static ghH:Ljava/lang/String;

.field public static ghI:Ljava/lang/String;


# instance fields
.field private bOY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "voip_content_voice"

    sput-object v0, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    .line 20
    const-string v0, "voip_content_video"

    sput-object v0, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tencent/mm/j/e;-><init>()V

    .line 1086
    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/j/e;->field_status:I

    .line 24
    return-void
.end method

.method public static tW(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1408
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1409
    const-string v0, "@t.qq.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    const-string v0, "tmessage"

    .line 1420
    :goto_1
    return-object v0

    .line 1408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1412
    :cond_1
    const-string v0, "@qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1413
    const-string v0, "qmessage"

    goto :goto_1

    .line 1416
    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1417
    const-string v0, "bottlemessage"

    goto :goto_1

    .line 1420
    :cond_3
    const-string v0, "message"

    goto :goto_1
.end method

.method public static u(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/storage/ak;
    .locals 3
    .parameter

    .prologue
    .line 1149
    if-nez p0, :cond_0

    .line 1150
    const-string v0, "MicroMsg.MsgInfo"

    const-string v1, "convertFrom msg is null "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    const/4 v0, 0x0

    .line 1172
    :goto_0
    return-object v0

    .line 1154
    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    .line 1155
    iget-wide v1, p0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    iput-wide v1, v0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    .line 1156
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    .line 1157
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->field_type:I

    .line 1158
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_status:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->field_status:I

    .line 1159
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    .line 1160
    iget v1, p0, Lcom/tencent/mm/storage/ak;->field_isShowTimer:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->field_isShowTimer:I

    .line 1161
    iget-wide v1, p0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    iput-wide v1, v0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    .line 1162
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    .line 1163
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 1164
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    .line 1165
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->field_reserved:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->field_reserved:Ljava/lang/String;

    .line 1166
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->field_lvbuffer:[B

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->field_lvbuffer:[B

    .line 1168
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->bXF:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->bXF:Ljava/lang/String;

    .line 1169
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bXG:I

    iput v1, v0, Lcom/tencent/mm/storage/ak;->bXG:I

    .line 1170
    iget-object v1, p0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final AH()I
    .locals 1

    .prologue
    .line 1242
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    return v0
.end method

.method public final Bo()J
    .locals 2

    .prologue
    .line 1234
    iget-wide v0, p0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    return-wide v0
.end method

.method public final DL()J
    .locals 2

    .prologue
    .line 1282
    iget-wide v0, p0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    return-wide v0
.end method

.method public final G(J)V
    .locals 0
    .parameter

    .prologue
    .line 1286
    iput-wide p1, p0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    .line 1287
    return-void
.end method

.method public final MP()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBT()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x1000031

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x10000031

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x14000031

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x18000031

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x16000031

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBU()Z
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x11000031

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBV()Z
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBW()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x12000031

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBX()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aBY()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    sparse-switch v0, :sswitch_data_0

    .line 78
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public final aBZ()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCa()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCb()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCc()Z
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    sparse-switch v0, :sswitch_data_0

    .line 106
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_0
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public final aCd()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCe()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x100031

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCf()Z
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x1000031

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCg()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, 0x10000031

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCh()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, -0x6fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCi()Z
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, -0x6ffffffe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCj()Z
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const v1, -0x6ffffffd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCk()Z
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 157
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final aCl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    return-object v0
.end method

.method public final aCm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->bXF:Ljava/lang/String;

    return-object v0
.end method

.method public final aCn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    return-object v0
.end method

.method public final aCo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_reserved:Ljava/lang/String;

    return-object v0
.end method

.method public final aCp()I
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lcom/tencent/mm/storage/ak;->bXG:I

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final aCq()Z
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/tencent/mm/storage/ak;->bXK:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aCr()V
    .locals 1

    .prologue
    .line 1348
    iget v0, p0, Lcom/tencent/mm/storage/ak;->bXK:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/storage/ak;->bXK:I

    .line 1349
    return-void
.end method

.method public final bT(J)V
    .locals 0
    .parameter

    .prologue
    .line 1238
    iput-wide p1, p0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    .line 1239
    return-void
.end method

.method public final bZ(I)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput p1, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    .line 1271
    return-void
.end method

.method public final cL(I)V
    .locals 0
    .parameter

    .prologue
    .line 1230
    iput p1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    .line 1231
    return-void
.end method

.method public final convertFrom(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 1177
    invoke-super {p0, p1}, Lcom/tencent/mm/j/e;->convertFrom(Landroid/database/Cursor;)V

    .line 1178
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1179
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 1181
    :cond_0
    return-void
.end method

.method public final dA(I)V
    .locals 0
    .parameter

    .prologue
    .line 1246
    iput p1, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    .line 1247
    return-void
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_status:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 1250
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    return v0
.end method

.method public final isSystem()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mi(I)V
    .locals 2
    .parameter

    .prologue
    .line 1353
    packed-switch p1, :pswitch_data_0

    .line 1359
    const-string v0, "MicroMsg.MsgInfo"

    const-string v1, "Illgeal forwardflag !!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :goto_0
    return-void

    .line 1356
    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/storage/ak;->bXG:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/storage/ak;->bXG:I

    goto :goto_0

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final oa()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 1186
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1188
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1189
    const-string v1, "msgId"

    iget-wide v2, p0, Lcom/tencent/mm/storage/ak;->field_msgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1191
    :cond_0
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1192
    const-string v1, "msgSvrId"

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_msgSvrId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    :cond_1
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1195
    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1197
    :cond_2
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1198
    const-string v1, "status"

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1200
    :cond_3
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1201
    const-string v1, "isSend"

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1203
    :cond_4
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1204
    const-string v1, "isShowTimer"

    iget v2, p0, Lcom/tencent/mm/storage/ak;->field_isShowTimer:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1206
    :cond_5
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1207
    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1209
    :cond_6
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1210
    const-string v1, "talker"

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_7
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1213
    const-string v1, "content"

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_8
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    .line 1216
    const-string v1, "imgPath"

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    :cond_9
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    .line 1219
    const-string v1, "reserved"

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_reserved:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_a
    iget v1, p0, Lcom/tencent/mm/storage/ak;->bOY:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    .line 1222
    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->oc()V

    .line 1223
    const-string v1, "lvbuffer"

    iget-object v2, p0, Lcom/tencent/mm/storage/ak;->field_lvbuffer:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1226
    :cond_b
    return-object v0
.end method

.method public final ot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    return-object v0
.end method

.method public final rO()I
    .locals 1

    .prologue
    .line 1266
    iget v0, p0, Lcom/tencent/mm/storage/ak;->field_isSend:I

    return v0
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->field_content:Ljava/lang/String;

    .line 1303
    return-void
.end method

.method public final setStatus(I)V
    .locals 0
    .parameter

    .prologue
    .line 1262
    iput p1, p0, Lcom/tencent/mm/storage/ak;->field_status:I

    .line 1263
    return-void
.end method

.method public final setType(I)V
    .locals 0
    .parameter

    .prologue
    .line 1254
    iput p1, p0, Lcom/tencent/mm/storage/ak;->field_type:I

    .line 1255
    return-void
.end method

.method public final uK(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->field_talker:Ljava/lang/String;

    .line 1295
    return-void
.end method

.method public final uL(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->bXF:Ljava/lang/String;

    .line 1312
    return-void
.end method

.method public final uM(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    .line 1320
    return-void
.end method

.method public final uN(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->field_imgPath:Ljava/lang/String;

    .line 1328
    return-void
.end method

.method public final uO(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/tencent/mm/storage/ak;->field_reserved:Ljava/lang/String;

    .line 1337
    return-void
.end method

.method public final uP(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1365
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1366
    iget-object v0, p0, Lcom/tencent/mm/storage/ak;->bXH:Ljava/lang/String;

    const-string v2, "msgsource"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/u;->aL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1367
    if-nez v0, :cond_0

    move v0, v1

    .line 1381
    :goto_0
    return v0

    .line 1371
    :cond_0
    const-string v2, ".msgsource.atuserlist"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1372
    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1373
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1374
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1375
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1376
    const/4 v0, 0x1

    goto :goto_0

    .line 1374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1381
    goto :goto_0
.end method
